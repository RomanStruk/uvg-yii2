<?php


namespace app\controllers;

use app\models\Drivers;
use app\models\ReportsForm;
use app\models\RouteList;
use app\models\WriteOffFuel;
use Yii;
use yii\data\ActiveDataProvider;
use \yii\web\Controller;

class ReportsController extends Controller
{
    public $path = 'files/uvg/';
    public $file_format = '.xls';

    public function behaviors()
    {
        return [
            'ghost-access' => [
                'class' => 'webvimark\modules\UserManagement\components\GhostAccessControl',
            ],
        ];
    }

    public function actionBalances()
    {
        return $this->render('balances');
    }

    public function actionFuelAll()
    {
        return $this->render('fuel-all');
    }

    public function actionFuelPayment()
    {
        return $this->render('fuel-payment');
    }

    public function actionIndex()
    {
        $files = [];
        $model = new ReportsForm();;
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            switch ($model->report) {
                case 'register':
                    $files = $this->doReportRegister($model->month);
                    break;
                case 'fuelall':
                    $files = $this->doReportFuelPayment($model->month);
                    break;
                case 'balances':
                    $files = $this->doReportBalances($model->month);
                    break;
            }

        }
        return $this->render('index', ['model' => $model, 'files' => $files]);
    }

    public static function months($string = '', $type = true)
    {
        $list_of_months_en_ua = array('january' => 'січень', 'february' => 'лютий', 'march' => 'березень', 'april' => 'квітень', 'may_long' => 'травень', 'june' => 'червень', 'july' => 'липень', 'august' => 'серпень', 'september' => 'вересень', 'october' => 'жовтень', 'november' => 'листопад', 'december' => 'грудень');
        $list_of_months_num_ua = array('1' => 'січень', '2' => 'лютий', '3' => 'березень', '4' => 'квітень', '5' => 'травень', '6' => 'червень', '7' => 'липень', '8' => 'серпень', '9' => 'вересень', '10' => 'жовтень', '11' => 'листопад', '12' => 'грудень');
        $list_months = array('січень', 'лютий', 'березень', 'квітень', 'травень', 'червень', 'липень', 'серпень', 'вересень', 'жовтень', 'листопад', 'грудень');
        if ($type and $string != '') {
            return $list_of_months_num_ua[$string];
        }
        if (!$type and $string != '') {
            return $list_of_months_en_ua[$string];
        }
        if (!$type) {
            return $list_of_months_num_ua;
        }
        return $list_months;
    }

    public function actionGetFile($dir, $file)
    {
        return Yii::$app->response->sendFile($this->path . $dir . '/' . $file, $file);
    }

    private function doReportBalances($month)
    {
        $route_list_db = RouteList::find()
            ->with('allFuel', 'driver', 'transport')
            ->where('`valid`=\'1\' AND year(datego) = year(now())')
//            ->where('`number`<>\'0\' AND `valid`=\'1\' AND month(datego) = ' . $month . ' and year(datego) = year(now())')
            ->orderBy('number ASC')
            ->all();
        if ($route_list_db) {
            $route_list_drive = [];
            foreach ($route_list_db as $route_list) {
                $type_fuel = $route_list->transport->type_fuel;
                $route_list_drive[$route_list->driver->name][$route_list->transport->mk]['type_fuel'] = $type_fuel;
                $date_go = explode('-', $route_list->datego);
                foreach ($route_list->allFuel as $fuel) {
                    $route_list_drive[$route_list->driver->name][$route_list->transport->mk][$fuel->type]['filled_by'][] = ((int)$date_go[1] == $month) ? $fuel->filled_by : 0;
                    $route_list_drive[$route_list->driver->name][$route_list->transport->mk][$fuel->type]['write_off'][] = ((int)$date_go[1] == $month) ? $fuel->write_off : 0;
                    $route_list_drive[$route_list->driver->name][$route_list->transport->mk][$fuel->type]['balance'] = $fuel->balance;
                }

                if (!array_key_exists('previous_balance_fuel', $route_list_drive[$route_list->driver->name][$route_list->transport->mk]) and ((int)$date_go[1] == $month)) {
                    $route_list_drive[$route_list->driver->name][$route_list->transport->mk]['previous_balance_fuel'] = 0;
                    $previous_list = RouteList::find()
                        ->select(['id'])
                        ->where("`valid`='1' AND `datego`< '{$route_list['datego']}' AND `driver_id`='{$route_list['driver_id']}' AND `transport_id`='{$route_list['transport_id']}'")
                        ->orderBy('number DESC')
                        ->limit(1)
                        ->one();
                    if ($previous_list) {
                        // залишок пального з попередньої путівки (водій і авто)
                        $w_off_fuel = WriteOffFuel::find()->where(['route_list' => $previous_list->id, 'type' => $type_fuel])->one();
                        if ($w_off_fuel) {
                            $route_list_drive[$route_list->driver->name][$route_list->transport->mk]['previous_balance_fuel'] = $w_off_fuel->balance;
                        }
                    }
                }
                $route_list_drive[$route_list->driver->name][$route_list->transport->mk]['transport_id'] = $route_list->transport_id;
                $route_list_drive[$route_list->driver->name][$route_list->transport->mk]['driver_id'] = $route_list->driver_id;
            }
            $file_template_exl = $this->path . 'balances/template' . $this->file_format;
            $objPHPExcel = \PHPExcel_IOFactory::load($file_template_exl);
            // активація 1го листа
            $objPHPExcel->setActiveSheetIndex(0);
            $sheet = $objPHPExcel->getActiveSheet();
            $i = 6;
            $j = 1;
            foreach ($route_list_drive as $driver => $route_list_transport) {
//                    var_dump($route_list_transport);
                foreach ($route_list_transport as $transport => $route_list_info) {
//                    var_dump($route_list_info);
                    if (array_key_exists('diesel', $route_list_info) and $route_list_info['type_fuel'] == 'diesel') {
                        if (array_sum($route_list_info['diesel']['filled_by']) + array_sum($route_list_info['diesel']['write_off']) == 0) {
                            $route_list_info['previous_balance_fuel'] = $route_list_info['diesel']['balance'];
                        } elseif (!array_key_exists('previous_balance_fuel', $route_list_info)) {
                            if ($route_list_info['diesel']['filled_by'] == $route_list_info['diesel']['write_off']) {
                                $route_list_info['previous_balance_fuel'] = $route_list_info['diesel']['balance'];
                            }else{
                                $route_list_info['previous_balance_fuel'] = array_sum($route_list_info['diesel']['filled_by']) - array_sum($route_list_info['diesel']['write_off']) - $route_list_info['diesel']['balance'];
                            }
                        }
                        $sum = $route_list_info['previous_balance_fuel'] +
                            array_sum($route_list_info['diesel']['filled_by']) +
                            array_sum($route_list_info['diesel']['write_off']) +
                            $route_list_info['diesel']['balance'];
                        if ($sum == 0) {
                            continue;
                        }
                    }
                    if (array_key_exists('gasoline', $route_list_info) and $route_list_info['type_fuel'] == 'gasoline') {
                        $filled_by = $route_list_info['gasoline']['filled_by'];
                        $write_off = $route_list_info['gasoline']['write_off'];
                        $balance = $route_list_info['gasoline']['balance'];
                        if (array_sum($route_list_info['gasoline']['filled_by']) + array_sum($route_list_info['gasoline']['write_off']) == 0) {
                            $route_list_info['previous_balance_fuel'] = $route_list_info['gasoline']['balance'];
                        } elseif (!array_key_exists('previous_balance_fuel', $route_list_info)) {
                            if ($route_list_info['gasoline']['filled_by'] == $route_list_info['gasoline']['write_off']) {
                                $route_list_info['previous_balance_fuel'] = $route_list_info['gasoline']['balance'];
                            }else{
                                $route_list_info['previous_balance_fuel'] = array_sum($route_list_info['gasoline']['filled_by']) - array_sum($route_list_info['gasoline']['write_off']) - $route_list_info['gasoline']['balance'];
                            }
                        }
                        /*if (((int)$route_list_info['previous_balance_fuel'] + (int)$filled_by - (int)$write_off) != (int)$balance) {
                            $route_list_info['previous_balance_fuel'] = $balance;
                        }*/
                        
                        $sum = $route_list_info['previous_balance_fuel'] +
                            array_sum($route_list_info['gasoline']['filled_by']) +
                            array_sum($route_list_info['gasoline']['write_off']) +
                            $route_list_info['gasoline']['balance'];
                        if ($sum == 0) {
                            continue;
                        }
                    }
                    $route_list_info['transport'] = $transport;

                    $dr = $driver;
                    $route_list_info['driver'] = $dr;
                    $out_arr = explode(' ', $dr);
                    $out_arr[1] = substr($out_arr[1], 0, 2);
                    $out_arr[2] = substr($out_arr[2], 0, 2);
                    $dr = $out_arr[0] . ' ' . $out_arr[1] . '. ' . $out_arr[2] . '.';

                    $sheet->setCellValue('A' . $i, $dr);
                    $sheet->setCellValue('B' . $i, $transport);
                    if ($route_list_info['type_fuel'] == 'gasoline') {
                        $sheet->setCellValue('C' . $i, 'бензин');
                    } else {
                        $sheet->setCellValue('C' . $i, 'д-во');
                    }
                    if (array_key_exists('gasoline', $route_list_info)) {
                        if ($route_list_info['type_fuel'] == 'gasoline') {
                            $sheet->setCellValue('D' . $i, $route_list_info['previous_balance_fuel']); // залишок з попереднього місяця
                        }
                        $sheet->setCellValue('F' . $i, array_sum($route_list_info['gasoline']['filled_by'])); // запралено всього бензину
                        $sheet->setCellValue('I' . $i, array_sum($route_list_info['gasoline']['write_off'])); // списано всього бензину
                        $sheet->setCellValue('L' . $i, $route_list_info['gasoline']['balance']); // залишок на кінець місяця
                    }
                    if (array_key_exists('diesel', $route_list_info)) {
                        if ($route_list_info['type_fuel'] == 'diesel') {
                            $sheet->setCellValue('E' . $i, $route_list_info['previous_balance_fuel']); // залишок з попереднього місяця
                        }
                        $sheet->setCellValue('G' . $i, array_sum($route_list_info['diesel']['filled_by'])); // запралено всього д-ва
                        $sheet->setCellValue('J' . $i, array_sum($route_list_info['diesel']['write_off'])); //списано всього д-ва
                        $sheet->setCellValue('M' . $i, $route_list_info['diesel']['balance']); // залишок на кінець місяця
                    }
                    if (array_key_exists('oil', $route_list_info)) {
                        $sheet->setCellValue('H' . $i, array_sum($route_list_info['oil']['filled_by']));// запралено всього
                        $sheet->setCellValue('K' . $i, array_sum($route_list_info['oil']['write_off']));//списано всього
                    }

                    $i++;
                }
                $i += 1;
            }
            $sheet->setCellValue('D' . $i, '=SUM(D6:D' . ($i - 1) . ')');
            $sheet->setCellValue('E' . $i, '=SUM(E6:E' . ($i - 1) . ')');
            $sheet->setCellValue('F' . $i, '=SUM(F6:F' . ($i - 1) . ')');
            $sheet->setCellValue('G' . $i, '=SUM(G6:G' . ($i - 1) . ')');
            $sheet->setCellValue('H' . $i, '=SUM(H6:H' . ($i - 1) . ')');
            $sheet->setCellValue('I' . $i, '=SUM(I6:I' . ($i - 1) . ')');
            $sheet->setCellValue('J' . $i, '=SUM(J6:J' . ($i - 1) . ')');
            $sheet->setCellValue('K' . $i, '=SUM(K6:K' . ($i - 1) . ')');
            $sheet->setCellValue('L' . $i, '=SUM(L6:L' . ($i - 1) . ')');
            $sheet->setCellValue('M' . $i, '=SUM(M6:M' . ($i - 1) . ')');

            $sheet->setCellValue('F2', $this->months($month)); // Виведення month
            // Збереження таблиці під новим імям
            $objWriter = new \PHPExcel_Writer_Excel5($objPHPExcel);
            $name_file = 'витрати_ПММ_' . $this->months($month); //імя нової таблиці
            $file_save_exl = 'balances/' . $name_file . $this->file_format; //імя нової таблиці
            $objWriter->save($this->path . $file_save_exl);
            $files['download'] = '/reports/get-file/' . $file_save_exl; // Список файлів
            return $files;

        }
    }

    /**
     * @param $month
     * @return array
     * @throws \PHPExcel_Exception
     */
    private function doReportRegister($month)
    {
        $route_list_db = RouteList::find()->with('allFuel', 'driver', 'transport')->where('`number`<>\'0\' AND `valid`=\'1\' AND month(datego) = ' . $month . ' and year(datego) = year(now())')->orderBy('number ASC')->all();
        $files = [];
        if ($route_list_db) {
            $route_list_drive = [];
            foreach ($route_list_db as $route_list) {
                $driver = $route_list->driver->name;
                $transport = $route_list->transport->mk;
                $result = [];
                $type_fuel = $route_list->transport === null ? '' : $route_list->transport->type_fuel;
                $result['type'] = $type_fuel;
                $result['fuel100'] = $route_list->transport->fuel100;
                foreach ($route_list->allFuel as $fuel) {
                    $result['fuel'][$fuel->type] = [
                        'filled_by' => $fuel->filled_by,
                        'write_off' => $fuel->write_off,
                        'balance' => $fuel->balance
                    ];
                }
                $where = "`valid`='1' AND `datego`< '{$route_list['datego']}' AND `driver_id`='{$route_list['driver_id']}' AND `transport_id`='{$route_list['transport_id']}'";
                $previous_list = RouteList::find()->select(['id'])->where($where)->orderBy('number DESC')->limit(1)->one();
                $result['previous_balance_fuel'] = 0;
                if ($previous_list) {
                    // залишок пального з попередньої путівки (водій і авто)
                    $w_off_fuel = WriteOffFuel::find()->where(['route_list' => $previous_list->id, 'type' => $type_fuel])->one();
                    if ($w_off_fuel) {
                        $result['previous_balance_fuel'] = $w_off_fuel->balance;
                    }
                }
                $result['number'] = $route_list->number;
                $result['datego'] = $route_list->datego;
                $result['kilometrage'] = $route_list->kilometrage;
                $result['payment'] = $route_list->payment;
                $result['driver_id'] = $route_list->driver_id;
                $result['transport_id'] = $route_list->transport_id;
                $route_list_drive[$driver][$transport][] = $result;
            }
//            var_dump($route_list_drive);
//            exit;
            foreach ($route_list_drive as $driver => $transport) { // перебираю масив з водіями
                $file_template_exl = $this->path . 'register/template' . $this->file_format;
                $objPHPExcel = \PHPExcel_IOFactory::load($file_template_exl);
                // активація 1го листа
                $objPHPExcel->setActiveSheetIndex(0);
                $sheet = $objPHPExcel->getActiveSheet();
                $i = 6;
                $j = 1;
                $n = 6;
                foreach ($transport as $transport_title => $route_lists) { // перебираю масив з тр. засобами
                    foreach ($route_lists as $route_list) { // перебираю масив з путівками
                        // редагування таблиці
                        $sheet->setCellValue('A' . $i, $j); // збільшення номеру по порядку
                        $sheet->setCellValue('B' . $i, $route_list['number']); // номер путівки
                        $sheet->setCellValue('C' . $i, $route_list['datego']); // дата відправки
                        $sheet->setCellValue('D' . $i, $transport_title); // транспортний засіб
                        $sheet->setCellValue('E' . $i, $route_list['kilometrage']); // кілометраж
                        $sheet->setCellValue('F' . $i, $route_list['previous_balance_fuel']); // залишок з попередньої путівки
//                        var_dump($route_list['fuel']);
                        if ($route_list['type'] == 'gasoline') {
                            $sheet->setCellValue('G' . $i, @$route_list['fuel']['gasoline']['filled_by']); // заправка пального
                            $sheet->setCellValue('L' . $i, @$route_list['fuel']['gasoline']['write_off']); // списано пального
                            $sheet->setCellValue('O' . $i, @$route_list['fuel']['gasoline']['balance']); // залишок
                        } elseif ($route_list['type'] == 'diesel') {
                            $sheet->setCellValue('G' . $i, @$route_list['fuel']['diesel']['filled_by']); // заправка пального
                            $sheet->setCellValue('H' . $i, array_key_exists('oil', $route_list['fuel']) ? $route_list['fuel']['oil']['filled_by'] : ''); // заправка оливи
                            $sheet->setCellValue('I' . $i, array_key_exists('gasoline', $route_list['fuel']) ? $route_list['fuel']['gasoline']['filled_by'] : ''); // заправка gasoline
                            $sheet->setCellValue('L' . $i, @$route_list['fuel']['diesel']['write_off']); // списано пального
                            $sheet->setCellValue('M' . $i, array_key_exists('oil', $route_list['fuel']) ? $route_list['fuel']['oil']['write_off'] : ''); // списано оливи
                            $sheet->setCellValue('N' . $i, array_key_exists('gasoline', $route_list['fuel']) ? $route_list['fuel']['gasoline']['write_off'] : ''); // списано оливи
                            $sheet->setCellValue('O' . $i, @$route_list['fuel']['diesel']['balance']); // залишок
                        }
//                        $sheet->setCellValue('F' . $i, $route_list['previous_balance_fuel']); // залишок з попередньої путівки
//                        $sheet->setCellValue('G' . $i, @$route_list['filled_by']); // заправка пального
                        $sheet->setCellValue('J' . $i, $route_list['fuel100']); // норма списання
//                        $sheet->setCellValue('L' . $i, @$route_list['write_off']); // списано пального
//                        $sheet->setCellValue('O' . $i, @$route_list['balance']); // залишок
                        $sheet->setCellValue('P' . $i, $route_list['payment']); // рахунок
                        $i++;
                        $j++;
                    }
                    $sheet->setCellValue('E' . $i, '=SUM(E' . $n . ':E' . ($i - 1) . ')'); // Пробіг
                    $sheet->setCellValue('G' . $i, '=SUM(G' . $n . ':G' . ($i - 1) . ')'); // Сума заправленого пального
                    $sheet->setCellValue('H' . $i, '=SUM(H' . $n . ':H' . ($i - 1) . ')'); // Сума заправленого oil
                    $sheet->setCellValue('I' . $i, '=SUM(I' . $n . ':I' . ($i - 1) . ')'); // Сума заправленого gasoline add
                    $sheet->setCellValue('L' . $i, '=SUM(L' . $n . ':L' . ($i - 1) . ')'); // Сума списаного пального
                    $sheet->setCellValue('M' . $i, '=SUM(M' . $n . ':M' . ($i - 1) . ')'); // Сума списаного oil
                    $sheet->setCellValue('N' . $i, '=SUM(N' . $n . ':N' . ($i - 1) . ')'); // Сума списаного gasoline add
                    $sheet->setCellValue('O' . $i, '=M' . ($i - 1)); // Виведення залишку
                    $i = $i + 2;
                    $n = $i;
                }
                $out_arr = explode(' ', $driver);
                $out_arr[1] = substr($out_arr[1], 0, 2);
                $out_arr[2] = substr($out_arr[2], 0, 2);
                $sheet->setCellValue('L2', $out_arr[0] . ' ' . $out_arr[1] . '. ' . $out_arr[2] . '.'); // Виведення водія
                $sheet->setCellValue('H2', $this->months($month)); // Виведення місяця
                // Збереження таблиці під новим імям
                $objWriter = new \PHPExcel_Writer_Excel5($objPHPExcel);
                $file_save_exl = 'register/' . $this->months($month) . ' (' . $driver . ')' . $this->file_format; //імя нової таблиці
                $objWriter->save($this->path . $file_save_exl);
                $files[$driver] = '/reports/get-file/' . $file_save_exl; // Список файлів
            }
        }
        return $files;
    }

    private function doReportFuelPayment($month)
    {
        $files = [];
        $route_list_db = RouteList::find()
            ->with('allFuel', 'driver', 'transport')
            ->where('`number`<>\'0\' AND `valid`=\'1\' AND month(datego) = ' . $month . ' and year(datego) = year(now())')
            ->orderBy('number ASC')
            ->all();
        if ($route_list_db) {
            $route_list_drive_payment = [];
            foreach ($route_list_db as $route_list) {
                $driver = $route_list->driver->name;
                $transport = $route_list->transport->mk;
                foreach ($route_list->allFuel as $fuel) {
                    if ($fuel->type == 'oil') {
                        continue;
                    }
                    $route_list_drive_payment[$driver][$transport][$route_list['payment']][$fuel->type][] = $fuel->write_off;
                }
            }
            // Підключення шаблону
            $file_template_exl = $this->path . 'fuelall/template' . $this->file_format;
            $objPHPExcel = \PHPExcel_IOFactory::load($file_template_exl);
            // активація 1го листа
            $objPHPExcel->setActiveSheetIndex(0);
            $sheet = $objPHPExcel->getActiveSheet();
            $sheet_call['db'] = ['i' => 7];
            $sheet_call['sr'] = ['i' => 7];
            $sheet_call['pr'] = ['i' => 7];
            foreach ($route_list_drive_payment as $driver => $route_list_transport) {
                foreach ($route_list_transport as $transport => $payment) {
                    foreach ($payment as $sr_db_pr => $value) {
                        switch ($sr_db_pr) {
                            case 'db':
                                $sheet_call['column_tr'] = 'A';
                                $sheet_call['column_name'] = 'B';
                                $sheet_call['column_type'] = 'C';
                                $sheet_call['column_w_oil'] = 'D';
                                break;
                            case 'pr':
                                $sheet_call['column_tr'] = 'E';
                                $sheet_call['column_name'] = 'F';
                                $sheet_call['column_type'] = 'G';
                                $sheet_call['column_w_oil'] = 'H';
                                break;
                            case 'sr':
                                $sheet_call['column_tr'] = 'I';
                                $sheet_call['column_name'] = 'J';
                                $sheet_call['column_type'] = 'K';
                                $sheet_call['column_w_oil'] = 'L';
                                break;
                        }
                        $out_arr = explode(' ', $driver);
                        $out_arr[1] = substr($out_arr[1], 0, 2);
                        $out_arr[2] = substr($out_arr[2], 0, 2);
                        $dr = $out_arr[0] . ' ' . $out_arr[1] . '. ' . $out_arr[2] . '.';

                        foreach ($value as $type => $sum) {
                            $sheet->setCellValue($sheet_call['column_tr'] . $sheet_call[$sr_db_pr]['i'], $transport); // transport
                            $sheet->setCellValue($sheet_call['column_name'] . $sheet_call[$sr_db_pr]['i'], $dr); // driver
                            $sheet->setCellValue($sheet_call['column_type'] . $sheet_call[$sr_db_pr]['i'], $this->convertTypeFuel($type)); // mk_fuel
                            $sheet->setCellValue($sheet_call['column_w_oil'] . $sheet_call[$sr_db_pr]['i'], array_sum($sum)); // sum
                            $sheet_call[$sr_db_pr]['i']++;
                        }
                    }
                }
            }
            $sheet->setCellValue('F2', $this->months($month)); // Виведення month
            // Збереження таблиці під новим імям
            $objWriter = new \PHPExcel_Writer_Excel5($objPHPExcel);
            $file_save_exl = 'fuelall/' . 'витрати_по_рахунках_' . $this->months($month) . $this->file_format; //імя нової таблиці
            $objWriter->save($this->path . $file_save_exl);
            $files['download'] = '/reports/get-file/' . $file_save_exl; // Список файлів
        }
        return $files;
    }

    private function convertTypeFuel($type)
    {
        switch ($type) {
            case 'diesel':
                return 'д-во';
            case 'gasoline':
                return 'бензин';
            case 'oil':
                return 'олива';
            default:
                return '';
        }
    }
}
