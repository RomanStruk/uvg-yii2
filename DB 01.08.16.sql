-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Час створення: Сер 01 2016 р., 19:59
-- Версія сервера: 5.7.13-0ubuntu0.16.04.2
-- Версія PHP: 7.0.8-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `yii2advanced`
--

-- --------------------------------------------------------

--
-- Структура таблиці `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Admin', 1, 1467930934),
('User', 2, 1468075653);

-- --------------------------------------------------------

--
-- Структура таблиці `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`, `group_code`) VALUES
('/*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('//*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('//controller', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('//crud', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('//extension', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('//form', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('//index', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('//model', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('//module', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/asset/*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/asset/compress', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/asset/template', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/cache/*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/cache/flush', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/cache/flush-all', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/cache/flush-schema', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/cache/index', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/car/*', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/car/create', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/car/delete', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/car/index', 3, NULL, NULL, NULL, 1468012862, 1468012862, NULL),
('/car/update', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/car/view', 3, NULL, NULL, NULL, 1468012862, 1468012862, NULL),
('/debug/*', 3, NULL, NULL, NULL, 1468012862, 1468012862, NULL),
('/debug/default/*', 3, NULL, NULL, NULL, 1468012862, 1468012862, NULL),
('/debug/default/db-explain', 3, NULL, NULL, NULL, 1468012862, 1468012862, NULL),
('/debug/default/download-mail', 3, NULL, NULL, NULL, 1468012862, 1468012862, NULL),
('/debug/default/index', 3, NULL, NULL, NULL, 1468012862, 1468012862, NULL),
('/debug/default/toolbar', 3, NULL, NULL, NULL, 1468012862, 1468012862, NULL),
('/debug/default/view', 3, NULL, NULL, NULL, 1468012862, 1468012862, NULL),
('/fixture/*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/fixture/load', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/fixture/unload', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/gii/*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/gii/default/*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/gii/default/action', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/gii/default/diff', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/gii/default/index', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/gii/default/preview', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/gii/default/view', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/gridview/*', 3, NULL, NULL, NULL, 1468012862, 1468012862, NULL),
('/gridview/export/*', 3, NULL, NULL, NULL, 1468012862, 1468012862, NULL),
('/gridview/export/download', 3, NULL, NULL, NULL, 1468012862, 1468012862, NULL),
('/hello/*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/hello/index', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/help/*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/help/index', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/message/*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/message/config', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/message/config-template', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/message/extract', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/migrate/*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/migrate/create', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/migrate/down', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/migrate/history', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/migrate/mark', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/migrate/new', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/migrate/redo', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/migrate/to', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/migrate/up', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/rbac/*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/rbac/init', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/reports/*', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/reports/balances', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/reports/fuel-all', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/reports/fuel-payment', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/reports/index', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/serve/*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/serve/index', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/site/*', 3, NULL, NULL, NULL, 1468012860, 1468012860, NULL),
('/site/about', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/site/captcha', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/site/contact', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/site/error', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/site/index', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/site/login', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/site/logout', 3, NULL, NULL, NULL, 1468012861, 1468012861, NULL),
('/transport-car/*', 3, NULL, NULL, NULL, 1468012860, 1468012860, NULL),
('/transport-car/create', 3, NULL, NULL, NULL, 1468012860, 1468012860, NULL),
('/transport-car/delete', 3, NULL, NULL, NULL, 1468012860, 1468012860, NULL),
('/transport-car/index', 3, NULL, NULL, NULL, 1468012860, 1468012860, NULL),
('/transport-car/update', 3, NULL, NULL, NULL, 1468012860, 1468012860, NULL),
('/transport-car/view', 3, NULL, NULL, NULL, 1468012860, 1468012860, NULL),
('/user-management/*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/user-management/auth-item-group/*', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth-item-group/bulk-activate', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth-item-group/bulk-deactivate', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth-item-group/bulk-delete', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth-item-group/create', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth-item-group/delete', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth-item-group/grid-page-size', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth-item-group/grid-sort', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth-item-group/index', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth-item-group/toggle-attribute', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth-item-group/update', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth-item-group/view', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth/*', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth/captcha', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth/change-own-password', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth/confirm-email', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth/confirm-email-receive', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth/confirm-registration-email', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth/login', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth/logout', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth/password-recovery', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth/password-recovery-receive', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/auth/registration', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/*', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/bulk-activate', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/bulk-deactivate', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/bulk-delete', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/create', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/delete', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/grid-page-size', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/grid-sort', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/index', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/refresh-routes', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/set-child-permissions', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/set-child-routes', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/toggle-attribute', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/update', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/permission/view', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/role/*', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/role/bulk-activate', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/role/bulk-deactivate', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/role/bulk-delete', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/role/create', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/role/delete', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/role/grid-page-size', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/role/grid-sort', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/role/index', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/role/set-child-permissions', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/role/set-child-roles', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/role/toggle-attribute', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/role/update', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/role/view', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user-permission/*', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user-permission/set', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user-permission/set-roles', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user-visit-log/*', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/user-management/user-visit-log/bulk-activate', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user-visit-log/bulk-deactivate', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user-visit-log/bulk-delete', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user-visit-log/create', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user-visit-log/delete', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user-visit-log/grid-page-size', 3, NULL, NULL, NULL, 1467930348, 1467930348, NULL),
('/user-management/user-visit-log/grid-sort', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user-visit-log/index', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user-visit-log/toggle-attribute', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user-visit-log/update', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user-visit-log/view', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user/*', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user/bulk-activate', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user/bulk-deactivate', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user/bulk-delete', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user/change-password', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user/create', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user/delete', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user/grid-page-size', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user/grid-sort', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user/index', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user/toggle-attribute', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user/update', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('/user-management/user/view', 3, NULL, NULL, NULL, 1467930349, 1467930349, NULL),
('Admin', 1, 'Admin', NULL, NULL, 1467930349, 1467930349, NULL),
('assignRolesToUsers', 2, 'Assign roles to users', NULL, NULL, 1467930349, 1467930349, 'userManagement'),
('bindUserToIp', 2, 'Bind user to IP', NULL, NULL, 1467930349, 1467930349, 'userManagement'),
('changeOwnPassword', 2, 'Change own password', NULL, NULL, 1467930349, 1467930349, 'userCommonPermissions'),
('changeUserPassword', 2, 'Change user password', NULL, NULL, 1467930349, 1467930349, 'userManagement'),
('commonPermission', 2, 'Common permission', NULL, NULL, 1467930344, 1467930344, NULL),
('createUsers', 2, 'Create users', NULL, NULL, 1467930349, 1467930349, 'userManagement'),
('deleteUsers', 2, 'Delete users', NULL, NULL, 1467930349, 1467930349, 'userManagement'),
('editUserEmail', 2, 'Edit user email', NULL, NULL, 1467930349, 1467930349, 'userManagement'),
('editUsers', 2, 'Edit users', NULL, NULL, 1467930349, 1467930349, 'userManagement'),
('indexReports', 2, 'Звіти', NULL, NULL, 1468072586, 1468075508, 'userCommonPermissions'),
('User', 1, 'Users', NULL, NULL, 1468075394, 1468075394, NULL),
('viewRegistrationIp', 2, 'View registration IP', NULL, NULL, 1467930349, 1467930349, 'userManagement'),
('viewUserEmail', 2, 'View user email', NULL, NULL, 1467930349, 1467930349, 'userManagement'),
('viewUserRoles', 2, 'View user roles', NULL, NULL, 1467930349, 1467930349, 'userManagement'),
('viewUsers', 2, 'View users', NULL, NULL, 1467930349, 1467930349, 'userManagement'),
('viewVisitLog', 2, 'View visit log', NULL, NULL, 1467930349, 1467930349, 'userManagement');

-- --------------------------------------------------------

--
-- Структура таблиці `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('indexReports', '/reports/index'),
('changeOwnPassword', '/user-management/auth/change-own-password'),
('assignRolesToUsers', '/user-management/user-permission/set'),
('assignRolesToUsers', '/user-management/user-permission/set-roles'),
('viewVisitLog', '/user-management/user-visit-log/grid-page-size'),
('viewVisitLog', '/user-management/user-visit-log/index'),
('viewVisitLog', '/user-management/user-visit-log/view'),
('editUsers', '/user-management/user/bulk-activate'),
('editUsers', '/user-management/user/bulk-deactivate'),
('deleteUsers', '/user-management/user/bulk-delete'),
('changeUserPassword', '/user-management/user/change-password'),
('createUsers', '/user-management/user/create'),
('deleteUsers', '/user-management/user/delete'),
('viewUsers', '/user-management/user/grid-page-size'),
('viewUsers', '/user-management/user/index'),
('editUsers', '/user-management/user/update'),
('viewUsers', '/user-management/user/view'),
('Admin', 'assignRolesToUsers'),
('Admin', 'bindUserToIp'),
('Admin', 'changeOwnPassword'),
('User', 'changeOwnPassword'),
('Admin', 'changeUserPassword'),
('Admin', 'createUsers'),
('Admin', 'deleteUsers'),
('Admin', 'editUserEmail'),
('Admin', 'editUsers'),
('Admin', 'indexReports'),
('User', 'indexReports'),
('Admin', 'viewRegistrationIp'),
('Admin', 'viewUserEmail'),
('editUserEmail', 'viewUserEmail'),
('assignRolesToUsers', 'viewUserRoles'),
('Admin', 'viewUsers'),
('assignRolesToUsers', 'viewUsers'),
('changeUserPassword', 'viewUsers'),
('createUsers', 'viewUsers'),
('deleteUsers', 'viewUsers'),
('editUsers', 'viewUsers'),
('Admin', 'viewVisitLog');

-- --------------------------------------------------------

--
-- Структура таблиці `auth_item_group`
--

CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `auth_item_group`
--

INSERT INTO `auth_item_group` (`code`, `name`, `created_at`, `updated_at`) VALUES
('userCommonPermissions', 'User common permission', 1467930349, 1467930349),
('userManagement', 'User management', 1467930349, 1467930349);

-- --------------------------------------------------------

--
-- Структура таблиці `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `drivers`
--

CREATE TABLE `drivers` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'Прізвище Імя По батькові',
  `telephone` varchar(10) NOT NULL COMMENT 'Номер телефону',
  `profession` varchar(255) NOT NULL COMMENT 'Професія',
  `count` enum('db','sr') NOT NULL DEFAULT 'sr' COMMENT 'Рахунок',
  `info` mediumtext COMMENT 'Додаткова інфа'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Водії';

--
-- Дамп даних таблиці `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `telephone`, `profession`, `count`, `info`) VALUES
(1, 'Комар-Стаховський Василь Йосипович', '0968172108', 'Водій', 'db', '19.11.1968\r\nс. Проходи'),
(2, 'Кух Володимир Іванович', '0954234561', 'Водій', 'sr', '14.02.1966\r\nс. Проходи'),
(3, 'Оласюк Сергій Якович', '0952857657', 'Водій', 'sr', '04.10.1964\r\nс. Проходи'),
(4, 'Фальчик Микола Степанович', '0502074325', 'Електрозварювальник', 'db', '14.05.1976\r\nсмт. Проходи'),
(5, 'Бондар Сергій Іванович', '0508820095', 'Водій', 'db', '01.12.1965\r\nсмт. Любешів'),
(6, 'Масюк Валерій Петрович', '0996429095', 'Водій', 'db', '27.08.1971\r\nсмт. Любешів'),
(8, 'Іванісік Володимир Олександрович', '0663421639', 'Тракторист', 'sr', '18.10.1960\r\nсмт. Любешів'),
(10, 'Божко Анатолій Михайлович', '0990286036', 'Слюсар', 'sr', '07.12.1967\r\n"---"'),
(11, 'Дубольський Григорій Миколайович', '2-18-33', 'Тракторист', 'sr', '01.01.1961\r\nсмт. Любешів'),
(14, 'Струк Роман Миколайович ', '0668514453', 'зав. РММ', 'db', 'РММ'),
(16, 'Зімич Петро Іванович', '0000000000', 'Начальник дільниці', 'db', 'Мала механізація');

-- --------------------------------------------------------

--
-- Структура таблиці `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1467930335),
('m140608_173539_create_user_table', 1467930340),
('m140611_133903_init_rbac', 1467930341),
('m140808_073114_create_auth_item_group_table', 1467930343),
('m140809_072112_insert_superadmin_to_user', 1467930344),
('m140809_073114_insert_common_permisison_to_auth_item', 1467930344),
('m141023_141535_create_user_visit_log', 1467930344),
('m141116_115804_add_bind_to_ip_and_registration_ip_to_user', 1467930346),
('m141121_194858_split_browser_and_os_column', 1467930347),
('m141201_220516_add_email_and_email_confirmed_to_user', 1467930348),
('m141207_001649_create_basic_user_permissions', 1467930349);

-- --------------------------------------------------------

--
-- Структура таблиці `realized_works_truck`
--

CREATE TABLE `realized_works_truck` (
  `id` int(11) UNSIGNED NOT NULL,
  `route_list` int(6) UNSIGNED NOT NULL,
  `dimension` enum('m3','motogod','t','other') NOT NULL DEFAULT 'other',
  `freight` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `realized_works_truck`
--

INSERT INTO `realized_works_truck` (`id`, `route_list`, `dimension`, `freight`) VALUES
(1, 2, 'm3', 0),
(2, 3, 'm3', 8),
(3, 5, 't', 3),
(4, 6, 'm3', 8),
(5, 8, 'm3', 0),
(6, 9, 'm3', 2.4),
(7, 11, 'm3', 2.5),
(8, 12, 'm3', 12),
(9, 14, 't', 0),
(10, 15, 'motogod', 2),
(11, 17, 't', 0),
(12, 18, 'motogod', 3),
(13, 20, 't', 0),
(14, 21, 'motogod', 1),
(15, 23, 't', 5),
(16, 24, 'motogod', 2),
(17, 26, 't', 0),
(18, 27, 'motogod', 4),
(19, 28, 'm3', 8),
(20, 30, 'motogod', 8),
(21, 32, 'motogod', 8),
(22, 34, 't', 20),
(23, 35, 'm3', 50),
(24, 36, 'm3', 0),
(25, 38, 'motogod', 8),
(26, 39, 't', 1),
(27, 41, 'motogod', 7),
(28, 43, 't', 0),
(29, 44, 'motogod', 7),
(30, 46, 't', 0),
(31, 47, 'motogod', 7),
(32, 49, 't', 0),
(33, 50, 'motogod', 0),
(34, 52, 't', 0),
(35, 54, 't', 0),
(36, 56, 'motogod', 4),
(37, 58, 't', 24),
(38, 60, 'motogod', 2),
(39, 62, 't', 1),
(40, 64, 'motogod', 1),
(41, 66, 'm3', 6),
(42, 71, 't', 18),
(43, 73, 't', 4),
(44, 75, 'motogod', 5),
(45, 77, 't', 8),
(46, 78, 'motogod', 1),
(47, 80, 't', 6),
(48, 82, 't', 48),
(49, 84, 't', 24),
(50, 86, 't', 48),
(51, 88, 'motogod', 3),
(52, 90, 't', 80),
(53, 92, 't', 96),
(54, 94, 't', 48),
(55, 95, 't', 28),
(56, 97, 't', 6),
(57, 98, 'motogod', 0),
(58, 100, 't', 28),
(59, 101, 'm3', 0),
(60, 103, 't', 96),
(61, 104, 'm3', 0),
(62, 106, 't', 96),
(63, 107, 'm3', 0),
(64, 109, 't', 30),
(65, 110, 'm3', 0),
(66, 112, 'm3', 0),
(67, 114, 't', 4),
(68, 115, 'm3', 0),
(69, 117, 'm3', 8),
(70, 118, 'm3', 0),
(71, 120, 't', 52),
(72, 121, 'm3', 0),
(73, 123, 't', 1),
(74, 124, 'm3', 0),
(75, 126, 't', 0),
(76, 127, 'm3', 0),
(77, 129, 't', 0),
(78, 130, 'm3', 0),
(79, 132, 't', 16),
(80, 133, 'm3', 0),
(81, 135, 'm3', 0),
(82, 137, 't', 31),
(83, 138, 'm3', 0),
(84, 140, 'm3', 148),
(85, 142, 'm3', 0),
(86, 144, 't', 6),
(87, 145, 'm3', 0),
(88, 147, 't', 2),
(89, 149, 't', 33),
(90, 153, 't', 40),
(91, 155, 't', 12),
(92, 159, 't', 7),
(93, 161, 't', 7);

-- --------------------------------------------------------

--
-- Структура таблиці `routelist`
--

CREATE TABLE `routelist` (
  `id` int(11) UNSIGNED NOT NULL,
  `number` int(6) UNSIGNED NOT NULL COMMENT 'Номер шляхового листа',
  `driver` int(6) DEFAULT NULL,
  `transport` int(6) DEFAULT NULL COMMENT 'id транспорту',
  `type` enum('car','tractor','truck') NOT NULL COMMENT 'Тип шляхового листа',
  `date` datetime DEFAULT NULL COMMENT 'Дата внесення в бд путівки',
  `datego` date NOT NULL COMMENT 'Дата путівки',
  `fuel` varchar(255) DEFAULT NULL COMMENT 'Заправка',
  `mk_fuel` int(6) DEFAULT NULL COMMENT 'Марка палива(дб)',
  `dispach` time DEFAULT NULL COMMENT 'Час відправлення',
  `return` time DEFAULT NULL COMMENT 'Час повернення',
  `oil` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Запарвка масла',
  `other_fuel` varchar(255) DEFAULT NULL COMMENT 'Інші паливо маст матеріали',
  `other_mk_fuel` varchar(255) DEFAULT NULL COMMENT 'Марка other_fuel (дб)',
  `balance_fuel` varchar(255) DEFAULT NULL COMMENT 'Залишок пального при поверненні',
  `w_off_fuell` varchar(255) DEFAULT NULL COMMENT 'Списання пального(л)',
  `worked` int(6) NOT NULL COMMENT 'Відпрацьовано(год)',
  `note` mediumtext COMMENT 'Додаткові відмітки про рух траспорту',
  `order` mediumtext COMMENT 'У чиє розпорядження',
  `valid` enum('1','0') NOT NULL DEFAULT '1' COMMENT 'Чи дійсна путівка',
  `freight` varchar(6) NOT NULL,
  `dimension` enum('m3','motogod','t','other') NOT NULL DEFAULT 'other',
  `speedometerdeparture` varchar(6) NOT NULL,
  `kilometrage` varchar(255) NOT NULL COMMENT 'Кілометраж',
  `speedometerreturn` varchar(6) NOT NULL COMMENT 'Показник спідометра при поверненні',
  `payment` enum('db','sr','pr') NOT NULL DEFAULT 'sr' COMMENT 'Оплата(с.р., д.б)',
  `completed` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Шляхові листи';

--
-- Дамп даних таблиці `routelist`
--

INSERT INTO `routelist` (`id`, `number`, `driver`, `transport`, `type`, `date`, `datego`, `fuel`, `mk_fuel`, `dispach`, `return`, `oil`, `other_fuel`, `other_mk_fuel`, `balance_fuel`, `w_off_fuell`, `worked`, `note`, `order`, `valid`, `freight`, `dimension`, `speedometerdeparture`, `kilometrage`, `speedometerreturn`, `payment`, `completed`) VALUES
(1, 0, 5, 4, 'car', '2015-12-31 00:00:00', '2015-12-31', '1', 1, '08:00:00', '17:00:00', '0', '', '0', '1', '0', 0, 'Фіктивна путівка для початку відліку', 'Любешівське УВГ', '1', '', 'm3', '0', '0', '0', 'db', '1'),
(2, 1, 5, 4, 'car', '2016-01-19 15:48:50', '2016-01-04', '20', 1, '08:00:00', '17:15:00', '0', '', '0', '3', '18', 8, 'По любешові', 'Любешівське УВГ', '1', '0', 'other', '0', '104', '104', 'db', '1'),
(3, 0, 3, 3, 'car', '2015-12-31 00:00:00', '2015-12-31', '', 1, '08:00:00', '17:00:00', '', '', '0', '0', '0', 0, 'Фиктивна путівка для старту', 'Любешівське УВГ', '1', '', 'm3', '0', '0', '0', 'sr', '1'),
(4, 2, 3, 3, 'car', '2016-01-19 15:52:51', '2016-01-04', '5', 1, '08:00:00', '17:15:00', '0', '', '0', '0', '5', 8, 'Кузьміч на насосну', 'Любешівське УВГ', '1', '0', 'other', '0', '42', '42', 'db', '1'),
(5, 3, 3, 3, 'car', '2016-01-19 15:53:32', '2016-01-05', '', 1, '08:00:00', '17:15:00', '0', '', '0', '', '', 0, 'Кузьміч', 'Любешівське УВГ', '0', '0', 'm3', '', '', '', 'sr', '1'),
(6, 4, 5, 4, 'car', '2016-01-19 15:54:13', '2016-01-05', '18', 1, '08:00:00', '17:15:00', '0', '', '0', '12', '9', 8, 'По Любешові', 'Любешівське УВГ', '1', '0', 'other', '104', '54', '158', 'db', '1'),
(7, 5, 5, 4, 'car', '2016-01-19 15:54:58', '2016-01-12', '44', 1, '08:00:00', '17:15:00', '0', '', '0', '4', '52', 8, 'По Любешові', 'Любешівське УВГ', '1', '0', 'other', '158', '300', '458', 'db', '1'),
(8, 0, 2, 2, 'truck', '2015-12-31 00:00:00', '2015-12-31', '0', 3, '08:00:00', '17:00:00', '0', '', '0', '0', '0', 0, 'Фіктивна путівка для старту', 'Любешівське УВГ', '1', '0', 'm3', '0', '0', '0', 'sr', '1'),
(9, 0, 1, 1, 'truck', '2015-12-31 00:00:00', '2015-12-31', '5', 3, '08:00:00', '17:00:00', '0', '', '0', '5', '0', 0, 'Фіктивна путівка для старту', 'Любешівське УВГ', '1', '0', 'm3', '0', '0', '0', 'sr', '1'),
(10, 1, 2, 2, 'truck', '2016-01-19 16:02:10', '2016-01-12', '', 3, '08:00:00', '17:15:00', '', '', '0', '', '', 0, 'Перевезення ЕТ-16 з Седлищ', 'Любешівське УВГ', '0', '', 'm3', '', '', '', 'sr', '1'),
(11, 2, 1, 1, 'truck', '2016-01-19 16:02:48', '2016-01-12', '5', 3, '08:00:00', '17:15:00', '0', '', '0', '2', '8', 8, 'Привезення пілетів', 'Любешівське УВГ', '1', '3', 't', '0', '30', '30', 'pr', '1'),
(12, 3, 1, 1, 'truck', '2016-01-19 16:03:50', '2016-01-13', '5', 3, '08:00:00', '17:15:00', '0', '', '0', '0', '7', 8, 'Привезення пілетів 4,3 т', 'Любешівське УВГ', '1', '0', 'm3', '30', '26', '56', 'db', '1'),
(13, 0, 4, 5, 'tractor', '2015-12-31 00:00:00', '2015-12-31', '0', 3, '08:00:00', '17:00:00', '0', '', '0', '0', '0', 0, 'Фіктивна путівка для старту', 'Любешівське УВГ', '1', '0', 'm3', '0', '0', '0', 'sr', '1'),
(14, 1, 4, 5, 'tractor', '2016-01-19 16:07:59', '2016-01-11', '5', 3, '08:00:00', '17:15:00', '0', '', '0', '0', '5', 8, 'Чистка території від снігу', 'Любешівське УВГ', '1', '8', 'm3', '0', '0', '0', 'db', '1'),
(15, 2, 4, 5, 'tractor', '2016-01-19 16:08:36', '2016-01-18', '5', 3, '08:00:00', '17:15:00', '0', '', '0', '0', '5', 8, 'Очистка території від снігу', 'Любешівське УВГ', '1', '8', 'm3', '0', '0', '0', 'db', '1'),
(16, 4, 1, 1, 'truck', '2016-03-02 17:03:08', '2016-02-04', '15', 3, '08:00:00', '17:15:00', '0', '', '0', '0', '15', 8, 'Любешів - Дольськ', 'Любешівське УВГ', '1', '2,5', 'm3', '56', '56', '112', 'sr', '1'),
(17, 10, 1, 1, 'truck', '2016-03-02 17:05:22', '2016-02-09', '10', 3, '08:00:00', '17:15:00', '0', '', '0', '0', '10', 8, 'Любешів - Підкормільська н.с.', 'Любешівське УВГ', '1', '8', 'm3', '168', '40', '208', 'sr', '1'),
(18, 13, 1, 1, 'truck', '2016-03-02 17:06:39', '2016-02-18', '15', 3, '08:00:00', '17:15:00', '0', '', '0', '0', '15', 8, 'Любешів - Дольська н.с', 'Любешівське УВГ', '1', '0', 'm3', '208', '56', '264', 'pr', '1'),
(19, 14, 1, 1, 'truck', '2016-03-02 17:08:17', '2016-02-19', '3', 3, '08:00:00', '17:15:00', '0', '', '0', '0', '3', 8, 'Любешів - Підкормільська н.с.', 'Любешівське УВГ', '1', '1', 't', '264', '11', '275', 'pr', '1'),
(20, 4, 4, 5, 'tractor', '2016-03-02 17:09:47', '2016-02-17', '30', 3, '08:00:00', '17:15:00', '0', '', '0', '0', '30', 8, 'Любешів - Цир - Любешів', 'Любешівське УВГ', '1', '12', 'm3', '0', '0', '0', 'db', '1'),
(21, 12, 5, 4, 'car', '2016-03-02 17:11:15', '2016-02-01', '5', 1, '08:00:00', '17:15:00', '0', '', '0', '9', '10', 8, 'по системі', 'Любешівське УВГ', '1', '0', 'm3', '864', '60', '924', 'db', '1'),
(22, 14, 5, 4, 'car', '2016-03-02 17:12:22', '2016-02-02', '5', 1, '08:00:00', '17:15:00', '0', '', '0', '11', '3', 8, 'Любешівська н.с.', 'Любешівське УВГ', '1', '0', 'm3', '924', '18', '942', 'db', '1'),
(23, 15, 5, 4, 'car', '2016-03-02 17:13:59', '2016-02-03', '10', 1, '08:00:00', '17:15:00', '0', '', '0', '19', '2', 8, 'автозапчастини', 'Любешівське УВГ', '1', '0', 'm3', '942', '12', '954', 'db', '1'),
(24, 16, 5, 4, 'car', '2016-03-02 17:15:19', '2016-02-04', '0', 1, '08:00:00', '17:15:00', '0', '', '0', '14', '5', 8, 'Любешів - Підкормільська н.с.', 'Любешівське УВГ', '1', '0', 'other', '954', '30', '984', 'db', '1'),
(25, 3, 4, 5, 'tractor', '2016-03-03 13:31:56', '2016-01-22', '20', 3, '08:00:00', '17:15:00', '0', '', '0', '0', '20', 8, 'Згортання снігу', 'Любешівське УВГ', '1', '2,4', 'm3', '0', '0', '0', 'db', '1'),
(26, 8, 2, 3, 'car', '2016-03-04 14:40:11', '2016-01-25', '5', 1, '08:00:00', '17:15:00', '0', '', '0', '4', '1', 8, 'Автозапчастини', 'Любешівське УВГ', '1', '0', 'm3', '42', '8', '50', 'db', '1'),
(27, 6, 5, 4, 'car', '2016-03-04 14:46:13', '2016-01-13', '50', 1, '08:00:00', '17:15:00', '0', '', '0', '2', '52', 8, 'Начальнік', 'Любешівське УВГ', '1', '0', 'other', '458', '300', '758', 'db', '1'),
(28, 7, 5, 4, 'car', '2016-03-04 14:47:03', '2016-01-22', '10', 1, '08:00:00', '17:15:00', '0', '', '0', '6', '6', 8, 'Нач', 'Любешівське УВГ', '1', '0', 'm3', '758', '36', '794', 'db', '1'),
(29, 9, 5, 4, 'car', '2016-03-04 14:47:45', '2016-01-25', '5', 1, '08:00:00', '17:15:00', '0', '', '0', '4', '7', 8, 'начч', 'Любешівське УВГ', '1', '0', 'm3', '794', '42', '836', 'db', '1'),
(30, 10, 5, 4, 'car', '2016-03-04 14:48:26', '2016-01-26', '15', 1, '08:00:00', '17:15:00', '0', '', '0', '14', '5', 8, 'нач', 'Любешівське УВГ', '1', '0', 'other', '836', '28', '864', 'db', '1'),
(31, 11, 2, 3, 'car', '2016-03-04 14:55:32', '2016-02-01', '0', 1, '08:00:00', '17:15:00', '0', '', '0', '2', '2', 8, 'Автозапчастини', 'Любешівське УВГ', '1', '0', 'other', '50', '17', '67', 'db', '1'),
(32, 17, 2, 3, 'car', '2016-03-04 14:56:11', '2016-02-04', '0', 1, '08:00:00', '17:15:00', '0', '', '0', '0', '2', 8, 'Автозап', 'Любешівське УВГ', '1', '0', 'm3', '108', '17', '125', 'db', '1'),
(33, 13, 6, 3, 'car', '2016-03-04 14:57:47', '2016-02-02', '5', 1, '08:00:00', '17:15:00', '0', '', '0', '0', '5', 8, 'люб - люблязь кузьміч', 'Любешівське УВГ', '1', '0', 'other', '67', '41', '108', 'db', '1'),
(40, 0, 2, 3, 'car', '2016-03-06 13:58:26', '2015-12-31', '0', 1, '08:00:00', '17:15:00', '0', '', '0', '0', '0', 0, 'Фіктивна путівка', 'Любешівське УВГ', '1', '0', 'other', '0', '0', '0', 'sr', '1'),
(41, 0, 6, 3, 'car', '2016-03-06 17:19:06', '2015-12-31', '0', 1, '08:00:00', '17:15:00', '0', '', '0', '0', '0', 0, 'Фіктивна путівка Масюк Газель', 'Любешівське УВГ', '1', '0', 'other', '0', '0', '0', 'db', '1'),
(50, 8, 1, 1, 'truck', '2016-03-10 21:55:33', '2016-02-04', '15', 3, '08:00:00', '17:15:00', '0', '', '', '0', '15', 8, 'потрібно доповнити', 'Любешівське УВГ', '1', '5', 't', '112', '56', '168', 'pr', '1'),
(51, 0, 6, 6, 'car', '2016-03-10 21:59:21', '2015-12-31', '10', 1, '08:00:00', '17:15:00', '0', '', '', '10', '0', 0, 'фіктивна путівка', 'Любешівське УВГ', '1', '0', 'other', '', '0', '', 'sr', '1'),
(48, 18, 5, 4, 'car', '2016-03-10 17:06:24', '2016-02-05', '5', 1, '08:00:00', '17:15:00', '0', '', '', '17', '2', 8, '1', 'Любешівське УВГ', '1', '0', 'other', '984', '12', '996', 'db', '1'),
(49, 19, 5, 4, 'car', '2016-03-10 17:07:06', '2016-02-08', '10', 1, '08:00:00', '17:15:00', '0', '', '', '18', '9', 8, '1', 'Любешівське УВГ', '1', '0', 'other', '996', '54', '1050', 'db', '1'),
(52, 29, 6, 6, 'car', '2016-03-10 22:00:06', '2016-02-12', '0', 1, '08:00:00', '17:15:00', '0', '', '', '0', '10', 8, 'списання залишку за ратно', 'Любешівське УВГ', '1', '0', 'other', '0', '52', '52', 'db', '1'),
(53, 26, 3, 3, 'car', '2016-03-10 22:09:03', '2016-02-23', '10', 1, '08:00:00', '17:15:00', '0', '', '', '3', '7', 8, 'дописати', 'Любешівське УВГ', '1', '0', 'other', '125', '58', '183', 'db', '1'),
(54, 27, 3, 3, 'car', '2016-03-10 22:09:43', '2016-02-24', '2', 1, '08:00:00', '17:15:00', '0', '', '', '0', '5', 8, 'дописати', 'Любешівське УВГ', '1', '0', 'other', '183', '16', '199', 'db', '1'),
(55, 28, 3, 3, 'car', '2016-03-10 22:10:35', '2016-02-25', '3', 1, '08:00:00', '17:15:00', '0', '', '', '0', '3', 8, 'дописати', 'Любешівське УВГ', '1', '0', 'other', '199', '25', '224', 'db', '1'),
(56, 5, 2, 2, 'truck', '2016-03-10 22:14:31', '2016-02-02', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 8, 'Бас', 'Любешівське УВГ', '1', '0', 't', '0', '40', '40', 'sr', '1'),
(57, 6, 2, 2, 'truck', '2016-03-10 22:15:16', '2016-02-04', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 8, 'Бас', 'Любешівське УВГ', '1', '0', 't', '40', '50', '90', 'sr', '1'),
(58, 7, 2, 2, 'truck', '2016-03-10 22:15:58', '2016-02-05', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 8, 'Бас', 'Любешівське УВГ', '1', '0', 't', '90', '20', '110', 'sr', '1'),
(59, 9, 2, 2, 'truck', '2016-03-10 22:16:47', '2016-02-09', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 8, 'найм', 'Любешівське УВГ', '1', '0', 't', '110', '25', '135', 'sr', '1'),
(60, 12, 2, 2, 'truck', '2016-03-10 22:17:30', '2016-02-17', '20', 3, '08:00:00', '17:15:00', '0', '', '', '0', '20', 8, 'дописати', 'Любешівське УВГ', '1', '20', 't', '135', '56', '191', 'pr', '1'),
(61, 20, 5, 4, 'car', '2016-03-10 22:20:18', '2016-02-09', '0', 1, '08:00:00', '17:15:00', '0', '', '', '15', '3', 8, 'дописати', 'Любешівське УВГ', '1', '0', 'other', '1050', '18', '1068', 'db', '1'),
(62, 21, 5, 4, 'car', '2016-03-10 22:20:58', '2016-02-11', '12', 1, '08:00:00', '17:15:00', '0', '', '', '21', '6', 8, 'дописати', 'Любешівське УВГ', '1', '0', 'other', '1068', '36', '1104', 'db', '1'),
(63, 22, 5, 4, 'car', '2016-03-10 22:21:32', '2016-02-12', '50', 1, '08:00:00', '17:15:00', '0', '', '', '19', '52', 8, 'дописати', 'Любешівське УВГ', '1', '0', 'other', '1104', '300', '1404', 'db', '1'),
(64, 23, 5, 4, 'car', '2016-03-10 22:22:29', '2016-02-15', '10', 1, '08:00:00', '17:15:00', '0', '', '', '18', '11', 8, 'дописати', 'Любешівське УВГ', '1', '0', 'other', '1404', '64', '1468', 'db', '1'),
(65, 24, 5, 4, 'car', '2016-03-10 22:23:13', '2016-02-17', '0', 1, '08:00:00', '17:15:00', '0', '', '', '14', '4', 8, 'дописати', 'Любешівське УВГ', '1', '0', 'other', '1468', '24', '1492', 'db', '1'),
(66, 25, 5, 4, 'car', '2016-03-10 22:23:55', '2016-02-22', '0', 1, '08:00:00', '17:15:00', '0', '', '', '3', '11', 8, 'дописати', 'Любешівське УВГ', '1', '0', 'other', '1492', '64', '1556', 'db', '1'),
(67, 30, 5, 4, 'car', '2016-03-23 15:11:59', '2016-03-01', '10', 1, '08:00:00', '17:15:00', '0', '', '', '5', '8', 8, 'перевірка роботи мнс іотто, визначення стану\r\n\nКрисько В.І.', 'Любешівське УВГ', '1', '0', 'other', '1556', '48', '1604', 'db', '1'),
(68, 31, 5, 4, 'car', '2016-03-23 15:13:28', '2016-03-02', '0', 1, '08:00:00', '17:15:00', '0', '', '', '3', '2', 8, 'УВГ - Любешів нст', 'Любешівське УВГ', '1', '0', 'other', '1604', '12', '1616', 'db', '1'),
(69, 32, 5, 4, 'car', '2016-03-23 15:14:47', '2016-03-03', '0', 1, '08:00:00', '17:15:00', '0', '', '', '1', '2', 8, 'перевірка роботи МНС визначення обємів робіт', 'Любешівське УВГ', '0', '0', 'other', '1616', '12', '1628', 'db', '1'),
(72, 33, 3, 4, 'car', '2016-03-23 15:20:07', '2016-03-04', '10', 1, '08:00:00', '17:15:00', '0', '', '', '0', '10', 12, 'чергування бурштин', 'Любешівське УВГ', '1', '0', 'other', '1616', '57', '1673', 'sr', '1'),
(71, 34, 1, 4, 'car', '2016-03-23 15:18:49', '2016-03-04', '5', 1, '08:00:00', '17:15:00', '0', '', '', '0', '5', 12, 'чергування бурштин (ніч)', 'Любешівське УВГ', '1', '0', 'other', '1673', '29', '1702', 'sr', '1'),
(73, 35, 2, 3, 'car', '2016-03-23 15:24:02', '2016-03-04', '5', 1, '08:00:00', '17:15:00', '0', '', '', '0', '5', 8, 'автозапчастини\r\n\nСтрук', 'Любешівське УВГ', '1', '0', 'other', '224', '41', '265', 'db', '1'),
(74, 36, 1, 4, 'car', '2016-03-23 15:26:13', '2016-03-09', '10', 1, '08:00:00', '17:15:00', '0', '', '', '5', '5', 8, 'чергування судче', 'Любешівське УВГ', '1', '0', 'other', '1702', '28', '1730', 'sr', '1'),
(75, 37, 1, 4, 'car', '2016-03-23 15:27:50', '2016-03-10', '0', 1, '08:00:00', '17:15:00', '0', '', '', '0', '5', 8, 'перевірка роботи МНС\r\n\n', 'Любешівське УВГ', '1', '0', 'other', '1730', '29', '1759', 'db', '1'),
(76, 38, 3, 3, 'car', '2016-03-23 15:29:29', '2016-03-14', '7', 1, '08:00:00', '17:15:00', '0', '', '', '0', '7', 8, 'обстеження тобольської н.с.\r\n\nЗімич П.І.', 'Любешівське УВГ', '1', '0', 'other', '525', '58', '583', 'db', '1'),
(77, 39, 3, 3, 'car', '2016-03-23 15:33:11', '2016-03-15', '2', 1, '08:00:00', '17:15:00', '0', '', '', '0', '2', 8, 'автозапчастини (покришка)\r\n\nСтрук', 'Любешівське УВГ', '1', '0', 'other', '583', '16', '599', 'db', '1'),
(78, 40, 3, 3, 'car', '2016-03-23 15:33:31', '2016-03-16', '0', 1, '08:00:00', '17:15:00', '0', '', '', '0', '0', 0, 'не використана', 'Любешівське УВГ', '0', '0', 'other', '599', '0', '599', 'db', '1'),
(79, 41, 6, 3, 'car', '2016-03-23 15:35:46', '2016-03-11', '40', 1, '08:00:00', '17:15:00', '0', '', '', '9', '31', 8, 'УВГ - Ковель', 'Любешівське УВГ', '1', '0', 'other', '265', '260', '525', 'db', '1'),
(80, 42, 3, 3, 'car', '2016-03-23 15:37:06', '2016-03-17', '10', 1, '08:00:00', '17:15:00', '0', '', '', '2', '8', 8, 'УВГ - Коростинка', 'Любешівське УВГ', '1', '0', 'other', '599', '65', '664', 'db', '1'),
(81, 43, 5, 4, 'car', '2016-03-23 15:38:23', '2016-03-17', '10', 1, '08:00:00', '17:15:00', '0', '', '', '8', '5', 8, 'УВГ - Люблязь', 'Любешівське УВГ', '1', '0', 'other', '1759', '18', '1777', 'db', '1'),
(82, 44, 6, 4, 'car', '2016-03-23 15:39:55', '2016-03-18', '20', 1, '08:00:00', '17:15:00', '0', '', '', '0', '20', 8, 'УВГ - м. Глуша - Цирська н.с - по системі', 'Любешівське УВГ', '1', '0', 'other', '1777', '115', '1892', 'db', '1'),
(83, 45, 3, 3, 'car', '2016-03-23 15:41:50', '2016-03-18', '20', 1, '08:00:00', '17:15:00', '0', '', '', '2', '20', 8, 'УВГ - Підкормільська н.с. - Дольська н.с. - с. Сваловичі...', 'Любешівське УВГ', '1', '0', 'other', '664', '165', '829', 'db', '1'),
(84, 46, 6, 3, 'car', '2016-03-23 15:42:14', '2016-03-18', '', 1, '08:00:00', '00:00:00', '0', '', '', '0', '', 0, 'не використана', 'Любешівське УВГ', '0', '0', 'other', '', '', '', 'db', '0'),
(85, 47, 6, 3, 'car', '2016-03-23 15:43:35', '2016-03-21', '0', 1, '08:00:00', '17:15:00', '0', '', '', '0', '9', 8, 'УВГ - Воля - по системі ...', 'Любешівське УВГ', '1', '0', 'other', '829', '75', '904', 'db', '1'),
(86, 48, 3, 3, 'car', '2016-03-23 15:44:34', '2016-03-22', '10', 1, '08:00:00', '17:15:00', '0', '', '', '7', '5', 8, 'Кульміч за 8 березня', 'Любешівське УВГ', '1', '0', 'other', '904', '41', '945', 'db', '1'),
(87, 49, 5, 4, 'car', '2016-03-23 15:45:52', '2016-03-22', '0', 1, '08:00:00', '17:15:00', '0', '', '', '6', '2', 8, 'УВГ - Любешів н.с.....', 'Любешівське УВГ', '1', '0', 'other', '1892', '12', '1904', 'db', '1'),
(88, 50, 5, 4, 'car', '2016-03-23 15:46:48', '2016-03-23', '0', 1, '08:00:00', '17:15:00', '0', '', '', '4', '2', 8, '...', 'Любешівське УВГ', '1', '0', 'other', '1904', '12', '1916', 'db', '1'),
(89, 15, 1, 1, 'truck', '2016-03-23 15:54:19', '2016-03-01', '12', 3, '08:00:00', '17:15:00', '0', '', '', '0', '12', 8, 'УВГ - Коростинка - Дольськ', 'Любешівське УВГ', '1', '0', 't', '275', '45', '320', 'pr', '1'),
(90, 16, 2, 2, 'truck', '2016-03-23 15:55:34', '2016-03-09', '30', 3, '08:00:00', '17:15:00', '0', '', '', '0', '30', 8, 'Чергування бурштин', 'Любешівське УВГ', '1', '0', 't', '191', '84', '275', 'sr', '1'),
(91, 17, 1, 1, 'truck', '2016-03-23 15:57:20', '2016-03-11', '10', 3, '08:00:00', '17:15:00', '0', '', '', '0', '10', 8, 'увг - партизанська\r\n\nнасоси', 'Любешівське УВГ', '1', '0', 't', '320', '39', '359', 'pr', '1'),
(92, 18, 1, 1, 'truck', '2016-03-23 15:59:12', '2016-03-12', '10', 3, '08:00:00', '17:15:00', '0', '', '', '0', '10', 8, 'перевезення компресора', 'Любешівське УВГ', '1', '0', 't', '359', '39', '398', 'pr', '1'),
(93, 19, 1, 1, 'truck', '2016-03-23 16:00:43', '2016-03-14', '13', 3, '08:00:00', '17:15:00', '0', '', '', '0', '13', 8, '2 насаси \r\n\nУВГ - Коростинка -Дольськ', 'Любешівське УВГ', '1', '0', 't', '398', '51', '449', 'pr', '1'),
(94, 20, 6, 7, 'truck', '2016-03-23 16:02:52', '2016-03-16', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 4, '№ 26 від 15.03.16\r\n\n272 грн\r\n\nМартинчук Г.І.', 'Любешівське УВГ', '1', '4', 'motogod', '', '5', '', 'sr', '1'),
(95, 21, 2, 2, 'truck', '2016-03-23 16:04:58', '2016-03-18', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 2, '№ 35 від 18.03.16\r\n\n2 год\r\n\nМихалюк Г.О.', 'Любешівське УВГ', '1', '24', 't', '275', '20', '295', 'sr', '1'),
(96, 22, 6, 7, 'truck', '2016-03-23 16:06:44', '2016-03-18', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 0, '№ 36\r\n\n1,5 год\r\n\nПанчишин Б.І.', 'Любешівське УВГ', '1', '2', 'motogod', '0', '10', '10', 'sr', '1'),
(97, 23, 1, 1, 'truck', '2016-03-23 16:08:46', '2016-03-18', '0', 3, '08:00:00', '10:00:00', '0', '', '', '0', '0', 0, '№ 36\r\n\n1,5 год\r\n\nПанчишин Б.І.', 'Любешівське УВГ', '1', '1', 't', '449', '10', '459', 'sr', '1'),
(98, 24, 6, 7, 'truck', '2016-03-23 16:11:33', '2016-03-22', '10', 3, '09:00:00', '10:00:00', '0', '', '', '0', '10', 1, '№ 37\r\n\n1 год\r\n\nЛюбешів_комфорт Сервіс', 'Любешівське УВГ', '1', '1', 'motogod', '10', '10', '20', 'sr', '1'),
(99, 25, 3, 1, 'truck', '2016-03-23 16:12:07', '2016-03-23', '20', 3, '08:00:00', '17:15:00', '0', '', '', '0', '20', 0, 'по дрова', 'Любешівське УВГ', '1', '6', 'm3', '459', '81', '540', 'pr', '1'),
(100, 0, 6, 4, 'car', '2016-03-24 22:28:48', '2015-12-31', '0', 1, '08:00:00', '17:15:00', '0', '', '', '0', '0', 0, 'нульова путівка', 'Любешівське УВГ', '1', '0', 'other', '0', '0', '0', 'sr', '1'),
(101, 5, 4, 5, 'tractor', '2016-03-25 12:09:16', '2016-03-18', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 2, '№ 35\r\n\nМихалюк Г.О.', 'Любешівське УВГ', '1', '2', 'motogod', '', '0', '', 'sr', '1'),
(102, 6, 4, 5, 'tractor', '2016-03-25 12:10:59', '2016-03-23', '20', 3, '08:00:00', '17:15:00', '0', '', '', '0', '20', 8, 'Любешів - Підкормільська н.с.\r\n\n6 м3 погрузка грунту 2,4 мгод', 'Любешівське УВГ', '1', '3', 'motogod', '0', '0', '0', 'pr', '1'),
(103, 7, 4, 5, 'tractor', '2016-03-25 12:12:52', '2016-03-25', '2', 3, '08:00:00', '17:15:00', '0', '', '', '0', '2', 5, 'буксирування екскаватора', 'Любешівське УВГ', '1', '1', 'motogod', '', '0', '', 'db', '1'),
(104, 8, 4, 5, 'tractor', '2016-03-25 12:13:56', '2016-03-25', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 2, 'Михалюк\r\n\n2 год х 176 = 352', 'Любешівське УВГ', '1', '2', 'motogod', '', '0', '', 'sr', '1'),
(105, 51, 3, 3, 'car', '2016-03-25 12:18:00', '2016-03-24', '6', 1, '08:00:00', '17:15:00', '0', '', '', '7', '6', 8, 'Шпанчик', 'Любешівське УВГ', '1', '0', 'other', '945', '50', '995', 'sr', '1'),
(106, 52, 5, 4, 'car', '2016-03-25 12:19:52', '2016-03-24', '0', 1, '08:00:00', '17:15:00', '0', '', '', '2', '2', 8, 'любешів - залаззя', 'Любешівське УВГ', '1', '0', 'other', '1916', '12', '1928', 'db', '1'),
(107, 53, 3, 3, 'car', '2016-03-25 12:21:18', '2016-03-25', '0', 1, '08:00:00', '17:15:00', '0', '', '', '2', '5', 8, 'кульміч на 8 березня', 'Любешівське УВГ', '1', '0', 'other', '995', '42', '1037', 'db', '1'),
(108, 54, 5, 4, 'car', '2016-03-25 12:22:12', '2016-03-25', '0', 1, '08:00:00', '17:15:00', '0', '', '', '1', '1', 0, 'УВГ - Любешів н.с', 'Любешівське УВГ', '1', '0', 'other', '1928', '6', '1934', 'db', '1'),
(109, 55, 5, 4, 'car', '2016-03-25 12:22:30', '2016-03-28', '50', 1, '08:00:00', '17:15:00', '0', '', '', '2', '49', 8, 'УВГ - Луцьк', 'Любешівське УВГ', '1', '0', 'other', '1934', '280', '2214', 'sr', '1'),
(110, 0, 1, 4, 'car', '2016-03-30 11:23:42', '2015-12-31', '0', 1, '08:00:00', '17:15:00', '0', '', '', '0', '0', 0, 'нульова путівка', 'Любешівське УВГ', '1', '0', 'other', '0', '0', '0', 'sr', '1'),
(111, 0, 3, 4, 'car', '2016-03-30 11:24:07', '2015-12-31', '0', 1, '08:00:00', '17:15:00', '0', '', '', '0', '0', 0, 'нульова путівка', 'Любешівське УВГ', '1', '0', 'other', '0', '0', '0', 'sr', '1'),
(112, 56, 3, 3, 'car', '2016-04-19 13:37:05', '2016-04-04', '6', 1, '08:00:00', '00:00:00', '0', '', '', '2', '6', 8, '-', 'Любешівське УВГ', '1', '0', 'other', '1037', '50', '1087', 'db', '1'),
(113, 57, 5, 4, 'car', '2016-04-19 13:37:34', '2016-04-04', '50', 1, '08:00:00', '17:15:00', '0', '', '', '2', '50', 8, 'луцьк', 'Любешівське УВГ', '1', '0', 'other', '2214', '290', '2504', 'db', '1'),
(114, 58, 3, 4, 'car', '2016-04-19 13:37:55', '2016-04-05', '40', 1, '08:00:00', '19:15:00', '0', '', '', '0', '40', 0, 'Ратно', 'Любешівське УВГ', '1', '0', 'other', '2504', '228', '2732', 'sr', '1'),
(115, 59, 5, 3, 'car', '2016-04-19 13:38:19', '2016-04-05', '5', 1, '08:00:00', '17:15:00', '0', '', '', '0', '5', 8, 'бучин нс', 'Любешівське УВГ', '1', '0', 'other', '1087', '40', '1127', 'sr', '1'),
(116, 60, 5, 4, 'car', '2016-04-19 13:38:42', '2016-04-06', '5', 1, '08:00:00', '17:15:00', '0', '', '', '5', '2', 8, 'запчастини', 'Любешівське УВГ', '1', '0', 'other', '2732', '12', '2744', 'db', '1'),
(117, 61, 5, 4, 'car', '2016-04-19 13:39:02', '2016-04-08', '0', 1, '08:00:00', '17:15:00', '0', '', '', '1', '4', 8, 'заріка нс', 'Любешівське УВГ', '1', '0', 'other', '2744', '24', '2768', 'db', '1'),
(118, 62, 5, 3, 'car', '2016-04-19 13:39:41', '2016-04-11', '3', 1, '08:00:00', '09:00:00', '0', '', '', '0', '3', 1, 'Воля Любешівська', 'Любешівське УВГ', '1', '0', 'other', '1127', '25', '1152', 'sr', '1'),
(119, 63, 5, 4, 'car', '2016-04-19 13:40:21', '2016-04-12', '50', 1, '08:00:00', '17:15:00', '0', '', '', '2', '49', 8, 'Луцьк(фейкова)', 'Любешівське УВГ', '1', '0', 'other', '2768', '280', '3048', 'db', '1'),
(120, 64, 2, 3, 'car', '2016-04-19 13:41:00', '2016-04-12', '7', 1, '08:00:00', '17:15:00', '0', '', '', '0', '7', 1, 'Любешівська Воля (мусорнік)', 'Любешівське УВГ', '1', '0', 'other', '1152', '58', '1210', 'sr', '1'),
(121, 65, 5, 3, 'car', '2016-04-19 13:41:37', '2016-04-13', '3', 1, '08:00:00', '17:15:00', '0', '', '', '0', '3', 8, 'Любешівська Воля (мусорнік)', 'Любешівське УВГ', '1', '0', 'other', '1210', '25', '1235', 'db', '1'),
(122, 66, 6, 3, 'car', '2016-04-19 13:43:55', '2016-04-15', '2', 1, '08:00:00', '00:00:00', '0', '', '', '0', '2', 8, 'Люб Воля мусорнік за 12.04.16\r\n\nпальне Кузьміча', 'Любешівське УВГ', '1', '0', 'other', '1235', '16', '1251', 'db', '1'),
(123, 67, 5, 4, 'car', '2016-04-19 13:44:22', '2016-04-18', '4', 1, '08:00:00', '17:15:00', '0', '', '', '2', '4', 8, 'курін', 'Любешівське УВГ', '1', '0', 'other', '3048', '23', '3071', 'db', '1'),
(124, 68, 2, 4, 'car', '2016-04-19 13:45:45', '2016-04-19', '6', 1, '08:00:00', '17:15:00', '0', '', '', '3', '3', 1, 'Мусорнік(поїхав своєю) по залишку від бондара', 'Любешівське УВГ', '1', '0', 'other', '3071', '17', '3088', 'sr', '1'),
(125, 69, 6, 3, 'car', '2016-04-19 13:46:28', '2016-04-19', '30', 1, '08:00:00', '17:15:00', '0', '', '', '0', '30', 10, 'Любешівське УВГ - Ратно\r\n\nобмірка роботи', 'Любешівське УВГ', '1', '0', 'other', '1251', '250', '1501', 'db', '1'),
(126, 29, 2, 2, 'truck', '2016-04-19 13:50:15', '2016-04-01', '0', 3, '08:00:00', '00:00:00', '0', '', '', '0', '0', 2, '№', 'Михалюк', '1', '18', 't', '295', '20', '315', 'sr', '1'),
(127, 30, 5, 1, 'truck', '2016-04-19 14:18:49', '2016-04-01', '0', 3, '08:00:00', '09:00:00', '0', '', '', '0', '0', 1, 'Горщар', 'Горщар', '1', '4', 't', '540', '12', '552', 'sr', '1'),
(128, 31, 6, 7, 'truck', '2016-04-19 14:19:41', '2016-04-01', '0', 3, '08:00:00', '09:00:00', '0', '', '', '0', '0', 1, 'за мин міс №44', 'Мартинчук', '1', '5', 'motogod', '20', '5', '25', 'sr', '1'),
(132, 34, 2, 2, 'truck', '2016-04-19 14:22:37', '2016-04-08', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 3, '№ 48\r\n\n№ 49', 'Бондарчук Комзюк', '1', '48', 't', '325', '40', '365', 'sr', '1'),
(130, 32, 2, 2, 'truck', '2016-04-19 14:21:18', '2016-04-06', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 1, '№47', 'Юрашкевич', '1', '8', 't', '315', '10', '325', 'sr', '1'),
(131, 33, 3, 1, 'truck', '2016-04-19 14:21:58', '2016-04-06', '15', 3, '08:00:00', '17:15:00', '0', '', '', '0', '15', 8, 'дрова лобна', 'Любешівське УВГ', '1', '6', 't', '552', '60', '612', 'sr', '1'),
(133, 35, 2, 2, 'truck', '2016-04-19 14:22:54', '2016-04-11', '25', 3, '08:00:00', '17:15:00', '0', '', '', '0', '25', 1, 'мусорнік Воля Любешівська', 'Любешівське УВГ', '1', '24', 't', '365', '9', '374', 'sr', '1'),
(134, 36, 2, 2, 'truck', '2016-04-19 14:23:13', '2016-04-13', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 8, 'міст лісхоз', 'Любешів Лісхоз', '1', '48', 't', '374', '40', '414', 'sr', '1'),
(135, 37, 6, 7, 'truck', '2016-04-19 14:23:56', '2016-04-14', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 3, 'агроліс', 'Любешів Лісгосп', '1', '3', 'motogod', '25', '5', '30', 'sr', '1'),
(136, 38, 2, 2, 'truck', '2016-04-19 14:24:23', '2016-04-14', '30', 3, '08:00:00', '17:15:00', '0', '', '', '0', '30', 8, 'ремонт греблі', 'Любешівське УВГ', '1', '80', 't', '414', '80', '494', 'pr', '1'),
(137, 39, 2, 2, 'truck', '2016-04-19 14:24:36', '2016-04-15', '40', 3, '08:00:00', '17:15:00', '0', '', '', '0', '40', 8, 'селишна асальт', 'Селишна', '1', '96', 't', '494', '112', '606', 'sr', '1'),
(138, 40, 2, 2, 'truck', '2016-04-19 14:24:52', '2016-04-18', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 2, 'Курін мусорнік', 'Курін ', '1', '48', 't', '606', '11', '617', 'sr', '1'),
(139, 41, 5, 1, 'truck', '2016-04-19 14:25:31', '2016-04-19', '20', 3, '08:00:00', '17:15:00', '0', '', '', '0', '20', 8, 'по дрова з шпанчиком', 'Любешівське УВГ', '1', '6', 't', '672', '80', '752', 'sr', '1'),
(140, 9, 4, 5, 'tractor', '2016-04-19 14:27:05', '2016-04-01', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 4, 'Михалюк', 'Любешівське УВГ', '1', '4', 'motogod', '0', '0', '0', 'sr', '1'),
(141, 10, 4, 5, 'tractor', '2016-04-19 14:27:16', '2016-04-13', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 8, 'Лісгосп', 'Любешівське УВГ', '1', '8', 'motogod', '0', '0', '0', 'sr', '1'),
(142, 11, 4, 5, 'tractor', '2016-04-19 14:27:25', '2016-04-14', '12', 3, '08:00:00', '17:15:00', '0', '', '', '0', '12', 8, 'УВГ', 'Любешівське УВГ', '1', '8', 'motogod', '0', '0', '0', 'pr', '1'),
(143, 12, 11, 11, 'tractor', '2016-04-19 14:27:35', '2016-04-14', '18', 3, '08:00:00', '17:15:00', '0', '', '', '0', '18', 8, 'ремонт греблі', 'Любешівське УВГ', '1', '50', 'm3', '0', '0', '0', 'pr', '1'),
(144, 13, 4, 5, 'tractor', '2016-04-19 14:27:43', '2016-04-15', '25', 3, '08:00:00', '17:15:00', '0', '', '', '0', '25', 8, 'ремонт дамби', 'Любешівське УВГ', '1', '8', 'motogod', '0', '0', '0', 'pr', '1'),
(145, 14, 4, 5, 'tractor', '2016-04-28 10:08:37', '2016-04-21', '0', 3, '08:00:00', '16:00:00', '0', '', '', '0', '0', 7, 'Лісгосп', 'Любешівське УВГ', '1', '7', 'motogod', '', '0', '', 'sr', '1'),
(146, 15, 4, 5, 'tractor', '2016-04-28 10:09:23', '2016-04-22', '0', 3, '08:00:00', '16:00:00', '0', '', '', '0', '0', 7, 'Лісгосп', 'Любешівське УВГ', '1', '7', 'motogod', '', '0', '', 'sr', '1'),
(147, 16, 4, 5, 'tractor', '2016-04-28 10:09:58', '2016-04-25', '0', 3, '08:00:00', '16:00:00', '0', '', '', '0', '0', 7, 'лісгосп', 'Любешівське УВГ', '1', '7', 'motogod', '', '0', '', 'sr', '1'),
(148, 42, 2, 2, 'truck', '2016-04-28 10:40:20', '2016-04-21', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 2, 'курін мусорнік', 'Любешівське УВГ', '1', '28', 't', '617', '10', '627', 'sr', '1'),
(149, 43, 2, 2, 'truck', '2016-04-28 10:41:51', '2016-04-22', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 7, 'лісгосп', 'Любешівське УВГ', '1', '96', 't', '627', '80', '707', 'sr', '1'),
(150, 44, 2, 2, 'truck', '2016-04-28 10:42:30', '2016-04-25', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 7, 'лісгосп', 'Любешів Лісгосп', '1', '96', 't', '707', '80', '787', 'sr', '1'),
(151, 45, 2, 2, 'truck', '2016-04-28 10:44:29', '2016-04-26', '15', 3, '08:00:00', '17:15:00', '0', '', '', '0', '15', 2, 'перевезення екскаватора\r\n\nі транспортування трала', 'Любешівське УВГ', '1', '30', 't', '787', '42', '829', 'sr', '1'),
(152, 40, 5, 1, 'truck', '2016-04-28 10:52:35', '2016-04-15', '15', 3, '08:00:00', '17:15:00', '0', '', '', '0', '15', 8, 'перевезення землі', 'Любешівське УВГ', '1', '28', 't', '612', '60', '672', 'pr', '1'),
(153, 76, 3, 3, 'car', '2016-04-28 11:04:19', '2016-04-25', '5', 1, '08:00:00', '17:15:00', '0', '', '', '0', '7', 8, 'мусорнік', 'Любешівське УВГ', '1', '0', 'other', '1861', '58', '1919', 'sr', '1'),
(154, 77, 3, 3, 'car', '2016-04-28 11:05:39', '2016-04-26', '5', 1, '08:00:00', '12:00:00', '0', '', '', '0', '5', 4, 'мусорнік', 'Любешівське УВГ', '1', '0', 'other', '1919', '41', '1960', 'sr', '1'),
(155, 71, 6, 6, 'car', '2016-04-28 11:10:38', '2016-04-20', '5', 1, '08:00:00', '17:15:00', '0', '', '', '0', '5', 8, 'ремонт ЕТ-16', 'Любешівське УВГ', '1', '0', 'other', '52', '26', '78', 'sr', '1'),
(156, 72, 6, 4, 'car', '2016-04-28 11:11:38', '2016-04-21', '10', 1, '08:00:00', '17:15:00', '0', '', '', '2', '8', 8, 'любешів люблязь', 'Любешівське УВГ', '1', '0', 'other', '3105', '50', '3155', 'db', '1'),
(157, 73, 6, 3, 'car', '2016-04-28 11:12:57', '2016-04-22', '3', 1, '08:00:00', '17:15:00', '0', '', '', '-2', '5', 8, 'любешів деревок', 'Любешівське УВГ', '1', '0', 'other', '1831', '30', '1861', 'db', '1'),
(158, 70, 2, 4, 'car', '2016-04-28 11:22:40', '2016-04-20', '0', 1, '08:00:00', '09:00:00', '0', '', '', '0', '3', 1, 'курін', 'Любешівське УВГ', '1', '0', 'other', '3088', '17', '3105', 'sr', '1'),
(159, 75, 5, 4, 'car', '2016-04-28 11:28:23', '2016-04-25', '0', 1, '08:00:00', '17:15:00', '0', '', '', '1', '10', 8, 'хомутинська нс', 'Любешівське УВГ', '1', '0', 'other', '3219', '58', '3277', 'db', '1'),
(160, 74, 5, 4, 'car', '2016-04-28 11:29:09', '2016-04-22', '20', 1, '08:00:00', '17:15:00', '0', '', '', '11', '11', 8, 'цирська нс', 'Любешівське УВГ', '1', '0', 'other', '3155', '64', '3219', 'db', '1'),
(161, 70, 5, 3, 'car', '2016-04-28 11:29:49', '2016-04-20', '40', 1, '08:00:00', '17:15:00', '0', '', '', '0', '40', 8, 'Луцьк', 'Любешівське УВГ', '1', '0', 'other', '1501', '330', '1831', 'db', '1'),
(162, 17, 4, 5, 'tractor', '2016-05-27 13:31:23', '2016-05-10', '30', 3, '08:00:00', '17:15:00', '3', '', '', '0', '30', 8, 'Дольськ', 'Любешівське УВГ', '1', '0', 'motogod', '', '0', '', 'pr', '1'),
(163, 32, 4, 5, 'tractor', '2016-05-27 13:32:07', '2016-05-18', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 1, 'Шоломітський', 'Любешівське УВГ', '1', '1', 'motogod', '', '0', '', 'sr', '1'),
(164, 48, 2, 2, 'truck', '2016-05-27 13:34:02', '2016-05-05', '10', 3, '08:00:00', '17:15:00', '0', '', '', '0', '10', 8, 'дрова', 'Любешівське УВГ', '1', '8', 'm3', '829', '28', '857', 'sr', '1'),
(165, 49, 2, 2, 'truck', '2016-05-27 13:35:47', '2016-05-10', '40', 3, '08:00:00', '17:15:00', '2', '', '', '0', '40', 8, 'Дольськ\r\n\nперевезення екскаваторів', 'Любешівське УВГ', '1', '52', 't', '857', '80', '937', 'sr', '1'),
(166, 51, 2, 2, 'truck', '2016-05-27 13:38:10', '2016-05-12', '10', 3, '08:00:00', '17:15:00', '0', '', '', '0', '10', 8, 'ремонт н.с. Седлище\r\n\nКузьміч', 'Любешівське УВГ', '1', '0', 't', '937', '30', '967', 'sr', '1'),
(167, 52, 2, 2, 'truck', '2016-05-27 13:39:43', '2016-05-24', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 2, 'Кух 2 год №71', 'Любешівське УВГ', '1', '0', 't', '967', '80', '1047', 'sr', '1'),
(168, 47, 6, 1, 'truck', '2016-05-27 13:42:00', '2016-05-04', '5', 3, '08:00:00', '17:15:00', '0', '', '', '0', '5', 8, 'брикети паливні', 'Любешівське УВГ', '1', '4', 't', '752', '20', '772', 'sr', '1'),
(169, 80, 6, 3, 'car', '2016-05-27 13:42:58', '2016-05-06', '3', 1, '08:00:00', '17:15:00', '0', '', '', '-2', '3', 8, 'автозапчастини\r\n\nСтрук', 'Любешівське УВГ', '1', '0', 'other', '2084', '24', '2108', 'db', '1'),
(170, 50, 3, 1, 'truck', '2016-05-27 13:45:02', '2016-05-10', '15', 3, '08:00:00', '17:15:00', '2', '', '', '0', '15', 8, 'перевезеня вагончика Дольськ', 'Любешівське УВГ', '1', '1', 't', '772', '60', '832', 'sr', '1'),
(171, 78, 3, 3, 'car', '2016-05-27 13:46:47', '2016-05-04', '5', 1, '08:00:00', '17:15:00', '0', '', '', '0', '5', 8, 'Люб - Хоцунь\r\n\nЗімич', 'Любешівське УВГ', '1', '0', 'other', '1960', '42', '2002', 'db', '1'),
(172, 79, 3, 3, 'car', '2016-05-27 13:47:52', '2016-05-05', '10', 1, '08:00:00', '17:15:00', '0', '', '', '0', '10', 8, 'Зімич\r\n\nЛюб - В.Глуша', 'Любешівське УВГ', '1', '0', 'other', '2002', '82', '2084', 'db', '1'),
(183, 84, 3, 6, 'car', '2016-05-27 14:06:30', '2016-05-11', '10', 1, '08:00:00', '17:15:00', '0', '', '', '0', '10', 8, 'Любешів - Дольськ', 'Любешівське УВГ', '1', '0', 'other', '78', '83', '161', 'sr', '1'),
(174, 88, 3, 3, 'car', '2016-05-27 13:50:50', '2016-05-16', '10', 1, '08:00:00', '17:15:00', '0', '', '', '0', '10', 8, 'Любешів - Дольськ\r\n\nКузьміч', 'Любешівське УВГ', '1', '0', 'other', '2108', '83', '2191', 'db', '1'),
(175, 89, 3, 3, 'car', '2016-05-27 13:51:44', '2016-05-17', '10', 1, '08:00:00', '17:15:00', '0', '', '', '3', '7', 8, 'Любешів - Дольськ', 'Любешівське УВГ', '1', '0', 'other', '2191', '58', '2249', 'sr', '1'),
(176, 90, 3, 3, 'car', '2016-05-27 13:52:42', '2016-05-18', '5', 1, '08:00:00', '17:15:00', '0', '', '', '0', '8', 8, 'Любешів - Дольськ', 'Любешівське УВГ', '1', '0', 'other', '2249', '66', '2315', 'sr', '1'),
(177, 93, 3, 3, 'car', '2016-05-27 13:53:24', '2016-05-20', '7', 1, '08:00:00', '17:15:00', '0', '', '', '0', '7', 8, 'Любешів - Дольськ', 'Любешівське УВГ', '1', '0', 'other', '2373', '58', '2431', 'sr', '1'),
(178, 95, 3, 3, 'car', '2016-05-27 13:54:31', '2016-05-23', '10', 1, '08:00:00', '17:15:00', '0', '', '', '3', '7', 8, 'Любешів - Дольськ', 'Любешівське УВГ', '1', '0', 'other', '2431', '58', '2489', 'sr', '1'),
(179, 97, 3, 3, 'car', '2016-05-27 13:56:12', '2016-05-24', '20', 1, '08:00:00', '17:15:00', '0', '', '', '0', '23', 9, 'Шпанчик', 'Любешівське УВГ', '1', '0', 'other', '2489', '190', '2679', 'sr', '1'),
(180, 98, 3, 3, 'car', '2016-05-27 13:57:10', '2016-05-25', '10', 1, '08:00:00', '17:15:00', '0', '', '', '3', '7', 8, 'Любешів - Дольськ', 'Любешівське УВГ', '1', '0', 'other', '2679', '58', '2737', 'sr', '1'),
(181, 99, 3, 3, 'car', '2016-05-27 13:57:56', '2016-05-26', '7', 1, '08:00:00', '17:15:00', '0', '', '', '3', '7', 8, 'Любешів - Дольськ', 'Любешівське УВГ', '1', '0', 'other', '2737', '58', '2795', 'sr', '1'),
(182, 101, 3, 3, 'car', '2016-05-27 13:58:26', '2016-05-27', '7', 1, '08:00:00', '17:15:00', '0', '', '', '3', '7', 8, 'Любешів - Дольськ', 'Любешівське УВГ', '1', '0', 'other', '2795', '58', '2853', 'sr', '1'),
(184, 81, 5, 4, 'car', '2016-05-27 14:13:12', '2016-05-06', '5', 1, '08:00:00', '17:15:00', '0', '', '', '1', '5', 8, 'Люб Підкормілля', 'Любешівське УВГ', '1', '0', 'other', '3277', '30', '3307', 'pr', '1'),
(185, 82, 5, 4, 'car', '2016-05-27 14:14:12', '2016-05-10', '25', 1, '08:00:00', '17:15:00', '0', '', '', '14', '12', 8, 'Люб Хоцунь Дольськ', 'Любешівське УВГ', '1', '0', 'other', '3307', '70', '3377', 'db', '1'),
(186, 83, 5, 4, 'car', '2016-05-27 14:15:00', '2016-05-11', '25', 1, '08:00:00', '17:15:00', '0', '', '', '13', '26', 8, 'Любешів - Люблязь', 'Любешівське УВГ', '1', '0', 'other', '3377', '151', '3528', 'db', '1'),
(187, 85, 5, 4, 'car', '2016-05-27 14:16:06', '2016-05-12', '15', 1, '08:00:00', '17:15:00', '0', '', '', '20', '8', 8, 'Люб - Дольськ', 'Любешівське УВГ', '1', '0', 'other', '3528', '54', '3582', 'db', '1'),
(188, 86, 5, 4, 'car', '2016-05-27 14:16:58', '2016-05-13', '0', 1, '08:00:00', '17:15:00', '0', '', '', '15', '5', 8, 'Люб - Седлище', 'Любешівське УВГ', '1', '0', 'other', '3582', '30', '3612', 'db', '1'),
(189, 87, 5, 4, 'car', '2016-05-27 14:17:53', '2016-05-16', '10', 1, '08:00:00', '17:15:00', '0', '', '', '16', '9', 8, 'Люб - Дольськ', 'Любешівське УВГ', '1', '0', 'other', '3612', '54', '3666', 'sr', '1'),
(190, 91, 5, 4, 'car', '2016-05-27 14:18:51', '2016-05-18', '4', 1, '08:00:00', '17:15:00', '0', '', '', '17', '3', 8, 'Люб - Зарудче\r\n\nСтрук', 'Любешівське УВГ', '1', '0', 'other', '3666', '18', '3684', 'db', '1'),
(191, 92, 5, 3, 'car', '2016-05-27 14:19:35', '2016-05-19', '7', 1, '08:00:00', '17:15:00', '0', '', '', '0', '7', 8, 'Любешів - Дольськ', 'Любешівське УВГ', '1', '0', 'other', '2315', '58', '2373', 'sr', '1'),
(192, 94, 5, 4, 'car', '2016-05-27 14:20:43', '2016-05-20', '3', 1, '08:00:00', '17:15:00', '0', '', '', '16', '4', 8, 'Люб - Заріка', 'Любешівське УВГ', '1', '0', 'other', '3684', '24', '3708', 'db', '1'),
(193, 96, 5, 4, 'car', '2016-05-27 14:21:33', '2016-05-23', '2', 1, '08:00:00', '17:15:00', '0', '', '', '8', '10', 8, 'Люб - Цир', 'Любешівське УВГ', '1', '0', 'other', '3708', '58', '3766', 'db', '1'),
(194, 100, 5, 4, 'car', '2016-05-27 14:22:18', '2016-05-26', '47', 1, '08:00:00', '17:15:00', '0', '', '', '15', '40', 8, 'Люб - Ратно', 'Любешівське УВГ', '1', '0', 'other', '3766', '230', '3996', 'db', '1'),
(195, 41, 8, 12, 'tractor', '2016-05-31 13:29:11', '2016-05-25', '10', 3, '08:00:00', '17:15:00', '0', '', '', '0', '10', 8, 'дольськ пот рем\r\n\nшпанчик', 'Любешівське УВГ', '1', '0', 'motogod', '', '0', '', 'pr', '1'),
(196, 102, 5, 4, 'car', '2016-06-24 12:44:14', '2016-06-01', '40', 1, '08:00:00', '17:15:00', '0', '', '', '3', '52', 8, 'Любешів - Луцьк', 'Любешівське УВГ', '1', '0', 'other', '3996', '298', '4294', 'db', '1'),
(197, 104, 5, 4, 'car', '2016-06-24 12:45:14', '2016-06-02', '10', 1, '08:00:00', '17:15:00', '0', '', '', '5', '8', 8, 'Любешів - Цир', 'Любешівське УВГ', '1', '0', 'other', '4294', '46', '4340', 'db', '1'),
(198, 108, 5, 4, 'car', '2016-06-24 12:46:13', '2016-06-03', '0', 1, '08:00:00', '17:15:00', '0', '', '', '3', '2', 8, 'Агроремаш', 'Любешівське УВГ', '1', '0', 'other', '4340', '12', '4352', 'db', '1'),
(199, 109, 5, 4, 'car', '2016-06-24 12:46:50', '2016-06-06', '10', 1, '08:00:00', '17:15:00', '0', '', '', '4', '9', 8, 'Седлище', 'Любешівське УВГ', '1', '0', 'other', '4352', '52', '4404', 'db', '1'),
(200, 120, 5, 4, 'car', '2016-06-24 12:47:42', '2016-06-16', '10', 1, '08:00:00', '17:15:00', '0', '', '', '6', '8', 8, 'Хоцунь', 'Любешівське УВГ', '1', '0', 'other', '4404', '46', '4450', 'db', '1'),
(201, 123, 1, 6, 'car', '2016-06-24 12:49:23', '2016-06-21', '40', 1, '08:00:00', '17:15:00', '0', '', '', '0', '40', 11, 'Ковель', 'Любешівське УВГ', '1', '0', 'other', '275', '208', '483', 'db', '1'),
(202, 118, 1, 6, 'car', '2016-06-24 12:50:55', '2016-06-16', '10', 1, '08:00:00', '17:15:00', '0', '', '', '0', '10', 8, 'Дольськ\r\n\nпо системі', 'Любешівське УВГ', '1', '0', 'other', '213', '52', '265', 'sr', '1'),
(203, 117, 1, 6, 'car', '2016-06-24 12:51:59', '2016-06-15', '10', 1, '08:00:00', '17:15:00', '0', '', '', '0', '10', 8, 'Любешів - Дольськ\r\n\n', 'Любешівське УВГ', '1', '0', 'other', '161', '52', '213', 'sr', '1'),
(204, 63, 1, 1, 'truck', '2016-06-24 12:53:35', '2016-06-10', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 8, 'Бас № 79', 'Бас', '1', '40', 't', '934', '50', '984', 'sr', '1'),
(205, 58, 1, 1, 'truck', '2016-06-24 12:55:39', '2016-06-08', '25', 3, '08:00:00', '17:15:00', '0', '', '', '0', '25', 9, 'Перевезення трансформатора', 'Любешівське УВГ', '1', '6', 't', '832', '102', '934', 'sr', '1'),
(206, 122, 6, 6, 'car', '2016-06-24 12:57:50', '2016-06-17', '2', 1, '08:00:00', '17:15:00', '0', '', '', '0', '2', 8, 'по місту', 'Любешівське УВГ', '1', '0', 'other', '265', '10', '275', 'db', '1'),
(207, 59, 6, 7, 'truck', '2016-06-24 12:59:14', '2016-06-08', '30', 3, '08:00:00', '17:15:00', '0', '', '', '2', '28', 8, 'трансформатор', 'Любешівське УВГ', '1', '2', 't', '30', '40', '70', 'sr', '1'),
(208, 46, 4, 5, 'tractor', '2016-06-24 13:01:00', '2016-06-10', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 8, 'Бас 79', 'Бас', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(209, 49, 4, 5, 'tractor', '2016-06-24 13:01:52', '2016-06-13', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 4, 'Божко АМ', 'Божко А.М.', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(210, 56, 8, 12, 'tractor', '2016-06-24 13:03:48', '2016-06-16', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 4, 'Жилко 84', 'Жилко В.В,', '1', '148', 'm3', '', '0', '', 'sr', '1'),
(211, 54, 8, 12, 'tractor', '2016-06-24 13:05:11', '2016-06-15', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 8, 'Швайко ', 'Швайко', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(212, 51, 8, 12, 'tractor', '2016-06-24 13:06:12', '2016-06-13', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 8, 'Набайчик №81', 'Набайчик', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(213, 68, 2, 2, 'truck', '2016-06-24 13:11:11', '2016-06-16', '15', 3, '08:00:00', '17:15:00', '0', '', '', '0', '15', 8, 'Кух в.І. 1 год\r\n\nШпанчик 1 год', 'Кух В.І. Любешівське УВГ', '1', '7', 't', '1222', '44', '1266', 'sr', '1'),
(214, 67, 2, 2, 'truck', '2016-06-24 13:12:10', '2016-06-15', '13', 3, '08:00:00', '17:15:00', '0', '', '', '0', '13', 8, 'дольськ', 'Любешівське УВГ', '1', '7', 't', '1182', '40', '1222', 'sr', '1'),
(215, 64, 2, 2, 'truck', '2016-06-24 13:14:34', '2016-06-13', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 7, 'Набайчик А.А. №81', 'Набайчик А.А.', '1', '12', 't', '1142', '40', '1182', 'sr', '1'),
(216, 60, 2, 2, 'truck', '2016-06-24 13:15:54', '2016-06-10', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '20', 9, 'с. Віл', 'Любешівське УВГ', '1', '33', 't', '1082', '60', '1142', 'sr', '1'),
(217, 55, 2, 2, 'truck', '2016-06-24 13:16:44', '2016-06-08', '30', 3, '08:00:00', '17:15:00', '0', '', '', '20', '10', 9, 'с.Віл', 'Любешівське УВГ', '1', '31', 't', '1067', '15', '1082', 'sr', '1'),
(218, 53, 2, 2, 'truck', '2016-06-24 13:18:50', '2016-06-01', '0', 3, '08:00:00', '17:15:00', '0', '', '', '0', '0', 2, 'Лебеля Р.І.', 'Лебеля Р.І.', '1', '16', 't', '1047', '20', '1067', 'sr', '1'),
(219, 103, 3, 3, 'car', '2016-06-29 10:41:05', '2016-06-01', '5', 1, '08:00:00', '17:15:00', '0', '', '', '3', '5', 8, '1', 'Любешівське УВГ', '1', '0', 'other', '2853', '41', '2894', 'db', '1'),
(220, 106, 3, 3, 'car', '2016-06-29 10:44:16', '2016-06-02', '0', 1, '08:00:00', '17:15:00', '0', '', '', '0', '3', 8, '1', 'Любешівське УВГ', '1', '0', 'other', '2894', '25', '2919', 'db', '1'),
(221, 107, 3, 3, 'car', '2016-06-29 10:48:35', '2016-06-03', '5', 1, '08:00:00', '17:15:00', '0', '', '', '0', '5', 8, '1', 'Любешівське УВГ', '1', '0', 'other', '2919', '41', '2960', 'db', '1'),
(222, 110, 3, 3, 'car', '2016-06-29 10:49:18', '2016-06-06', '5', 1, '08:00:00', '17:15:00', '0', '', '', '0', '5', 8, '1', 'Любешівське УВГ', '1', '0', 'other', '2960', '41', '3001', 'db', '1'),
(223, 111, 3, 3, 'car', '2016-06-29 10:50:06', '2016-06-08', '5', 1, '08:00:00', '17:15:00', '0', '', '', '0', '5', 8, 'Віл', 'Любешівське УВГ', '1', '0', 'other', '3001', '40', '3041', 'sr', '1'),
(224, 112, 3, 3, 'car', '2016-06-29 10:50:46', '2016-06-09', '5', 1, '08:00:00', '17:15:00', '0', '', '', '0', '5', 8, 'Віл', 'Любешівське УВГ', '1', '0', 'other', '3041', '40', '3081', 'sr', '1'),
(225, 113, 3, 3, 'car', '2016-06-29 10:51:28', '2016-06-10', '5', 1, '08:00:00', '17:15:00', '0', '', '', '0', '5', 8, 'Віл', 'Любешівське УВГ', '1', '0', 'other', '3081', '40', '3121', 'sr', '1'),
(226, 114, 3, 3, 'car', '2016-06-29 10:52:13', '2016-06-13', '2', 1, '08:00:00', '17:15:00', '0', '', '', '0', '2', 8, '1', 'Любешівське УВГ', '1', '0', 'other', '3121', '16', '3137', 'sr', '1'),
(227, 115, 3, 3, 'car', '2016-06-29 10:52:53', '2016-06-14', '2', 1, '08:00:00', '17:15:00', '0', '', '', '0', '2', 8, '1', 'Любешівське УВГ', '1', '0', 'other', '3137', '16', '3153', 'sr', '1'),
(228, 116, 3, 3, 'car', '2016-06-29 10:54:31', '2016-06-15', '8', 1, '08:00:00', '17:15:00', '0', '', '', '1', '7', 8, 'Богдан', 'Любешівське УВГ', '1', '0', 'other', '3153', '58', '3211', 'sr', '1'),
(229, 119, 3, 3, 'car', '2016-06-29 10:55:08', '2016-06-16', '6', 1, '08:00:00', '17:15:00', '0', '', '', '0', '7', 8, 'Богдан', 'Любешівське УВГ', '1', '0', 'other', '3211', '58', '3269', 'sr', '1'),
(230, 121, 3, 3, 'car', '2016-06-29 10:55:42', '2016-06-17', '7', 1, '08:00:00', '17:15:00', '0', '', '', '0', '7', 8, 'Богдан', 'Любешівське УВГ', '1', '0', 'other', '3269', '58', '3327', 'sr', '1'),
(231, 124, 3, 3, 'car', '2016-06-29 10:56:50', '2016-06-22', '10', 1, '08:00:00', '17:15:00', '0', '', '', '3', '7', 8, 'Богдан', 'Любешівське УВГ', '1', '0', 'other', '3327', '58', '3385', 'sr', '1'),
(232, 125, 3, 3, 'car', '2016-06-29 10:57:37', '2016-06-23', '4', 1, '08:00:00', '17:15:00', '0', '', '', '0', '7', 8, 'Богдан', 'Любешівське УВГ', '1', '0', 'other', '3385', '58', '3443', 'sr', '1'),
(233, 126, 3, 3, 'car', '2016-06-29 10:59:52', '2016-06-24', '7', 1, '08:00:00', '17:15:00', '0', '', '', '0', '7', 8, 'Богдан', 'Любешівське УВГ', '1', '0', 'other', '3443', '58', '3501', 'sr', '1'),
(234, 127, 3, 3, 'car', '2016-06-29 11:00:38', '2016-06-29', '1', 1, '08:00:00', '17:15:00', '0', '', '', '0', '1', 8, 'Начальник і Зімиіч і Богдан', 'Любешівське УВГ', '1', '0', 'other', '3501', '8', '3509', 'sr', '1'),
(235, 128, 3, 3, 'car', '2016-06-29 11:01:07', '2016-06-30', '0', 1, '08:00:00', '17:15:00', '0', '', '', '0', '0', 8, 'Без пального', 'Любешівське УВГ', '1', '0', 'other', '3509', '0', '3509', 'sr', '1'),
(236, 0, 1, 6, 'car', '2016-06-29 11:15:15', '2015-12-31', '3', 1, '08:00:00', '17:15:00', '0', '', '', '0', '0', 0, 'Фіктивна путівка', 'Любешівське УВГ', '1', '0', 'other', '0', '0', '0', 'sr', '1'),
(237, 42, 10, 9, 'tractor', '2016-06-30 15:24:54', '2016-06-08', '40', 3, '08:00:00', '17:15:00', '0', '', '', '0', '40', 8, '1', 'Любешівське УВГ', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(238, 43, 11, 11, 'tractor', '2016-06-30 15:30:04', '2016-06-08', '50', 3, '08:00:00', '17:15:00', '1', '', '', '0', '50', 8, '1', 'Любешівське УВГ', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(239, 44, 10, 9, 'tractor', '2016-06-30 15:30:50', '2016-06-09', '40', 3, '08:00:00', '17:15:00', '0', '', '', '0', '40', 8, '1', 'Любешівське УВГ', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(240, 45, 11, 11, 'tractor', '2016-06-30 15:31:32', '2016-06-09', '40', 3, '08:00:00', '17:15:00', '0', '', '', '0', '40', 8, '1', 'Любешівське УВГ', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(241, 47, 11, 11, 'tractor', '2016-06-30 15:32:08', '2016-06-10', '10', 3, '08:00:00', '17:15:00', '0', '', '', '0', '10', 8, '1', 'Любешівське УВГ', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(242, 48, 10, 9, 'tractor', '2016-06-30 15:32:55', '2016-06-10', '20', 3, '08:00:00', '17:15:00', '0', '', '', '0', '20', 8, '1', 'Любешівське УВГ', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(243, 58, 10, 9, 'tractor', '2016-06-30 15:35:21', '2016-06-17', '40', 3, '08:00:00', '17:15:00', '0', '', '', '0', '40', 8, '1', 'Любешівське УВГ', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(244, 57, 10, 9, 'tractor', '2016-06-30 15:35:51', '2016-06-16', '40', 3, '08:00:00', '17:15:00', '0', '', '', '0', '40', 8, '1', 'Любешівське УВГ', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(245, 52, 10, 9, 'tractor', '2016-06-30 15:36:16', '2016-06-15', '40', 3, '08:00:00', '17:15:00', '0', '', '', '0', '40', 8, '1', 'Любешівське УВГ', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(246, 50, 10, 9, 'tractor', '2016-06-30 15:36:44', '2016-06-14', '30', 3, '08:00:00', '17:15:00', '0', '', '', '0', '30', 0, '1', 'Любешівське УВГ', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(247, 55, 11, 11, 'tractor', '2016-06-30 15:37:14', '2016-06-16', '50', 3, '08:00:00', '17:15:00', '0', '', '', '0', '50', 8, '1', 'Любешівське УВГ', '1', '0', 'm3', '', '0', '', 'sr', '1'),
(248, 53, 11, 11, 'tractor', '2016-06-30 15:38:02', '2016-06-15', '47', 3, '08:00:00', '17:15:00', '0', '', '', '0', '47', 8, '1', 'Любешівське УВГ', '1', '0', 'm3', '', '0', '', 'sr', '1');

-- --------------------------------------------------------

--
-- Структура таблиці `route_list`
--

CREATE TABLE `route_list` (
  `id` int(11) UNSIGNED NOT NULL,
  `number` int(6) UNSIGNED NOT NULL COMMENT 'Номер шляхового листа',
  `driver_id` int(6) UNSIGNED NOT NULL COMMENT 'Водій',
  `transport_id` int(6) UNSIGNED NOT NULL COMMENT 'Транспорт',
  `type` enum('car','tractor','truck') NOT NULL COMMENT 'Тип шляхового листа',
  `datego` date NOT NULL COMMENT 'Дата путівки',
  `worked` float UNSIGNED NOT NULL COMMENT 'Відпрацьовано(год)',
  `speedometerdeparture` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Показник спідометра при виїзді',
  `kilometrage` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Кілометраж',
  `speedometerreturn` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Показник спідометра при поверненні',
  `payment` enum('db','sr','pr') NOT NULL DEFAULT 'sr' COMMENT 'Оплата(с.р., д.б)',
  `note` mediumtext COMMENT 'Додаткові відмітки про рух траспорту',
  `date` datetime NOT NULL COMMENT 'Дата внесення в бд путівки',
  `valid` enum('1','0') NOT NULL DEFAULT '1' COMMENT 'Чи дійсна путівка',
  `completed` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Шляхові листи';

--
-- Дамп даних таблиці `route_list`
--

INSERT INTO `route_list` (`id`, `number`, `driver_id`, `transport_id`, `type`, `datego`, `worked`, `speedometerdeparture`, `kilometrage`, `speedometerreturn`, `payment`, `note`, `date`, `valid`, `completed`) VALUES
(1, 1, 5, 4, 'car', '2016-01-04', 8, 0, 104, 104, 'db', 'По любешові', '2016-07-20 23:33:22', '1', '1'),
(2, 1, 2, 2, 'truck', '2016-01-12', 0, 0, 0, 0, 'sr', 'Перевезення ЕТ-16 з Седлищ', '2016-07-20 23:33:21', '0', '1'),
(3, 1, 4, 5, 'tractor', '2016-01-11', 8, 0, 0, 0, 'db', 'Чистка території від снігу', '2016-01-19 16:07:59', '1', '1'),
(4, 2, 3, 3, 'car', '2016-01-04', 8, 0, 42, 42, 'db', 'Кузьміч на насосну', '2016-07-20 23:33:21', '1', '1'),
(5, 2, 1, 1, 'truck', '2016-01-12', 8, 0, 30, 30, 'pr', 'Привезення пілетів', '2016-01-19 16:02:48', '1', '1'),
(6, 2, 4, 5, 'tractor', '2016-01-18', 8, 0, 0, 0, 'db', 'Очистка території від снігу', '2016-01-19 16:08:36', '1', '1'),
(7, 3, 3, 3, 'car', '2016-01-05', 0, 42, 0, 42, 'sr', 'Кузьміч', '2016-07-20 23:33:21', '0', '1'),
(8, 3, 1, 1, 'truck', '2016-01-13', 8, 30, 26, 56, 'db', 'Привезення пілетів 4,3 т', '2016-07-20 23:33:21', '1', '1'),
(9, 3, 4, 5, 'tractor', '2016-01-22', 8, 0, 0, 0, 'db', 'Згортання снігу', '2016-03-03 13:31:56', '1', '1'),
(10, 4, 5, 4, 'car', '2016-01-05', 8, 104, 54, 158, 'db', 'По Любешові', '2016-07-20 23:33:22', '1', '1'),
(11, 4, 1, 1, 'truck', '2016-02-04', 8, 56, 56, 112, 'sr', 'Любешів - Дольськ', '2016-07-20 23:33:21', '1', '1'),
(12, 4, 4, 5, 'tractor', '2016-02-17', 8, 0, 0, 0, 'db', 'Любешів - Цир - Любешів', '2016-03-02 17:09:47', '1', '1'),
(13, 5, 5, 4, 'car', '2016-01-12', 8, 158, 300, 458, 'db', 'По Любешові', '2016-07-20 23:33:22', '1', '1'),
(14, 5, 2, 2, 'truck', '2016-02-02', 8, 0, 40, 40, 'sr', 'Бас', '2016-07-20 23:33:21', '1', '1'),
(15, 5, 4, 5, 'tractor', '2016-03-18', 2, 0, 0, 0, 'sr', '№ 35\r\n\nМихалюк Г.О.', '2016-03-25 12:09:16', '1', '1'),
(16, 6, 5, 4, 'car', '2016-01-13', 8, 458, 300, 758, 'db', 'Начальнік', '2016-07-20 23:33:22', '1', '1'),
(17, 6, 2, 2, 'truck', '2016-02-04', 8, 40, 50, 90, 'sr', 'Бас', '2016-07-20 23:33:21', '1', '1'),
(18, 6, 4, 5, 'tractor', '2016-03-23', 8, 0, 0, 0, 'pr', 'Любешів - Підкормільська н.с.\r\n\n6 м3 погрузка грунту 2,4 мгод', '2016-03-25 12:10:59', '1', '1'),
(19, 7, 5, 4, 'car', '2016-01-22', 8, 758, 36, 794, 'db', 'Нач', '2016-07-20 23:33:22', '1', '1'),
(20, 7, 2, 2, 'truck', '2016-02-05', 8, 90, 20, 110, 'sr', 'Бас', '2016-07-20 23:33:21', '1', '1'),
(21, 7, 4, 5, 'tractor', '2016-03-25', 5, 0, 0, 0, 'db', 'буксирування екскаватора', '2016-03-25 12:12:52', '1', '1'),
(22, 8, 2, 3, 'car', '2016-01-25', 8, 42, 8, 50, 'db', 'Автозапчастини', '2016-07-20 23:33:21', '1', '1'),
(23, 8, 1, 1, 'truck', '2016-02-04', 8, 112, 56, 168, 'pr', 'потрібно доповнити', '2016-07-20 23:33:21', '1', '1'),
(24, 8, 4, 5, 'tractor', '2016-03-25', 2, 0, 0, 0, 'sr', 'Михалюк\r\n\n2 год х 176 = 352', '2016-03-25 12:13:56', '1', '1'),
(25, 9, 5, 4, 'car', '2016-01-25', 8, 794, 42, 836, 'db', 'начч', '2016-07-20 23:33:22', '1', '1'),
(26, 9, 2, 2, 'truck', '2016-02-09', 8, 110, 25, 135, 'sr', 'найм', '2016-07-20 23:33:21', '1', '1'),
(27, 9, 4, 5, 'tractor', '2016-04-01', 4, 0, 0, 0, 'sr', 'Михалюк', '2016-04-19 14:27:05', '1', '1'),
(28, 10, 1, 1, 'truck', '2016-02-09', 8, 168, 40, 208, 'sr', 'Любешів - Підкормільська н.с.', '2016-07-20 23:33:21', '1', '1'),
(29, 10, 5, 4, 'car', '2016-01-26', 8, 836, 28, 864, 'db', 'нач', '2016-07-20 23:33:22', '1', '1'),
(30, 10, 4, 5, 'tractor', '2016-04-13', 8, 0, 0, 0, 'sr', 'Лісгосп', '2016-04-19 14:27:16', '1', '1'),
(31, 11, 2, 3, 'car', '2016-02-01', 8, 50, 17, 67, 'db', 'Автозапчастини', '2016-07-20 23:33:21', '1', '1'),
(32, 11, 4, 5, 'tractor', '2016-04-14', 8, 0, 0, 0, 'pr', 'УВГ', '2016-04-19 14:27:25', '1', '1'),
(33, 12, 5, 4, 'car', '2016-02-01', 8, 864, 60, 924, 'db', 'по системі', '2016-07-20 23:33:22', '1', '1'),
(34, 12, 2, 2, 'truck', '2016-02-17', 8, 135, 56, 191, 'pr', 'дописати', '2016-07-20 23:33:21', '1', '1'),
(35, 12, 11, 11, 'tractor', '2016-04-14', 8, 0, 0, 0, 'pr', 'ремонт греблі', '2016-04-19 14:27:35', '1', '1'),
(36, 13, 1, 1, 'truck', '2016-02-18', 8, 208, 56, 264, 'pr', 'Любешів - Дольська н.с', '2016-07-20 23:33:21', '1', '1'),
(37, 13, 6, 3, 'car', '2016-02-02', 8, 67, 41, 108, 'db', 'люб - люблязь кузьміч', '2016-07-20 23:33:22', '1', '1'),
(38, 13, 4, 5, 'tractor', '2016-04-15', 8, 0, 0, 0, 'pr', 'ремонт дамби', '2016-04-19 14:27:43', '1', '1'),
(39, 14, 1, 1, 'truck', '2016-02-19', 8, 264, 11, 275, 'pr', 'Любешів - Підкормільська н.с.', '2016-07-20 23:33:21', '1', '1'),
(40, 14, 5, 4, 'car', '2016-02-02', 8, 924, 18, 942, 'db', 'Любешівська н.с.', '2016-07-20 23:33:22', '1', '1'),
(41, 14, 4, 5, 'tractor', '2016-04-21', 7, 0, 0, 0, 'sr', 'Лісгосп', '2016-04-28 10:08:37', '1', '1'),
(42, 15, 5, 4, 'car', '2016-02-03', 8, 942, 12, 954, 'db', 'автозапчастини', '2016-07-20 23:33:22', '1', '1'),
(43, 15, 1, 1, 'truck', '2016-03-01', 8, 275, 45, 320, 'pr', 'УВГ - Коростинка - Дольськ', '2016-07-20 23:33:21', '1', '1'),
(44, 15, 4, 5, 'tractor', '2016-04-22', 7, 0, 0, 0, 'sr', 'Лісгосп', '2016-04-28 10:09:23', '1', '1'),
(45, 16, 5, 4, 'car', '2016-02-04', 8, 954, 30, 984, 'db', 'Любешів - Підкормільська н.с.', '2016-07-20 23:33:22', '1', '1'),
(46, 16, 2, 2, 'truck', '2016-03-09', 8, 191, 84, 275, 'sr', 'Чергування бурштин', '2016-07-20 23:33:21', '1', '1'),
(47, 16, 4, 5, 'tractor', '2016-04-25', 7, 0, 0, 0, 'sr', 'лісгосп', '2016-04-28 10:09:58', '1', '1'),
(48, 17, 2, 3, 'car', '2016-02-04', 8, 108, 17, 125, 'db', 'Автозап', '2016-07-20 23:33:22', '1', '1'),
(49, 17, 1, 1, 'truck', '2016-03-11', 8, 320, 39, 359, 'pr', 'увг - партизанська\r\n\nнасоси', '2016-07-20 23:33:21', '1', '1'),
(50, 17, 4, 5, 'tractor', '2016-05-10', 8, 0, 0, 0, 'pr', 'Дольськ', '2016-05-27 13:31:23', '1', '1'),
(51, 18, 5, 4, 'car', '2016-02-05', 8, 984, 12, 996, 'db', '1', '2016-07-20 23:33:22', '1', '1'),
(52, 18, 1, 1, 'truck', '2016-03-12', 8, 359, 39, 398, 'pr', 'перевезення компресора', '2016-07-20 23:33:21', '1', '1'),
(53, 19, 5, 4, 'car', '2016-02-08', 8, 996, 54, 1050, 'db', '1', '2016-07-20 23:33:22', '1', '1'),
(54, 19, 1, 1, 'truck', '2016-03-14', 8, 398, 51, 449, 'pr', '2 насаси \r\n\nУВГ - Коростинка -Дольськ', '2016-07-20 23:33:21', '1', '1'),
(55, 20, 5, 4, 'car', '2016-02-09', 8, 1050, 18, 1068, 'db', 'дописати', '2016-07-20 23:33:22', '1', '1'),
(56, 20, 6, 7, 'truck', '2016-03-16', 4, 0, 5, 5, 'sr', '№ 26 від 15.03.16\r\n\r\n272 грн\r\n\r\nМартинчук Г.І.', '2016-07-20 23:33:22', '1', '1'),
(57, 21, 5, 4, 'car', '2016-02-11', 8, 1068, 36, 1104, 'db', 'дописати', '2016-07-20 23:33:22', '1', '1'),
(58, 21, 2, 2, 'truck', '2016-03-18', 2, 275, 20, 295, 'sr', '№ 35 від 18.03.16\r\n\n2 год\r\n\nМихалюк Г.О.', '2016-07-20 23:33:21', '1', '1'),
(59, 22, 5, 4, 'car', '2016-02-12', 8, 1104, 300, 1404, 'db', 'дописати', '2016-07-20 23:33:22', '1', '1'),
(60, 22, 6, 7, 'truck', '2016-03-18', 0, 5, 10, 15, 'sr', '№ 36\r\n\r\n1,5 год\r\n\r\nПанчишин Б.І.', '2016-07-20 23:33:22', '1', '1'),
(61, 23, 5, 4, 'car', '2016-02-15', 8, 1404, 64, 1468, 'db', 'дописати', '2016-07-20 23:33:22', '1', '1'),
(62, 23, 1, 1, 'truck', '2016-03-18', 0, 449, 10, 459, 'sr', '№ 36\r\n\n1,5 год\r\n\nПанчишин Б.І.', '2016-07-20 23:33:21', '1', '1'),
(63, 24, 5, 4, 'car', '2016-02-17', 8, 1468, 24, 1492, 'db', 'дописати', '2016-07-20 23:33:22', '1', '1'),
(64, 24, 6, 7, 'truck', '2016-03-22', 1, 15, 10, 25, 'sr', '№ 37\r\n\r\n1 год\r\n\r\nЛюбешів_комфорт Сервіс', '2016-07-20 23:33:22', '1', '1'),
(65, 25, 5, 4, 'car', '2016-02-22', 8, 1492, 64, 1556, 'db', 'дописати', '2016-07-20 23:33:22', '1', '1'),
(66, 25, 3, 1, 'truck', '2016-03-23', 0, 459, 81, 540, 'pr', 'по дрова', '2016-07-20 23:33:21', '1', '1'),
(67, 26, 3, 3, 'car', '2016-02-23', 8, 125, 58, 183, 'db', 'дописати', '2016-07-20 23:33:22', '1', '1'),
(68, 27, 3, 3, 'car', '2016-02-24', 8, 183, 16, 199, 'db', 'дописати', '2016-07-20 23:33:22', '1', '1'),
(69, 28, 3, 3, 'car', '2016-02-25', 8, 199, 25, 224, 'db', 'дописати', '2016-07-20 23:33:22', '1', '1'),
(70, 29, 6, 6, 'car', '2016-02-12', 8, 0, 52, 52, 'db', 'списання залишку за ратно', '2016-07-20 23:33:22', '1', '1'),
(71, 29, 2, 2, 'truck', '2016-04-01', 2, 295, 20, 315, 'sr', '№', '2016-07-20 23:33:21', '1', '1'),
(72, 30, 5, 4, 'car', '2016-03-01', 8, 1556, 48, 1604, 'db', 'перевірка роботи мнс іотто, визначення стану\r\n\nКрисько В.І.', '2016-07-20 23:33:22', '1', '1'),
(73, 30, 5, 1, 'truck', '2016-04-01', 1, 540, 12, 552, 'sr', 'Горщар', '2016-07-20 23:33:21', '1', '1'),
(74, 31, 5, 4, 'car', '2016-03-02', 8, 1604, 12, 1616, 'db', 'УВГ - Любешів нст', '2016-07-20 23:33:22', '1', '1'),
(75, 31, 6, 7, 'truck', '2016-04-01', 1, 25, 5, 30, 'sr', 'за мин міс №44', '2016-07-20 23:33:22', '1', '1'),
(76, 32, 5, 4, 'car', '2016-03-03', 8, 1616, 12, 1628, 'db', 'перевірка роботи МНС визначення обємів робіт', '2016-07-20 23:33:22', '0', '1'),
(77, 32, 2, 2, 'truck', '2016-04-06', 1, 315, 10, 325, 'sr', '№47', '2016-07-20 23:33:21', '1', '1'),
(78, 32, 4, 5, 'tractor', '2016-05-18', 1, 0, 0, 0, 'sr', 'Шоломітський', '2016-05-27 13:32:07', '1', '1'),
(79, 33, 3, 4, 'car', '2016-03-04', 12, 1628, 57, 1685, 'sr', 'чергування бурштин', '2016-07-20 23:33:22', '1', '1'),
(80, 33, 3, 1, 'truck', '2016-04-06', 8, 552, 60, 612, 'sr', 'дрова лобна', '2016-07-20 23:33:21', '1', '1'),
(81, 34, 1, 4, 'car', '2016-03-04', 12, 1685, 29, 1714, 'sr', 'чергування бурштин (ніч)', '2016-07-20 23:33:22', '1', '1'),
(82, 34, 2, 2, 'truck', '2016-04-08', 3, 325, 40, 365, 'sr', '№ 48\r\n\n№ 49', '2016-07-20 23:33:21', '1', '1'),
(83, 35, 2, 3, 'car', '2016-03-04', 8, 224, 41, 265, 'db', 'автозапчастини\r\n\nСтрук', '2016-07-20 23:33:22', '1', '1'),
(84, 35, 2, 2, 'truck', '2016-04-11', 1, 365, 9, 374, 'sr', 'мусорнік Воля Любешівська', '2016-07-20 23:33:21', '1', '1'),
(85, 36, 1, 4, 'car', '2016-03-09', 8, 1714, 28, 1742, 'sr', 'чергування судче', '2016-07-20 23:33:22', '1', '1'),
(86, 36, 2, 2, 'truck', '2016-04-13', 8, 374, 40, 414, 'sr', 'міст лісхоз', '2016-07-20 23:33:21', '1', '1'),
(87, 37, 1, 4, 'car', '2016-03-10', 8, 1742, 29, 1771, 'db', 'перевірка роботи МНС\r\n\n', '2016-07-20 23:33:22', '1', '1'),
(88, 37, 6, 7, 'truck', '2016-04-14', 3, 30, 5, 35, 'sr', 'агроліс', '2016-07-20 23:33:22', '1', '1'),
(89, 38, 3, 3, 'car', '2016-03-14', 8, 525, 58, 583, 'db', 'обстеження тобольської н.с.\r\n\nЗімич П.І.', '2016-07-20 23:33:22', '1', '1'),
(90, 38, 2, 2, 'truck', '2016-04-14', 8, 414, 80, 494, 'pr', 'ремонт греблі', '2016-07-20 23:33:21', '1', '1'),
(91, 39, 3, 3, 'car', '2016-03-15', 8, 583, 16, 599, 'db', 'автозапчастини (покришка)\r\n\nСтрук', '2016-07-20 23:33:22', '1', '1'),
(92, 39, 2, 2, 'truck', '2016-04-15', 8, 494, 112, 606, 'sr', 'селишна асальт', '2016-07-20 23:33:21', '1', '1'),
(93, 40, 3, 3, 'car', '2016-03-16', 0, 599, 0, 599, 'db', 'не використана', '2016-07-20 23:33:22', '0', '1'),
(94, 40, 2, 2, 'truck', '2016-04-18', 2, 606, 11, 617, 'sr', 'Курін мусорнік', '2016-07-20 23:33:21', '1', '1'),
(95, 40, 5, 1, 'truck', '2016-04-15', 8, 612, 60, 672, 'pr', 'перевезення землі', '2016-07-20 23:33:21', '1', '1'),
(96, 41, 6, 3, 'car', '2016-03-11', 8, 265, 260, 525, 'db', 'УВГ - Ковель', '2016-07-20 23:33:22', '1', '1'),
(97, 41, 5, 1, 'truck', '2016-04-19', 8, 672, 80, 752, 'sr', 'по дрова з шпанчиком', '2016-07-20 23:33:21', '1', '1'),
(98, 41, 8, 12, 'tractor', '2016-05-25', 8, 0, 0, 0, 'pr', 'дольськ пот рем\r\n\nшпанчик', '2016-05-31 13:29:11', '1', '1'),
(99, 42, 3, 3, 'car', '2016-03-17', 8, 599, 65, 664, 'db', 'УВГ - Коростинка', '2016-07-20 23:33:22', '1', '1'),
(100, 42, 2, 2, 'truck', '2016-04-21', 2, 617, 10, 627, 'sr', 'курін мусорнік', '2016-07-20 23:33:21', '1', '1'),
(101, 42, 10, 9, 'tractor', '2016-06-08', 8, 0, 0, 0, 'sr', '1', '2016-06-30 15:24:54', '1', '1'),
(102, 43, 5, 4, 'car', '2016-03-17', 8, 1771, 18, 1789, 'db', 'УВГ - Люблязь', '2016-07-20 23:33:22', '1', '1'),
(103, 43, 2, 2, 'truck', '2016-04-22', 7, 627, 80, 707, 'sr', 'лісгосп', '2016-07-20 23:33:21', '1', '1'),
(104, 43, 11, 11, 'tractor', '2016-06-08', 8, 0, 0, 0, 'sr', '1', '2016-06-30 15:30:04', '1', '1'),
(105, 44, 6, 4, 'car', '2016-03-18', 8, 1789, 115, 1904, 'db', 'УВГ - м. Глуша - Цирська н.с - по системі', '2016-07-20 23:33:22', '1', '1'),
(106, 44, 2, 2, 'truck', '2016-04-25', 7, 707, 80, 787, 'sr', 'лісгосп', '2016-07-20 23:33:21', '1', '1'),
(107, 44, 10, 9, 'tractor', '2016-06-09', 8, 0, 0, 0, 'sr', '1', '2016-06-30 15:30:50', '1', '1'),
(108, 45, 3, 3, 'car', '2016-03-18', 8, 664, 165, 829, 'db', 'УВГ - Підкормільська н.с. - Дольська н.с. - с. Сваловичі...', '2016-07-20 23:33:22', '1', '1'),
(109, 45, 2, 2, 'truck', '2016-04-26', 2, 787, 42, 829, 'sr', 'перевезення екскаватора\r\n\nі транспортування трала', '2016-07-20 23:33:21', '1', '1'),
(110, 45, 11, 11, 'tractor', '2016-06-09', 8, 0, 0, 0, 'sr', '1', '2016-06-30 15:31:32', '1', '1'),
(111, 46, 6, 3, 'car', '2016-03-18', 0, 0, 0, 0, 'db', 'не використана', '2016-03-23 15:42:14', '0', '0'),
(112, 46, 4, 5, 'tractor', '2016-06-10', 8, 0, 0, 0, 'sr', 'Бас 79', '2016-06-24 13:01:00', '1', '1'),
(113, 47, 6, 3, 'car', '2016-03-21', 8, 829, 75, 904, 'db', 'УВГ - Воля - по системі ...', '2016-03-23 15:43:35', '1', '1'),
(114, 47, 6, 1, 'truck', '2016-05-04', 8, 752, 20, 772, 'sr', 'брикети паливні', '2016-07-20 23:33:21', '1', '1'),
(115, 47, 11, 11, 'tractor', '2016-06-10', 8, 0, 0, 0, 'sr', '1', '2016-06-30 15:32:08', '1', '1'),
(116, 48, 3, 3, 'car', '2016-03-22', 8, 904, 41, 945, 'db', 'Кульміч за 8 березня', '2016-03-23 15:44:34', '1', '1'),
(117, 48, 2, 2, 'truck', '2016-05-05', 8, 829, 28, 857, 'sr', 'дрова', '2016-07-20 23:33:21', '1', '1'),
(118, 48, 10, 9, 'tractor', '2016-06-10', 8, 0, 0, 0, 'sr', '1', '2016-06-30 15:32:55', '1', '1'),
(119, 49, 5, 4, 'car', '2016-03-22', 8, 1904, 12, 1916, 'db', 'УВГ - Любешів н.с.....', '2016-07-20 23:33:22', '1', '1'),
(120, 49, 2, 2, 'truck', '2016-05-10', 8, 857, 80, 937, 'sr', 'Дольськ\r\n\r\nперевезення екскаваторів', '2016-07-20 23:33:21', '1', '1'),
(121, 49, 4, 5, 'tractor', '2016-06-13', 4, 0, 0, 0, 'sr', 'Божко АМ', '2016-06-24 13:01:52', '1', '1'),
(122, 50, 5, 4, 'car', '2016-03-23', 8, 1916, 12, 1928, 'db', '...', '2016-07-20 23:33:22', '1', '1'),
(123, 50, 3, 1, 'truck', '2016-05-10', 8, 772, 60, 832, 'sr', 'перевезеня вагончика Дольськ', '2016-07-20 23:33:21', '1', '1'),
(124, 50, 10, 9, 'tractor', '2016-06-14', 0, 0, 0, 0, 'sr', '1', '2016-06-30 15:36:44', '1', '1'),
(125, 51, 3, 3, 'car', '2016-03-24', 8, 945, 50, 995, 'sr', 'Шпанчик', '2016-03-25 12:18:00', '1', '1'),
(126, 51, 2, 2, 'truck', '2016-05-12', 8, 937, 30, 967, 'sr', 'ремонт н.с. Седлище\r\n\nКузьміч', '2016-07-20 23:33:21', '1', '1'),
(127, 51, 8, 12, 'tractor', '2016-06-13', 8, 0, 0, 0, 'sr', 'Набайчик №81', '2016-06-24 13:06:12', '1', '1'),
(128, 52, 5, 4, 'car', '2016-03-24', 8, 1928, 12, 1940, 'db', 'любешів - залаззя', '2016-07-20 23:33:22', '1', '1'),
(129, 52, 2, 2, 'truck', '2016-05-24', 2, 967, 80, 1047, 'sr', 'Кух 2 год №71', '2016-07-20 23:33:21', '1', '1'),
(130, 52, 10, 9, 'tractor', '2016-06-15', 8, 0, 0, 0, 'sr', '1', '2016-06-30 15:36:16', '1', '1'),
(131, 53, 3, 3, 'car', '2016-03-25', 8, 995, 42, 1037, 'db', 'кульміч на 8 березня', '2016-03-25 12:21:18', '1', '1'),
(132, 53, 2, 2, 'truck', '2016-06-01', 2, 1047, 20, 1067, 'sr', 'Лебеля Р.І.', '2016-07-20 23:33:21', '1', '1'),
(133, 53, 11, 11, 'tractor', '2016-06-15', 8, 0, 0, 0, 'sr', '1', '2016-06-30 15:38:02', '1', '1'),
(134, 54, 5, 4, 'car', '2016-03-25', 0, 1940, 6, 1946, 'db', 'УВГ - Любешів н.с', '2016-07-20 23:33:22', '1', '1'),
(135, 54, 8, 12, 'tractor', '2016-06-15', 8, 0, 0, 0, 'sr', 'Швайко ', '2016-06-24 13:05:11', '1', '1'),
(136, 55, 5, 4, 'car', '2016-03-28', 8, 1946, 280, 2226, 'sr', 'УВГ - Луцьк', '2016-07-20 23:33:22', '1', '1'),
(137, 55, 2, 2, 'truck', '2016-06-08', 9, 1067, 15, 1082, 'sr', 'с.Віл', '2016-07-20 23:33:21', '1', '1'),
(138, 55, 11, 11, 'tractor', '2016-06-16', 8, 0, 0, 0, 'sr', '1', '2016-06-30 15:37:14', '1', '1'),
(139, 56, 3, 3, 'car', '2016-04-04', 8, 1037, 50, 1087, 'db', '-', '2016-04-19 13:37:05', '1', '1'),
(140, 56, 8, 12, 'tractor', '2016-06-16', 4, 0, 0, 0, 'sr', 'Жилко 84', '2016-07-17 00:28:25', '1', '1'),
(141, 57, 5, 4, 'car', '2016-04-04', 8, 2226, 290, 2516, 'db', 'луцьк', '2016-07-20 23:33:22', '1', '1'),
(142, 57, 10, 9, 'tractor', '2016-06-16', 8, 0, 0, 0, 'sr', '1', '2016-06-30 15:35:51', '1', '1'),
(143, 58, 3, 4, 'car', '2016-04-05', 0, 2516, 228, 2744, 'sr', 'Ратно', '2016-07-20 23:33:22', '1', '1'),
(144, 58, 1, 1, 'truck', '2016-06-08', 9, 832, 102, 934, 'sr', 'Перевезення трансформатора', '2016-07-20 23:33:21', '1', '1'),
(145, 58, 10, 9, 'tractor', '2016-06-17', 8, 0, 0, 0, 'sr', '1', '2016-06-30 15:35:21', '1', '1'),
(146, 59, 5, 3, 'car', '2016-04-05', 8, 1087, 40, 1127, 'sr', 'бучин нс', '2016-04-19 13:38:19', '1', '1'),
(147, 59, 6, 7, 'truck', '2016-06-08', 8, 35, 40, 75, 'sr', 'трансформатор', '2016-07-20 23:33:22', '1', '1'),
(148, 60, 5, 4, 'car', '2016-04-06', 8, 2744, 12, 2756, 'db', 'запчастини', '2016-07-20 23:33:22', '1', '1'),
(149, 60, 2, 2, 'truck', '2016-06-10', 9, 1082, 60, 1142, 'sr', 'с. Віл', '2016-07-20 23:33:21', '1', '1'),
(150, 61, 5, 4, 'car', '2016-04-08', 8, 2756, 24, 2780, 'db', 'заріка нс', '2016-07-20 23:33:22', '1', '1'),
(151, 62, 5, 3, 'car', '2016-04-11', 1, 1127, 25, 1152, 'sr', 'Воля Любешівська', '2016-04-19 13:39:41', '1', '1'),
(152, 63, 5, 4, 'car', '2016-04-12', 8, 2780, 280, 3060, 'db', 'Луцьк(фейкова)', '2016-07-20 23:33:22', '1', '1'),
(153, 63, 1, 1, 'truck', '2016-06-10', 8, 934, 50, 984, 'sr', 'Бас № 79', '2016-07-20 23:33:21', '1', '1'),
(154, 64, 2, 3, 'car', '2016-04-12', 1, 1152, 58, 1210, 'sr', 'Любешівська Воля (мусорнік)', '2016-04-19 13:41:00', '1', '1'),
(155, 64, 2, 2, 'truck', '2016-06-13', 7, 1142, 40, 1182, 'sr', 'Набайчик А.А. №81', '2016-07-20 23:33:21', '1', '1'),
(156, 65, 5, 3, 'car', '2016-04-13', 8, 1210, 25, 1235, 'db', 'Любешівська Воля (мусорнік)', '2016-04-19 13:41:37', '1', '1'),
(157, 66, 6, 3, 'car', '2016-04-15', 8, 1235, 16, 1251, 'db', 'Люб Воля мусорнік за 12.04.16\r\n\nпальне Кузьміча', '2016-04-19 13:43:55', '1', '1'),
(158, 67, 5, 4, 'car', '2016-04-18', 8, 3060, 23, 3083, 'db', 'курін', '2016-07-20 23:33:22', '1', '1'),
(159, 67, 2, 2, 'truck', '2016-06-15', 8, 1182, 40, 1222, 'sr', 'дольськ', '2016-07-20 23:33:21', '1', '1'),
(160, 68, 2, 4, 'car', '2016-04-19', 1, 3083, 17, 3100, 'sr', 'Мусорнік(поїхав своєю) по залишку від бондара', '2016-07-20 23:33:22', '1', '1'),
(161, 68, 2, 2, 'truck', '2016-06-16', 8, 1222, 44, 1266, 'sr', 'Кух в.І. 1 год\r\n\nШпанчик 1 год', '2016-07-20 23:33:21', '1', '1'),
(162, 69, 6, 3, 'car', '2016-04-19', 10, 1251, 250, 1501, 'db', 'Любешівське УВГ - Ратно\r\n\nобмірка роботи', '2016-04-19 13:46:28', '1', '1'),
(163, 70, 2, 4, 'car', '2016-04-20', 1, 3100, 17, 3117, 'sr', 'курін', '2016-07-20 23:33:22', '1', '1'),
(164, 70, 5, 3, 'car', '2016-04-20', 8, 1501, 330, 1831, 'db', 'Луцьк', '2016-04-28 11:29:49', '1', '1'),
(165, 71, 6, 6, 'car', '2016-04-20', 8, 52, 26, 78, 'sr', 'ремонт ЕТ-16', '2016-07-20 23:33:22', '1', '1'),
(166, 72, 6, 4, 'car', '2016-04-21', 8, 3117, 50, 3167, 'db', 'любешів люблязь', '2016-07-20 23:33:22', '1', '1'),
(167, 73, 6, 3, 'car', '2016-04-22', 8, 1831, 30, 1861, 'db', 'любешів деревок', '2016-04-28 11:12:57', '1', '1'),
(168, 74, 5, 4, 'car', '2016-04-22', 8, 3167, 64, 3231, 'db', 'цирська нс', '2016-07-20 23:33:22', '1', '1'),
(169, 75, 5, 4, 'car', '2016-04-25', 8, 3231, 58, 3289, 'db', 'хомутинська нс', '2016-07-20 23:33:22', '1', '1'),
(170, 76, 3, 3, 'car', '2016-04-25', 8, 1861, 58, 1919, 'sr', 'мусорнік', '2016-04-28 11:04:19', '1', '1'),
(171, 77, 3, 3, 'car', '2016-04-26', 4, 1919, 41, 1960, 'sr', 'мусорнік', '2016-04-28 11:05:39', '1', '1'),
(172, 78, 3, 3, 'car', '2016-05-04', 8, 1960, 42, 2002, 'db', 'Люб - Хоцунь\r\n\nЗімич', '2016-05-27 13:46:47', '1', '1'),
(173, 79, 3, 3, 'car', '2016-05-05', 8, 2002, 82, 2084, 'db', 'Зімич\r\n\nЛюб - В.Глуша', '2016-05-27 13:47:52', '1', '1'),
(174, 80, 6, 3, 'car', '2016-05-06', 8, 2084, 24, 2108, 'db', 'автозапчастини\r\n\nСтрук', '2016-05-27 13:42:58', '1', '1'),
(175, 81, 5, 4, 'car', '2016-05-06', 8, 3289, 30, 3319, 'pr', 'Люб Підкормілля', '2016-07-20 23:33:22', '1', '1'),
(176, 82, 5, 4, 'car', '2016-05-10', 8, 3319, 70, 3389, 'db', 'Люб Хоцунь Дольськ', '2016-07-20 23:33:22', '1', '1'),
(177, 83, 5, 4, 'car', '2016-05-11', 8, 3389, 151, 3540, 'db', 'Любешів - Люблязь', '2016-07-20 23:33:22', '1', '1'),
(178, 84, 3, 6, 'car', '2016-05-11', 8, 78, 83, 161, 'sr', 'Любешів - Дольськ', '2016-07-20 23:33:22', '1', '1'),
(179, 85, 5, 4, 'car', '2016-05-12', 8, 3540, 54, 3594, 'db', 'Люб - Дольськ', '2016-07-20 23:33:22', '1', '1'),
(180, 86, 5, 4, 'car', '2016-05-13', 8, 3594, 30, 3624, 'db', 'Люб - Седлище', '2016-07-20 23:33:22', '1', '1'),
(181, 87, 5, 4, 'car', '2016-05-16', 8, 3624, 54, 3678, 'sr', 'Люб - Дольськ', '2016-07-20 23:33:22', '1', '1'),
(182, 88, 3, 3, 'car', '2016-05-16', 8, 2108, 83, 2191, 'db', 'Любешів - Дольськ\r\n\nКузьміч', '2016-05-27 13:50:50', '1', '1'),
(183, 89, 3, 3, 'car', '2016-05-17', 8, 2191, 58, 2249, 'sr', 'Любешів - Дольськ', '2016-05-27 13:51:44', '1', '1'),
(184, 90, 3, 3, 'car', '2016-05-18', 8, 2249, 66, 2315, 'sr', 'Любешів - Дольськ', '2016-05-27 13:52:42', '1', '1'),
(185, 91, 5, 4, 'car', '2016-05-18', 8, 3678, 18, 3696, 'db', 'Люб - Зарудче\r\n\nСтрук', '2016-07-20 23:33:22', '1', '1'),
(186, 92, 5, 3, 'car', '2016-05-19', 8, 2315, 58, 2373, 'sr', 'Любешів - Дольськ', '2016-05-27 14:19:35', '1', '1'),
(187, 93, 3, 3, 'car', '2016-05-20', 8, 2373, 58, 2431, 'sr', 'Любешів - Дольськ', '2016-05-27 13:53:24', '1', '1'),
(188, 94, 5, 4, 'car', '2016-05-20', 8, 3696, 24, 3720, 'db', 'Люб - Заріка', '2016-07-20 23:33:22', '1', '1'),
(189, 95, 3, 3, 'car', '2016-05-23', 8, 2431, 58, 2489, 'sr', 'Любешів - Дольськ', '2016-05-27 13:54:31', '1', '1'),
(190, 96, 5, 4, 'car', '2016-05-23', 8, 3720, 58, 3778, 'db', 'Люб - Цир', '2016-07-20 23:33:22', '1', '1'),
(191, 97, 3, 3, 'car', '2016-05-24', 9, 2489, 190, 2679, 'sr', 'Шпанчик', '2016-05-27 13:56:12', '1', '1'),
(192, 98, 3, 3, 'car', '2016-05-25', 8, 2679, 58, 2737, 'sr', 'Любешів - Дольськ', '2016-05-27 13:57:10', '1', '1'),
(193, 99, 3, 3, 'car', '2016-05-26', 8, 2737, 58, 2795, 'sr', 'Любешів - Дольськ', '2016-05-27 13:57:56', '1', '1'),
(194, 100, 5, 4, 'car', '2016-05-26', 8, 3778, 230, 4008, 'db', 'Люб - Ратно', '2016-07-20 23:33:22', '1', '1'),
(195, 101, 3, 3, 'car', '2016-05-27', 8, 2795, 58, 2853, 'sr', 'Любешів - Дольськ', '2016-05-27 13:58:26', '1', '1'),
(196, 102, 5, 4, 'car', '2016-06-01', 8, 4008, 298, 4306, 'db', 'Любешів - Луцьк', '2016-07-20 23:33:22', '1', '1'),
(197, 103, 3, 3, 'car', '2016-06-01', 8, 2853, 41, 2894, 'db', '1', '2016-06-29 10:41:05', '1', '1'),
(198, 104, 5, 4, 'car', '2016-06-02', 8, 4306, 46, 4352, 'db', 'Любешів - Цир', '2016-07-20 23:33:22', '1', '1'),
(199, 106, 3, 3, 'car', '2016-06-02', 8, 2894, 25, 2919, 'db', '1', '2016-06-29 10:44:16', '1', '1'),
(200, 107, 3, 3, 'car', '2016-06-03', 8, 2919, 41, 2960, 'db', '1', '2016-06-29 10:48:35', '1', '1'),
(201, 108, 5, 4, 'car', '2016-06-03', 8, 4352, 12, 4364, 'db', 'Агроремаш', '2016-07-20 23:33:22', '1', '1'),
(202, 109, 5, 4, 'car', '2016-06-06', 8, 4364, 52, 4416, 'db', 'Седлище', '2016-07-20 23:33:22', '1', '1'),
(203, 110, 3, 3, 'car', '2016-06-06', 8, 2960, 41, 3001, 'db', '1', '2016-06-29 10:49:18', '1', '1'),
(204, 111, 3, 3, 'car', '2016-06-08', 8, 3001, 40, 3041, 'sr', 'Віл', '2016-06-29 10:50:06', '1', '1'),
(205, 112, 3, 3, 'car', '2016-06-09', 8, 3041, 40, 3081, 'sr', 'Віл', '2016-06-29 10:50:46', '1', '1'),
(206, 113, 3, 3, 'car', '2016-06-10', 8, 3081, 40, 3121, 'sr', 'Віл', '2016-06-29 10:51:28', '1', '1'),
(207, 114, 3, 3, 'car', '2016-06-13', 8, 3121, 16, 3137, 'sr', '1', '2016-06-29 10:52:13', '1', '1'),
(208, 115, 3, 3, 'car', '2016-06-14', 8, 3137, 16, 3153, 'sr', '1', '2016-06-29 10:52:53', '1', '1'),
(209, 116, 3, 3, 'car', '2016-06-15', 8, 3153, 58, 3211, 'sr', 'Богдан', '2016-06-29 10:54:31', '1', '1'),
(210, 117, 1, 6, 'car', '2016-06-15', 8, 161, 52, 213, 'sr', 'Любешів - Дольськ\r\n\n', '2016-07-20 23:33:22', '1', '1'),
(211, 118, 1, 6, 'car', '2016-06-16', 8, 213, 52, 265, 'sr', 'Дольськ\r\n\nпо системі', '2016-07-20 23:33:22', '1', '1'),
(212, 119, 3, 3, 'car', '2016-06-16', 8, 3211, 58, 3269, 'sr', 'Богдан', '2016-06-29 10:55:08', '1', '1'),
(213, 120, 5, 4, 'car', '2016-06-16', 8, 4416, 46, 4462, 'db', 'Хоцунь', '2016-07-20 23:33:22', '1', '1'),
(214, 121, 3, 3, 'car', '2016-06-17', 8, 3269, 58, 3327, 'sr', 'Богдан', '2016-06-29 10:55:42', '1', '1'),
(215, 122, 6, 6, 'car', '2016-06-17', 8, 265, 10, 275, 'db', 'по місту', '2016-07-20 23:33:22', '1', '1'),
(216, 123, 1, 6, 'car', '2016-06-21', 11, 275, 208, 483, 'db', 'Ковель', '2016-07-20 23:33:22', '1', '1'),
(217, 124, 3, 3, 'car', '2016-06-22', 8, 3327, 58, 3385, 'sr', 'Богдан', '2016-06-29 10:56:50', '1', '1'),
(218, 125, 3, 3, 'car', '2016-06-23', 8, 3385, 58, 3443, 'sr', 'Богдан', '2016-06-29 10:57:37', '1', '1'),
(219, 126, 3, 3, 'car', '2016-06-24', 8, 0, 58, 0, 'sr', 'Богдан 1', '2016-06-29 10:59:52', '1', '1'),
(220, 127, 3, 3, 'car', '2016-06-29', 8, 3501, 8, 3509, 'sr', 'Начальник і Зімиіч і Богдан', '2016-06-29 11:00:38', '1', '1'),
(221, 128, 3, 3, 'car', '2016-06-30', 8, 3509, 0, 3509, 'sr', 'Без пального', '2016-06-29 11:01:07', '1', '1');

-- --------------------------------------------------------

--
-- Структура таблиці `transport`
--

CREATE TABLE `transport` (
  `id` int(11) NOT NULL,
  `type` enum('truck','car','tractor','other') NOT NULL DEFAULT 'other' COMMENT 'Тип авто',
  `type_fuel` enum('diesel','gasoline') NOT NULL DEFAULT 'diesel',
  `route_list` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `driver_id` int(6) UNSIGNED NOT NULL,
  `mk` varchar(255) DEFAULT NULL COMMENT 'Марка',
  `tk` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `number` varchar(255) DEFAULT NULL COMMENT 'Держ номер',
  `note` mediumtext COMMENT 'Нотатка',
  `fuel100` varchar(255) DEFAULT '-' COMMENT 'Витрата на 100км',
  `fuel100t` varchar(255) DEFAULT '-' COMMENT 'Витрата на 100ткм',
  `w1` varchar(255) DEFAULT '-' COMMENT '1 год роб',
  `w1acs` varchar(255) DEFAULT '-' COMMENT '1 год роб обл',
  `size1001` varchar(255) DEFAULT '-' COMMENT '100м3 1гр',
  `size1002` varchar(255) DEFAULT '-' COMMENT '100 м3 2гр'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Автотранспорт';

--
-- Дамп даних таблиці `transport`
--

INSERT INTO `transport` (`id`, `type`, `type_fuel`, `route_list`, `driver_id`, `mk`, `tk`, `number`, `note`, `fuel100`, `fuel100t`, `w1`, `w1acs`, `size1001`, `size1002`) VALUES
(1, 'truck', 'diesel', 1, 0, 'ЗІЛ ММЗ 45021', 0, '08185 ВМ', 'Вантажівка 5т.\r\n\nінв. № 10510042\r\n\n1989р.', '24,7', '-', '-', '-', '-', '-'),
(2, 'truck', 'diesel', 1, 0, 'КАМАЗ 5511', 1, 'АС 5152 АВ', '5т.\r\n\nінв.№ 10510031\r\n\n1987р.', '35,7', '', '', '', '', ''),
(3, 'car', 'gasoline', 1, 0, 'ГАЗ 33023', 1, 'АС 2420 АТ', 'інв. № 10510050\r\n\n2008р.', '12,1', '', '', '', '', ''),
(4, 'car', 'gasoline', 1, 0, 'УАЗ 31514', 1, '02651 ВК', 'інв. № 10510045\r\n\n2003р.', '17,5', '', '', '', '', ''),
(5, 'tractor', 'diesel', 1, 0, 'ПЕА-1А', 0, '3803 ВШ', 'Карпатець\r\n\nінв. № 10410025\r\n\n1992р.', '', '', '8,2', '', '', ''),
(6, 'car', 'gasoline', 1, 0, 'УАЗ 3303', 1, 'АС 3746 АВ', 'інв. № 10510037\r\n\n1992р.', '19,2', '', '', '', '', ''),
(7, 'truck', 'gasoline', 1, 0, 'КС  2561 К', 1, 'АС 5156 АВ', 'інв. № 10510036\r\n\n1993р.', '40', '', '', '6', '', ''),
(8, 'tractor', 'diesel', 1, 0, 'ЮМЗ 6', 1, '38-42 ВШ', 'інв. № 10410021\r\n\n1992р.', '', '', '6,9', '', '', ''),
(9, 'tractor', 'diesel', 0, 0, 'ЕТ 16-33-20', 0, '05252 АС', 'Екскаватор гідравлічний\r\n\nінв. № 10410005\r\n\n2008р.', '', '', '7', '', '12', '15,6'),
(10, 'tractor', 'diesel', 0, 0, 'Д-606', 1, '3841 ВШ', 'Бульдозер на широкому ходу\r\n\nінв. № 10410008\r\n\n1991р.', '', '', '8,2', '', '8,4', '10,9'),
(11, 'tractor', 'diesel', 0, 0, 'ДЗ-42', 0, '3844 ВШ', 'Бульдозер на вузькому ходу\r\n\nінв. № 10410016\r\n\n1987р.', '', '', '12,8', '', '8,4', '10,9'),
(12, 'tractor', 'diesel', 1, 0, 'ЕО 3211', 0, '05012 ВК', 'Екскаватор - драглайн\r\n\nінв. №  10410019\r\n\n1992р.', '', '', '5,4', '', '19,4', '23,8'),
(13, 'tractor', 'diesel', 0, 0, 'ЕО 3211', 0, '05011 ВК', 'Екскаватор - драглайн\r\n\nінв. №  10410020\r\n\n1992р.', '', '', '5,4', '', '19,4', '23,8'),
(14, 'truck', 'gasoline', 1, 0, 'ГАЗ 5312', 1, 'АС 5151 АВ', 'Передано в АТО\r\n\nінв. № 10510039\r\n\n1989р.', '26,2', '2,0', '', '', '', ''),
(15, 'other', 'diesel', 0, 0, 'Майстерня', 0, '', 'РММ', '-', '-', '-', '-', '-', '-'),
(16, 'other', 'diesel', 0, 0, 'Бензопили 2 шт.', 0, '', 'Зімич П.І.', '-', '-', '-', '-', '-', '-'),
(17, 'other', 'diesel', 0, 0, 'Кущоріз', 0, '', 'Зімич П.І.', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Структура таблиці `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `superadmin` smallint(6) DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(15) DEFAULT NULL,
  `bind_to_ip` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `email_confirmed` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `confirmation_token`, `status`, `superadmin`, `created_at`, `updated_at`, `registration_ip`, `bind_to_ip`, `email`, `email_confirmed`) VALUES
(1, 'superadmin', 'kk-2lZN0l4A0bpyXoWK8zUGHn0znAqJT', '$2y$13$Y6PpfvaVdcwEFxDGIgIhLOsWFMmnuknRz2uxG.BoqdJsvu6kN4aHm', NULL, 1, 1, 1467930344, 1467930344, NULL, NULL, NULL, 0),
(2, 'User', 'RT8atm0Iv8ExMqnOAObtUXzBcN0nKk0R', '$2y$13$s4ehmt6n8x88QpkrMg2vw.de2Q13JmUOVWIErah8yHQ13akjto50e', NULL, 1, 0, 1468075641, 1468075758, '127.0.0.1', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `user_visit_log`
--

CREATE TABLE `user_visit_log` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` char(2) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `user_visit_log`
--

INSERT INTO `user_visit_log` (`id`, `token`, `ip`, `language`, `user_agent`, `user_id`, `visit_time`, `browser`, `os`) VALUES
(1, '577ed80cb1fb0', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1467930636, 'Firefox', 'Linux'),
(2, '577ed89b47203', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1467930779, 'Firefox', 'Linux'),
(3, '577ed9ab6e7bf', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1467931051, 'Firefox', 'Linux'),
(4, '577edc7e1f18e', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1467931774, 'Firefox', 'Linux'),
(5, '577fd0a0e8aba', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1467994272, 'Firefox', 'Linux'),
(6, '577fdb5f14792', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1467997023, 'Firefox', 'Linux'),
(7, '578017bfd087b', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468012479, 'Firefox', 'Linux'),
(8, '5781024dd6262', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468072525, 'Firefox', 'Linux'),
(9, '5781034721ac9', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468072775, 'Firefox', 'Linux'),
(10, '57810f0f588bf', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 2, 1468075791, 'Firefox', 'Linux'),
(11, '578116762dbb5', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468077686, 'Firefox', 'Linux'),
(12, '578131e10778d', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468084705, 'Firefox', 'Linux'),
(13, '578156a66b5e5', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468094118, 'Firefox', 'Linux'),
(14, '578237b0d0718', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468151728, 'Firefox', 'Linux'),
(15, '57826240c876c', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468162624, 'Firefox', 'Linux'),
(16, '578274dc36e5f', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468167388, 'Firefox', 'Linux'),
(17, '578284582ea4e', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468171352, 'Firefox', 'Linux'),
(18, '5782a76853723', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468180328, 'Firefox', 'Linux'),
(19, '5782cc3467e58', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468189748, 'Firefox', 'Linux'),
(20, '5783dba7a0984', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468259239, 'Firefox', 'Linux'),
(21, '5783f278ba296', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468265080, 'Firefox', 'Linux'),
(22, '5784814dbd686', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468301645, 'Firefox', 'Linux'),
(23, '5784930e26abd', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468306190, 'Firefox', 'Linux'),
(24, '5784ac0e81c02', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468312590, 'Firefox', 'Linux'),
(25, '5784dc64b70d1', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468324964, 'Firefox', 'Linux'),
(26, '5784f2e39dc25', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468330723, 'Firefox', 'Linux'),
(27, '5784faf3a148b', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468332787, 'Firefox', 'Linux'),
(28, '57852812ae3ff', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468344338, 'Firefox', 'Linux'),
(29, '5786296ad86eb', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468410218, 'Firefox', 'Linux'),
(30, '57863e5aa55c3', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468415578, 'Firefox', 'Linux'),
(31, '578654f43e184', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468421364, 'Firefox', 'Linux'),
(32, '578692b3dae93', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468437171, 'Firefox', 'Linux'),
(33, '5786b0b1560c0', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468444849, 'Firefox', 'Linux'),
(34, '578758b55f9ed', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468487861, 'Firefox', 'Linux'),
(35, '5787824f356b4', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468498511, 'Firefox', 'Linux'),
(36, '5787824f358b2', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468498511, 'Firefox', 'Linux'),
(37, '5787b2f48277d', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468510964, 'Firefox', 'Linux'),
(38, '5787c0dadd4e5', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468514523, 'Firefox', 'Linux'),
(39, '5789f9e410b5f', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468660196, 'Firefox', 'Linux'),
(40, '578a06dd42f79', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468663517, 'Firefox', 'Linux'),
(41, '578a20ad14f33', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468670125, 'Firefox', 'Linux'),
(42, '578a320b70c26', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468674571, 'Firefox', 'Linux'),
(43, '578a97baa941c', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468700602, 'Firefox', 'Linux'),
(44, '578d056b5e885', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468859755, 'Firefox', 'Linux'),
(45, '578d2d3ee89a6', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468869950, 'Firefox', 'Linux'),
(46, '578e7cee25a0f', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1468955886, 'Firefox', 'Linux'),
(47, '578fbfd25f717', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469038546, 'Firefox', 'Linux'),
(48, '57912ab4eb88d', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469131444, 'Firefox', 'Linux'),
(49, '57924d82609b0', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469205890, 'Firefox', 'Linux'),
(50, '579333d693955', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469264854, 'Firefox', 'Linux'),
(51, '57937245dce74', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469280837, 'Firefox', 'Linux'),
(52, '579474414412d', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469346881, 'Firefox', 'Linux'),
(53, '5794a4f664a04', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469359350, 'Firefox', 'Linux'),
(54, '5795043ea5c67', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469383742, 'Firefox', 'Linux'),
(55, '57990ec62a406', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469648582, 'Firefox', 'Linux'),
(56, '579a582153a05', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469732897, 'Firefox', 'Linux'),
(57, '579c699b12c8c', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469868443, 'Firefox', 'Linux'),
(58, '579c804787b69', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469874247, 'Firefox', 'Linux'),
(59, '579c950029ad4', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469879552, 'Firefox', 'Linux'),
(60, '579cb7a9bd881', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469888425, 'Firefox', 'Linux'),
(61, '579d117824c41', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469911416, 'Firefox', 'Linux'),
(62, '579d1502ed95f', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469912323, 'Firefox', 'Linux'),
(63, '579d99a657e55', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469946278, 'Firefox', 'Linux'),
(64, '579da56153fd7', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469949281, 'Firefox', 'Linux'),
(65, '579da5739c2be', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469949299, 'Firefox', 'Linux'),
(66, '579e5263054fb', '127.0.0.1', 'en', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', 1, 1469993571, 'Firefox', 'Linux');

-- --------------------------------------------------------

--
-- Структура таблиці `write_off_fuel`
--

CREATE TABLE `write_off_fuel` (
  `id` int(11) UNSIGNED NOT NULL,
  `route_list` int(11) UNSIGNED NOT NULL,
  `type` enum('diesel','gasoline','oil') NOT NULL,
  `filled_by` float UNSIGNED NOT NULL DEFAULT '0',
  `write_off` float UNSIGNED NOT NULL DEFAULT '0',
  `balance` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `write_off_fuel`
--

INSERT INTO `write_off_fuel` (`id`, `route_list`, `type`, `filled_by`, `write_off`, `balance`) VALUES
(1, 1, 'gasoline', 20, 18, 3),
(2, 3, 'diesel', 5, 5, 0),
(3, 4, 'gasoline', 5, 5, 0),
(4, 5, 'diesel', 5, 8, 2),
(5, 6, 'diesel', 5, 5, 0),
(6, 8, 'diesel', 5, 7, 0),
(7, 9, 'diesel', 20, 20, 0),
(8, 10, 'gasoline', 18, 9, 12),
(9, 11, 'diesel', 15, 15, 0),
(10, 12, 'diesel', 30, 30, 0),
(11, 13, 'gasoline', 44, 52, 4),
(12, 14, 'diesel', 0, 0, 0),
(13, 15, 'diesel', 0, 0, 0),
(14, 16, 'gasoline', 50, 52, 2),
(15, 17, 'diesel', 0, 0, 0),
(16, 18, 'diesel', 20, 20, 0),
(17, 19, 'gasoline', 10, 6, 6),
(18, 20, 'diesel', 0, 0, 0),
(19, 21, 'diesel', 2, 2, 0),
(20, 22, 'gasoline', 5, 1, 4),
(21, 23, 'diesel', 15, 15, 0),
(22, 24, 'diesel', 0, 0, 0),
(23, 25, 'gasoline', 5, 7, 4),
(24, 26, 'diesel', 0, 0, 0),
(25, 27, 'diesel', 0, 0, 0),
(26, 28, 'diesel', 10, 10, 0),
(27, 29, 'gasoline', 15, 5, 14),
(28, 30, 'diesel', 0, 0, 0),
(29, 31, 'gasoline', 0, 2, 2),
(30, 32, 'diesel', 12, 12, 0),
(31, 33, 'gasoline', 5, 10, 9),
(32, 34, 'diesel', 20, 20, 0),
(33, 35, 'diesel', 18, 18, 0),
(34, 36, 'diesel', 15, 15, 0),
(35, 37, 'gasoline', 5, 5, 0),
(36, 38, 'diesel', 25, 25, 0),
(37, 39, 'diesel', 3, 3, 0),
(38, 40, 'gasoline', 5, 3, 11),
(39, 41, 'diesel', 0, 0, 0),
(40, 42, 'gasoline', 10, 2, 19),
(41, 43, 'diesel', 12, 12, 0),
(42, 44, 'diesel', 0, 0, 0),
(43, 45, 'gasoline', 0, 5, 14),
(44, 46, 'diesel', 30, 30, 0),
(45, 47, 'diesel', 0, 0, 0),
(46, 48, 'gasoline', 0, 2, 0),
(47, 49, 'diesel', 10, 10, 0),
(48, 50, 'oil', 3, 3, 0),
(49, 50, 'diesel', 30, 30, 0),
(50, 51, 'gasoline', 5, 2, 17),
(51, 52, 'diesel', 10, 10, 0),
(52, 53, 'gasoline', 10, 9, 18),
(53, 54, 'diesel', 13, 13, 0),
(54, 55, 'gasoline', 0, 3, 15),
(55, 56, 'diesel', 0, 0, 0),
(56, 57, 'gasoline', 12, 6, 21),
(57, 58, 'diesel', 0, 0, 0),
(58, 59, 'gasoline', 50, 52, 19),
(59, 60, 'diesel', 0, 0, 0),
(60, 61, 'gasoline', 10, 11, 18),
(61, 62, 'diesel', 0, 0, 0),
(62, 63, 'gasoline', 0, 4, 14),
(63, 64, 'diesel', 0, 0, 0),
(64, 65, 'gasoline', 0, 11, 3),
(65, 66, 'diesel', 20, 20, 0),
(66, 67, 'gasoline', 10, 7, 3),
(67, 68, 'gasoline', 2, 5, 0),
(68, 69, 'gasoline', 3, 3, 0),
(69, 70, 'gasoline', 0, 10, 0),
(70, 71, 'diesel', 0, 0, 0),
(71, 72, 'gasoline', 10, 8, 5),
(72, 73, 'diesel', 0, 0, 0),
(73, 74, 'gasoline', 0, 2, 3),
(74, 75, 'diesel', 0, 0, 0),
(75, 76, 'gasoline', 0, 2, 1),
(76, 77, 'diesel', 0, 0, 0),
(77, 78, 'diesel', 0, 0, 0),
(78, 79, 'gasoline', 10, 10, 0),
(79, 80, 'diesel', 15, 15, 0),
(80, 81, 'gasoline', 5, 5, 0),
(81, 82, 'diesel', 0, 0, 0),
(82, 83, 'gasoline', 5, 5, 0),
(83, 84, 'diesel', 25, 25, 0),
(84, 85, 'gasoline', 10, 5, 5),
(85, 86, 'diesel', 0, 0, 0),
(86, 87, 'gasoline', 0, 5, 0),
(87, 88, 'diesel', 0, 0, 0),
(88, 89, 'gasoline', 7, 7, 0),
(89, 90, 'diesel', 30, 30, 0),
(90, 91, 'gasoline', 2, 2, 0),
(91, 92, 'diesel', 40, 40, 0),
(92, 93, 'gasoline', 0, 0, 0),
(93, 94, 'diesel', 0, 0, 0),
(94, 95, 'diesel', 15, 15, 0),
(95, 96, 'gasoline', 40, 31, 9),
(96, 97, 'diesel', 20, 20, 0),
(97, 98, 'diesel', 10, 10, 0),
(98, 99, 'gasoline', 10, 8, 2),
(99, 100, 'diesel', 0, 0, 0),
(100, 101, 'diesel', 40, 40, 0),
(101, 102, 'gasoline', 10, 5, 8),
(102, 103, 'diesel', 0, 0, 0),
(103, 104, 'oil', 1, 1, 0),
(104, 104, 'diesel', 50, 50, 0),
(105, 105, 'gasoline', 20, 20, 0),
(106, 106, 'diesel', 0, 0, 0),
(107, 107, 'diesel', 40, 40, 0),
(108, 108, 'gasoline', 20, 20, 2),
(109, 109, 'diesel', 15, 15, 0),
(110, 110, 'diesel', 40, 40, 0),
(111, 112, 'diesel', 0, 0, 0),
(112, 113, 'gasoline', 0, 9, 0),
(113, 114, 'diesel', 5, 5, 0),
(114, 115, 'diesel', 10, 10, 0),
(115, 116, 'gasoline', 10, 5, 7),
(116, 117, 'diesel', 10, 10, 0),
(117, 118, 'diesel', 20, 20, 0),
(118, 119, 'gasoline', 0, 2, 6),
(119, 120, 'oil', 2, 2, 0),
(120, 120, 'diesel', 40, 40, 0),
(121, 121, 'diesel', 0, 0, 0),
(122, 122, 'gasoline', 0, 2, 4),
(123, 123, 'oil', 2, 2, 0),
(124, 123, 'diesel', 15, 15, 0),
(125, 124, 'diesel', 30, 30, 0),
(126, 125, 'gasoline', 6, 6, 7),
(127, 126, 'diesel', 10, 10, 0),
(128, 127, 'diesel', 0, 0, 0),
(129, 128, 'gasoline', 0, 2, 2),
(130, 129, 'diesel', 0, 0, 0),
(131, 130, 'diesel', 40, 40, 0),
(132, 131, 'gasoline', 0, 5, 2),
(133, 132, 'diesel', 0, 0, 0),
(134, 133, 'diesel', 47, 47, 0),
(135, 134, 'gasoline', 0, 1, 1),
(136, 135, 'diesel', 0, 0, 0),
(137, 136, 'gasoline', 50, 49, 2),
(138, 137, 'diesel', 30, 10, 20),
(139, 138, 'diesel', 50, 50, 0),
(140, 139, 'gasoline', 6, 6, 2),
(141, 140, 'diesel', 0, 0, 0),
(142, 141, 'gasoline', 50, 50, 2),
(143, 142, 'diesel', 40, 40, 0),
(144, 143, 'gasoline', 40, 40, 0),
(145, 144, 'diesel', 25, 25, 0),
(146, 145, 'diesel', 40, 40, 0),
(147, 146, 'gasoline', 5, 5, 0),
(148, 147, 'gasoline', 30, 28, 2),
(149, 148, 'gasoline', 5, 2, 5),
(150, 149, 'diesel', 0, 20, 0),
(151, 150, 'gasoline', 0, 4, 1),
(152, 151, 'gasoline', 3, 3, 0),
(153, 152, 'gasoline', 50, 49, 2),
(154, 153, 'diesel', 0, 0, 0),
(155, 154, 'gasoline', 7, 7, 0),
(156, 155, 'diesel', 0, 0, 0),
(157, 156, 'gasoline', 3, 3, 0),
(158, 157, 'gasoline', 2, 2, 0),
(159, 158, 'gasoline', 4, 4, 2),
(160, 159, 'diesel', 13, 13, 0),
(161, 160, 'gasoline', 6, 3, 3),
(162, 161, 'diesel', 15, 15, 0),
(163, 162, 'gasoline', 30, 30, 0),
(164, 163, 'gasoline', 0, 3, 0),
(165, 164, 'gasoline', 40, 40, 0),
(166, 165, 'gasoline', 5, 5, 0),
(167, 166, 'gasoline', 8, 8, 0),
(168, 167, 'gasoline', 5, 5, 0),
(169, 168, 'gasoline', 20, 11, 11),
(170, 169, 'gasoline', 0, 10, 1),
(171, 170, 'gasoline', 5, 7, 0),
(172, 171, 'gasoline', 5, 5, 0),
(173, 172, 'gasoline', 5, 5, 0),
(174, 173, 'gasoline', 10, 10, 0),
(175, 174, 'gasoline', 3, 3, 0),
(176, 175, 'gasoline', 5, 5, 1),
(177, 176, 'gasoline', 25, 12, 14),
(178, 177, 'gasoline', 25, 26, 13),
(179, 178, 'gasoline', 10, 10, 0),
(180, 179, 'gasoline', 15, 8, 20),
(181, 180, 'gasoline', 0, 5, 15),
(182, 181, 'gasoline', 10, 9, 16),
(183, 182, 'gasoline', 10, 10, 0),
(184, 183, 'gasoline', 10, 7, 3),
(185, 184, 'gasoline', 5, 8, 0),
(186, 185, 'gasoline', 4, 3, 17),
(187, 186, 'gasoline', 7, 7, 0),
(188, 187, 'gasoline', 7, 7, 0),
(189, 188, 'gasoline', 3, 4, 16),
(190, 189, 'gasoline', 10, 7, 3),
(191, 190, 'gasoline', 2, 10, 8),
(192, 191, 'gasoline', 20, 23, 0),
(193, 192, 'gasoline', 10, 7, 3),
(194, 193, 'gasoline', 7, 7, 3),
(195, 194, 'gasoline', 47, 40, 15),
(196, 195, 'gasoline', 7, 7, 3),
(197, 196, 'gasoline', 40, 52, 3),
(198, 197, 'gasoline', 5, 5, 3),
(199, 198, 'gasoline', 10, 8, 5),
(200, 199, 'gasoline', 0, 3, 0),
(201, 200, 'gasoline', 5, 5, 0),
(202, 201, 'gasoline', 0, 2, 3),
(203, 202, 'gasoline', 10, 9, 4),
(204, 203, 'gasoline', 5, 5, 0),
(205, 204, 'gasoline', 5, 5, 0),
(206, 205, 'gasoline', 5, 5, 0),
(207, 206, 'gasoline', 5, 5, 0),
(208, 207, 'gasoline', 2, 2, 0),
(209, 208, 'gasoline', 2, 2, 0),
(210, 209, 'gasoline', 8, 7, 1),
(211, 210, 'gasoline', 10, 10, 3),
(212, 211, 'gasoline', 10, 10, 3),
(213, 212, 'gasoline', 6, 7, 0),
(214, 213, 'gasoline', 10, 8, 6),
(215, 214, 'gasoline', 7, 7, 0),
(216, 215, 'gasoline', 2, 2, 0),
(217, 216, 'gasoline', 40, 40, 3),
(218, 217, 'gasoline', 10, 7, 3),
(219, 218, 'gasoline', 4, 7, 0),
(220, 219, 'gasoline', 7, 7, 0),
(221, 220, 'gasoline', 1, 1, 0),
(222, 221, 'gasoline', 0, 0, 0),
(235, 140, 'gasoline', 0, 0, 0),
(236, 140, 'oil', 0, 0, 0),
(245, 167, 'diesel', 0, 0, 0),
(246, 167, 'oil', 0, 0, 0),
(247, 166, 'diesel', 0, 0, 0),
(248, 166, 'oil', 0, 0, 0),
(249, 56, 'gasoline', 0, 0, 0),
(250, 56, 'oil', 0, 0, 0),
(251, 60, 'gasoline', 0, 0, 0),
(252, 60, 'oil', 0, 0, 0),
(253, 75, 'gasoline', 0, 0, 0),
(254, 75, 'oil', 0, 0, 0),
(255, 64, 'gasoline', 10, 10, 0),
(256, 64, 'oil', 0, 0, 0),
(257, 88, 'gasoline', 0, 0, 0),
(258, 88, 'oil', 0, 0, 0),
(259, 138, 'gasoline', 2, 0, 0),
(260, 138, 'oil', 0, 0, 0);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`),
  ADD KEY `fk_auth_item_group_code` (`group_code`);

--
-- Індекси таблиці `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Індекси таблиці `auth_item_group`
--
ALTER TABLE `auth_item_group`
  ADD PRIMARY KEY (`code`);

--
-- Індекси таблиці `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Індекси таблиці `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Індекси таблиці `realized_works_truck`
--
ALTER TABLE `realized_works_truck`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `routelist`
--
ALTER TABLE `routelist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport` (`transport`);

--
-- Індекси таблиці `route_list`
--
ALTER TABLE `route_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport` (`transport_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Індекси таблиці `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `user_visit_log`
--
ALTER TABLE `user_visit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `write_off_fuel`
--
ALTER TABLE `write_off_fuel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `route_list` (`route_list`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблиці `realized_works_truck`
--
ALTER TABLE `realized_works_truck`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT для таблиці `routelist`
--
ALTER TABLE `routelist`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT для таблиці `route_list`
--
ALTER TABLE `route_list`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;
--
-- AUTO_INCREMENT для таблиці `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `user_visit_log`
--
ALTER TABLE `user_visit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT для таблиці `write_off_fuel`
--
ALTER TABLE `write_off_fuel`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;
--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auth_item_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `user_visit_log`
--
ALTER TABLE `user_visit_log`
  ADD CONSTRAINT `user_visit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
