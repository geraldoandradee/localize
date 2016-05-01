-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           5.6.17 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.1.0.4904
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura para tabela localize.qtdpv_assets
CREATE TABLE IF NOT EXISTS `qtdpv_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_assets: ~73 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_assets` DISABLE KEYS */;
INSERT INTO `qtdpv_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
	(1, 0, 0, 145, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
	(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
	(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
	(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
	(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
	(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
	(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
	(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
	(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
	(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
	(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
	(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
	(16, 1, 35, 36, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
	(18, 1, 39, 90, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(19, 1, 91, 94, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(20, 1, 95, 96, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
	(21, 1, 97, 98, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
	(22, 1, 99, 100, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
	(23, 1, 101, 102, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.options":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(24, 1, 103, 106, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.options":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(26, 1, 107, 108, 1, 'com_wrapper', 'com_wrapper', '{}'),
	(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(30, 19, 92, 93, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(32, 24, 104, 105, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(33, 1, 109, 110, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
	(34, 1, 111, 112, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
	(35, 1, 113, 114, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
	(36, 1, 115, 116, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
	(37, 1, 117, 118, 1, 'com_ajax', 'com_ajax', '{}'),
	(38, 1, 119, 120, 1, 'com_postinstall', 'com_postinstall', '{}'),
	(39, 18, 40, 41, 2, 'com_modules.module.1', 'Menu Principal', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
	(40, 18, 42, 43, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(41, 18, 44, 45, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(42, 18, 46, 47, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(43, 18, 48, 49, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(44, 18, 50, 51, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(45, 18, 52, 53, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(46, 18, 54, 55, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(47, 18, 56, 57, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(48, 18, 58, 59, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(49, 18, 60, 61, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(50, 18, 62, 63, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(51, 18, 64, 65, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
	(52, 18, 66, 67, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(53, 18, 68, 69, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(54, 1, 121, 126, 1, 'com_localize_empresa', 'com_localize_empresa', '{}'),
	(55, 18, 70, 71, 2, 'com_modules.module.87', 'Logotipo', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
	(56, 18, 72, 73, 2, 'com_modules.module.88', 'Mapa Home', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
	(57, 18, 74, 75, 2, 'com_modules.module.89', 'Pesquisar', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
	(58, 1, 127, 140, 1, 'com_localize_imovel', 'com_localize_imovel', '{"core.admin":[],"core.manage":[],"core.create":{"1":1},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(59, 1, 141, 142, 1, 'com_jce', 'JCE', '{}'),
	(60, 18, 76, 77, 2, 'com_modules.module.90', 'Pesquisa Imóvel', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
	(61, 18, 78, 79, 2, 'com_modules.module.91', 'Anúncios de imóveis', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
	(62, 54, 122, 123, 2, 'com_localize_empresa.cadastrodeempresa.1', 'com_localize_empresa.cadastrodeempresa.1', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
	(63, 58, 128, 129, 2, 'com_localize_imovel.imvel.1', 'com_localize_imovel.imvel.1', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
	(64, 58, 130, 131, 2, 'com_localize_imovel.imvel.2', 'com_localize_imovel.imvel.2', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(65, 58, 132, 133, 2, 'com_localize_imovel.imvel.3', 'com_localize_imovel.imvel.3', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(66, 58, 134, 135, 2, 'com_localize_imovel.imvel.4', 'com_localize_imovel.imvel.4', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(67, 58, 136, 137, 2, 'com_localize_imovel.imvel.5', 'com_localize_imovel.imvel.5', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(68, 58, 138, 139, 2, 'com_localize_imovel.imvel.6', 'com_localize_imovel.imvel.6', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(69, 18, 80, 81, 2, 'com_modules.module.92', 'Anúncios de imóveis', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
	(70, 18, 82, 83, 2, 'com_modules.module.93', 'Anúncios de imóveis', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
	(71, 54, 124, 125, 2, 'com_localize_empresa.cadastrodeempresa.2', 'com_localize_empresa.cadastrodeempresa.2', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
	(72, 18, 84, 85, 2, 'com_modules.module.94', 'Recomendação de imóveis', '{}'),
	(73, 18, 86, 87, 2, 'com_modules.module.95', 'Recomendação de imóveis', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
	(74, 1, 143, 144, 1, 'com_breezingforms', 'BreezingForms', '{}'),
	(75, 18, 88, 89, 2, 'com_modules.module.96', 'Fale com o vendedor', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}');
/*!40000 ALTER TABLE `qtdpv_assets` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_associations
CREATE TABLE IF NOT EXISTS `qtdpv_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_associations: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_associations` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_banners
CREATE TABLE IF NOT EXISTS `qtdpv_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_banners: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_banners` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_banner_clients
CREATE TABLE IF NOT EXISTS `qtdpv_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_banner_clients: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_banner_clients` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_banner_tracks
CREATE TABLE IF NOT EXISTS `qtdpv_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_banner_tracks: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_banner_tracks` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_breezingforms
CREATE TABLE IF NOT EXISTS `qtdpv_breezingforms` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_breezingforms: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_breezingforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_breezingforms` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_categories
CREATE TABLE IF NOT EXISTS `qtdpv_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_alias` (`alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_categories: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_categories` DISABLE KEYS */;
INSERT INTO `qtdpv_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
	(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);
/*!40000 ALTER TABLE `qtdpv_categories` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_contact_details
CREATE TABLE IF NOT EXISTS `qtdpv_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_contact_details: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_contact_details` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_content
CREATE TABLE IF NOT EXISTS `qtdpv_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_content: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_content` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_contentitem_tag_map
CREATE TABLE IF NOT EXISTS `qtdpv_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- Copiando dados para a tabela localize.qtdpv_contentitem_tag_map: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_contentitem_tag_map` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_content_frontpage
CREATE TABLE IF NOT EXISTS `qtdpv_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_content_frontpage: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_content_frontpage` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_content_rating
CREATE TABLE IF NOT EXISTS `qtdpv_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_content_rating: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_content_rating` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_content_types
CREATE TABLE IF NOT EXISTS `qtdpv_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_content_types: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_content_types` DISABLE KEYS */;
INSERT INTO `qtdpv_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
	(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
	(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
	(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
	(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
	(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
	(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
	(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
	(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
	(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
	(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
	(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
	(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
	(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
	(14, 'BreezingForms', 'com_breezingforms.form', '', '', '', 'BreezingformsHelperRoute::getFormRoute', NULL);
/*!40000 ALTER TABLE `qtdpv_content_types` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_core_log_searches
CREATE TABLE IF NOT EXISTS `qtdpv_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_core_log_searches: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_core_log_searches` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_extensions
CREATE TABLE IF NOT EXISTS `qtdpv_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=720 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_extensions: ~154 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_extensions` DISABLE KEYS */;
INSERT INTO `qtdpv_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
	(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"pt-BR","site":"pt-BR"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"500","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"cde952a84540b83225960d688a1cce86"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
	(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
	(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
	(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.12","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.3.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"skin":"0","skin_admin":"0","mode":"2","mobile":"1","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet","valid_elements":"","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","resize_horizontal":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
	(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
	(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
	(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
	(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
	(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 1, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 564, '2015-12-07 19:03:25', 0, 0),
	(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
	(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
	(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1462065722}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":"","unique_id":"c139084409d47a11c82f91175c8c8cb51674479e","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"November 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"November 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"April 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(701, 'com_localize_empresa', 'component', 'com_localize_empresa', '', 1, 1, 0, 0, '{"name":"com_localize_empresa","type":"component","creationDate":"2016-02-25","author":"Victor Bento","copyright":"Copyright (C) 2015. Todos os direitos reservados.","authorEmail":"vgb.info@gmail.com","authorUrl":"http:\\/\\/victorbento.com.br","version":"CVS: 1.0.0","description":"Parte integrante do componente de recomenda\\u00e7\\u00e3o de im\\u00f3veis.","group":"","filename":"localize_empresa"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(702, 'PortugusdoBrasilpt-BR', 'language', 'pt-BR', '', 0, 1, 0, 0, '{"name":"Portugu\\u00eas do Brasil (pt-BR)","type":"language","creationDate":"2016-04-07","author":"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.1.1","description":"pt-BR site language","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(703, 'PortugusdoBrasilpt-BR', 'language', 'pt-BR', '', 1, 1, 0, 0, '{"name":"Portugu\\u00eas do Brasil (pt-BR)","type":"language","creationDate":"2016-04-07","author":"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas do Brasil","copyright":"Copyright (C) 2005-2016 Open Source Matters. Todos os direitos reservados.","authorEmail":"pt-br@joomlacarioca.com.br","authorUrl":"http:\\/\\/brasil.joomla.com","version":"3.5.1.1","description":"Brazilian Portuguese Site language for Joomla 3. 5. 0","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(704, 'Pacote do Idioma Português do Brasil (pt-BR)', 'package', 'pkg_pt-BR', '', 0, 1, 1, 0, '{"name":"Pacote do Idioma Portugu\\u00eas do Brasil (pt-BR)","type":"package","creationDate":"2016-04-07","author":"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas do Brasil","copyright":"","authorEmail":"pt-br@joomlacarioca.com.br","authorUrl":"http:\\/\\/brasil.joomla.com","version":"3.5.1.1","description":"\\n      <div style=\\"text-align:left;\\">\\n  <h2>Pacote de Idioma Portugu\\u00eas Brasileiro (pt-BR) completo para Joomla! 3.5.1 instalado com sucesso!<\\/h2>\\n  <h3>Vers\\u00e3o 3.5.1v1 <\\/h3>\\n  <p>Por favor, informe qualquer problema ou assunto relacionado encontrado na p\\u00e1gina <a href=\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\" target=\\"_blank\\">Grupo Tradu\\u00e7\\u00f5es Joomla pt-BR<\\/a> no Facebook.<\\/p>\\n  <p>Traduzido pela <a href=\\"http:\\/\\/brasil.joomla.com\\/como-participar\\/9-traducao-no-projeto\\" target=\\"_blank\\">Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro<\\/a>.<\\/p>\\n  <h2>Successfully installed the Full Brazilian Portugues (pt-BR) Language Pack for Joomla! 3.5.1<\\/h2>\\n  <h3>Version 3.5.1v1<\\/h3>\\n  <p>Please report any bugs or issues at the <a href=\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\" target=\\"_blank\\">pt-BR Translation Group<\\/a> Facebook page.<\\/p>\\n  <p>Translated by the <a href=\\"http:\\/\\/brasil.joomla.com\\/como-participar\\/9-traducao-no-projeto\\" target=\\"_blank\\">Brazilian Portuguese Translation Team<\\/a>.<\\/p>\\n  <\\/div>\\n      ","group":"","filename":"pkg_pt-BR"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(705, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"17 February 2016","author":"Joomla! Project","copyright":"Copyright (C) 2013-2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.1.0","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","filename":"webinstaller"}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(706, 'frontend', 'template', 'frontend', '', 0, 1, 1, 0, '{"name":"frontend","type":"template","creationDate":"xxxx-xx-xx","author":"your name","copyright":"Copyright \\u00a9 xxxx example.com","authorEmail":"your.name@example.com","authorUrl":"http:\\/\\/www.example.com","version":"1.0.0","description":" \\n\\t\\t<h1>frontend<\\/h1>\\n\\t\\t<p>Created by <a href=\\"http:\\/\\/www.example.com\\" target=\\"_blank\\">your name | example.com<\\/a>.<\\/p>\\n\\t","group":"","filename":"templateDetails"}', '{"runless":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(707, 'com_localize_imovel', 'component', 'com_localize_imovel', '', 1, 1, 0, 0, '{"name":"com_localize_imovel","type":"component","creationDate":"2016-02-25","author":"Victor Bento","copyright":"Copyright (C) 2015. Todos os direitos reservados.","authorEmail":"vgb.info@gmail.com","authorUrl":"http:\\/\\/victorbento.com.br","version":"CVS: 1.0.0","description":"","group":"","filename":"localize_imovel"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(708, 'JCE', 'component', 'com_jce', '', 1, 1, 0, 0, '{"name":"JCE","type":"component","creationDate":"08 April 2016","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.5.16","description":"WF_ADMIN_DESC","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(709, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_jce","type":"plugin","creationDate":"08 April 2016","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.5.16","description":"WF_EDITOR_PLUGIN_DESC","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(710, 'plg_system_jce', 'plugin', 'jce', 'system', 0, 1, 1, 0, '{"name":"plg_system_jce","type":"plugin","creationDate":"08 April 2016","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.5.16","description":"PLG_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(711, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"08 April 2016","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved","authorEmail":"@@email@@","authorUrl":"www.joomalcontenteditor.net","version":"2.5.16","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":"","filename":"jcefilebrowser"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(712, 'Pesquisa Imóvel', 'module', 'mod_pesquisaimovel', '', 0, 1, 0, 0, '{"name":"Pesquisa Im\\u00f3vel","type":"module","creationDate":"March 2015","author":"Victor Bento","copyright":"Copyright  Victor Bento. All rights reserved.","authorEmail":"contato@victorbento.com.br","authorUrl":"www.victorbento.com.br","version":"5.0.10","description":"pesquisaimovel","group":"","filename":"mod_pesquisaimovel"}', '{"codeeditor":"","textareause":"1","phpcode":"","phpuse":"1","script":"","scriptuse":"1","itemid":"a","contenttitleuse":"1","contentuse":"1","content1":"1","content2":"2","content3":"3","graphics":"2","bgpattern":"TinySquare2","colour1":"#9CA5FF","trans1":"1","bordercol":"#ACB5FF","bordersz":"4","shadcol":"#444444","shadsz":"4","margin-leftmodule":"","paddingleft":"","paddingright":"","paddingtop":"","paddingbottom":"","margin-top":"","margin-bottom":"","width":"100","widthunit":"%","colour2":"","trans2":"1","moduleclass_sfx":"","modno_bm":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(713, 'Anúncios de imóveis', 'module', 'mod_imovelanuncios', '', 0, 1, 0, 0, '{"name":"An\\u00fancios de im\\u00f3veis","type":"module","creationDate":"March 2015","author":"Victor Bento","copyright":"Copyright  Victor Bento. All rights reserved.","authorEmail":"contato@victorbento.com.br","authorUrl":"www.victorbento.com.br","version":"5.0.10","description":"imovelanuncios","group":"","filename":"mod_imovelanuncios"}', '{"codeeditor":"","textareause":"1","phpcode":"","phpuse":"1","script":"","scriptuse":"1","itemid":"a","contenttitleuse":"1","contentuse":"1","content1":"1","content2":"2","content3":"3","graphics":"2","bgpattern":"TinySquare2","colour1":"#9CA5FF","trans1":"1","bordercol":"#ACB5FF","bordersz":"4","shadcol":"#444444","shadsz":"4","margin-leftmodule":"","paddingleft":"","paddingright":"","paddingtop":"","paddingbottom":"","margin-top":"","margin-bottom":"","width":"100","widthunit":"%","colour2":"","trans2":"1","moduleclass_sfx":"","modno_bm":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(714, 'Recomendação de imóveis', 'module', 'mod_recomendacao', '', 0, 1, 0, 0, '{"name":"Recomenda\\u00e7\\u00e3o de im\\u00f3veis","type":"module","creationDate":"March 2015","author":"Victor Bento","copyright":"Copyright  Victor Bento. All rights reserved.","authorEmail":"contato@victorbento.com.br","authorUrl":"www.victorbento.com.br","version":"5.0.10","description":"recomendacao","group":"","filename":"mod_recomendacao"}', '{"codeeditor":"","textareause":"1","phpcode":"","phpuse":"1","script":"","scriptuse":"1","itemid":"a","contenttitleuse":"1","contentuse":"1","content1":"1","content2":"2","content3":"3","graphics":"2","bgpattern":"TinySquare2","colour1":"#9CA5FF","trans1":"1","bordercol":"#ACB5FF","bordersz":"4","shadcol":"#444444","shadsz":"4","margin-leftmodule":"","paddingleft":"","paddingright":"","paddingtop":"","paddingbottom":"","margin-top":"","margin-bottom":"","width":"100","widthunit":"%","colour2":"","trans2":"1","moduleclass_sfx":"","modno_bm":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(715, 'PLG_SYS_BYEBYEGENERATOR', 'plugin', 'byebyegenerator', 'system', 0, 1, 1, 0, '{"name":"PLG_SYS_BYEBYEGENERATOR","type":"plugin","creationDate":"May 2010","author":"Michael Richey","copyright":"Copyright (C) 2008 Michael Richey. All rights reserved.","authorEmail":"byebyegenerator@richeyweb.com","authorUrl":"http:\\/\\/www.richeyweb.com","version":"1.11","description":"PLG_SYS_BYEBYEGENERATOR_XML_DESC","group":"","filename":"byebyegenerator"}', '{"generator":"1","custom":"localize","robots":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(716, 'PLG_SYS_ADMINEXILE', 'plugin', 'adminexile', 'system', 0, 1, 1, 0, '{"name":"PLG_SYS_ADMINEXILE","type":"plugin","creationDate":"Jan 2011","author":"Michael Richey","copyright":"Copyright (C) 2011 Michael Richey. All rights reserved.","authorEmail":"adminexile@richeyweb.com","authorUrl":"http:\\/\\/www.richeyweb.com","version":"2.3.6","description":"PLG_SYS_ADMINEXILE_XML_DESC","group":"","filename":"adminexile"}', '{"key":"conslocalize","twofactor":"1","keyvalue":"iniciacao","tmpwhitelist":"0","tmpperiod":"60","redirect":"{HOME}","fourofour":"<!DOCTYPE HTML PUBLIC \\"-\\/\\/IETF\\/\\/DTD HTML 2.0\\/\\/EN\\">\\r\\n<html><head>\\r\\n<title>404 Not Found<\\/title>\\r\\n<\\/head><body>\\r\\n<h1>Not Found<\\/h1>\\r\\n<p>The requested URL {url} was not found on this server.<\\/p>\\r\\n<hr>\\r\\n{serversignature}\\r\\n<\\/body><\\/html>","frontrestrict":"0","maillink":"1","maillinkgroup":["8"],"ipsecurity":"1","whitelist":"[\\"127.0.0.1\\"]","blacklist":"[\\"192.168.0.0\\/16\\",\\"169.254.0.0\\/16\\",\\"172.16.0.0\\/12\\",\\"10.0.0.0\\/8\\"]","blemail":"1","blemailonce":"1","blemailuser":"564","bruteforce":"1","bfmax":"5","bfpenalty":"5","bfpenaltymultiplier":"2","bfemail":"1","bfemailonce":"1","bfemailuser":"564"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(717, 'BreezingForms', 'component', 'com_breezingforms', '', 1, 1, 0, 0, '{"name":"BreezingForms","type":"component","creationDate":"2016-04-06","author":"Markus Bopp | Until FacileForms Version 1.4.7: Peter Koch","copyright":"This Joomla! component is released under the GNU\\/GPL license","authorEmail":"markus.bopp@crosstec.org","authorUrl":"www.crosstec.org","version":"Lite (build 913)","description":"Installation successful. Next find BreezingForms in the Components menu, and finish the installation process.","group":"","filename":"breezingforms"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(718, 'BreezingForms', 'module', 'mod_breezingforms', '', 0, 1, 0, 0, '{"name":"BreezingForms","type":"module","creationDate":"November 2013","author":"Markus Bopp - Crosstec Solutions | Until Version 1.4.7: Peter Koch","copyright":"This Joomla! component is released under the GNU\\/GPL license","authorEmail":"markus.bopp@crosstec.de","authorUrl":"www.crosstec.de","version":"1.8.4","description":"\\n\\t\\tEnter the form name for displaying in the desired module position.\\n    ","group":"","filename":"mod_breezingforms"}', '{"ff_mod_name":"","ff_mod_page":"1","ff_mod_editable":"0","ff_mod_editable_override":"0","ff_mod_frame":"0","ff_mod_border":"0","ff_mod_align":"1","ff_mod_left":"0","ff_mod_top":"0","ff_mod_parprv":"","ff_mod_parpub":"","moduleclass_sfx":"","owncache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(719, 'BreezingForms', 'plugin', 'breezingforms', 'content', 0, 1, 1, 0, '{"name":"BreezingForms","type":"plugin","creationDate":"August 2012","author":"Markus Bopp - Crosstec Solutions | Until Version 1.4.7: Peter Koch","copyright":"This Joomla! component is released under the GNU\\/GPL license","authorEmail":"markus.bopp@crosstec.de","authorUrl":"www.crosstec.de","version":"1.8","description":"\\n\\t\\n<h3>BreezingForms<\\/h3>\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t<h2>BreezingForms Plugin: Displays forms inline in articles<\\/h2>\\n<h3>Requirements:<\\/h3><ul>\\n\\n<li>The BreezingForms component must also be installed (same version)<\\/li>\\n<li>The bot must be published<\\/li>\\n<\\/ul>\\n<h3>Pattern syntax:<\\/h3><code><pre>\\n\\t{ BreezingForms : <em>formname<\\/em> [, <em>page<\\/em>, <em>border<\\/em>, <em>urlparams<\\/em>, <em>suffix<\\/em> ] }\\n\\n<\\/pre><\\/code><h3>Parameter description:<\\/h3><code><pre>\\n\\tBreezingForms : This tag must be present literally and in exact upper\\/lowercase.\\n\\t<em>formname<\\/em>    : The name of the form to include, also in exact upper\\/lowercase.\\n\\t<em>page<\\/em>        : The starting page number.   Defaults to 1 when omitted.\\n\\t<em>border<\\/em>      : 0=no border, 1=with border. Defaults to 1 when omitted.\\n\\t<em>urlparams<\\/em>   : Parameters to pass in URL style (no commas or closing brackets allowed).\\n\\t<em>suffix<\\/em>      : Suffix appended to all CSS class names in the form.\\n\\n<\\/pre><\\/code><h3>Examples:<\\/h3><code><pre>\\n\\t{ BreezingForms : SampleContactForm }\\n\\t{ BreezingForms : MyVeryForm, 2 }\\n\\t{ BreezingForms : AnotherForm, 1, 0, &amp;amp;ff_param_xy=123&amp;amp;ff_param_foo=bar }\\n\\t{BreezingForms:testform,,,&amp;amp;ff_param_foo=bar,mysuffix}\\n<\\/pre><\\/code>But attention with the following one. Basicly it would work, but when\\nusing a WYSIWYG editor, it will insert linebreaks as <code>&lt;br\\/&gt;<\\/code>\\nand the bot will no longer recognize the pattern:<code><pre>\\n\\t{\\n\\t\\tBreezingForms:\\n\\n\\t\\t\\tAnotherForm,\\n\\t\\t\\t1,\\n\\t\\t\\t0,\\n\\t\\t\\t&amp;amp;ff_param_xy=123&amp;amp;ff_param_foo=bar\\n\\t}\\n<\\/pre><\\/code>\\n\\n\\n    ","group":"","filename":"breezingforms"}', '{"load_in_iframe":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
/*!40000 ALTER TABLE `qtdpv_extensions` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_facileforms_compmenus
CREATE TABLE IF NOT EXISTS `qtdpv_facileforms_compmenus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package` varchar(30) NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `page` int(11) NOT NULL DEFAULT '1',
  `frame` tinyint(1) NOT NULL DEFAULT '0',
  `border` tinyint(1) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_facileforms_compmenus: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_facileforms_compmenus` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_facileforms_compmenus` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_facileforms_config
CREATE TABLE IF NOT EXISTS `qtdpv_facileforms_config` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_facileforms_config: ~29 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_facileforms_config` DISABLE KEYS */;
INSERT INTO `qtdpv_facileforms_config` (`id`, `value`) VALUES
	('archived', '0'),
	('arealarge', '20'),
	('areamedium', '12'),
	('areasmall', '4'),
	('cellnewline', '1'),
	('compress', '1'),
	('csvdelimiter', ';'),
	('csvquote', '"'),
	('emailadr', 'vgb.info@gmail.com'),
	('enable_classic', '0'),
	('exported', '0'),
	('formname', ''),
	('formpkg', 'QuickModeForms'),
	('getprovider', '0'),
	('gridcolor1', '#e0e0ff'),
	('gridcolor2', '#ffe0e0'),
	('gridshow', '1'),
	('gridsize', '10'),
	('images', '{mossite}/components/com_breezingforms/images'),
	('limitdesc', '100'),
	('livesite', '0'),
	('menupkg', ''),
	('movepixels', '10'),
	('piecepkg', ''),
	('scriptpkg', ''),
	('stylesheet', '1'),
	('uploads', '{mospath}/media/breezingforms/uploads'),
	('viewed', '0'),
	('wysiwyg', '0');
/*!40000 ALTER TABLE `qtdpv_facileforms_config` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_facileforms_elements
CREATE TABLE IF NOT EXISTS `qtdpv_facileforms_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form` int(11) NOT NULL DEFAULT '0',
  `page` int(11) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `class1` varchar(30) DEFAULT NULL,
  `class2` varchar(30) DEFAULT NULL,
  `logging` tinyint(1) NOT NULL DEFAULT '1',
  `posx` int(11) DEFAULT NULL,
  `posxmode` tinyint(1) NOT NULL DEFAULT '0',
  `posy` int(11) DEFAULT NULL,
  `posymode` tinyint(1) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `widthmode` tinyint(1) NOT NULL DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `heightmode` tinyint(1) NOT NULL DEFAULT '0',
  `flag1` tinyint(1) NOT NULL DEFAULT '0',
  `flag2` tinyint(1) NOT NULL DEFAULT '0',
  `data1` text,
  `data2` text,
  `data3` text,
  `script1cond` tinyint(1) NOT NULL DEFAULT '0',
  `script1id` int(11) DEFAULT NULL,
  `script1code` text,
  `script1flag1` tinyint(1) NOT NULL DEFAULT '0',
  `script1flag2` tinyint(1) NOT NULL DEFAULT '0',
  `script2cond` tinyint(1) NOT NULL DEFAULT '0',
  `script2id` int(11) DEFAULT NULL,
  `script2code` text,
  `script2flag1` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag2` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag3` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag4` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag5` tinyint(1) NOT NULL DEFAULT '0',
  `script3cond` tinyint(1) NOT NULL DEFAULT '0',
  `script3id` int(11) DEFAULT NULL,
  `script3code` text,
  `script3msg` text,
  `mailback` tinyint(1) NOT NULL DEFAULT '0',
  `mailbackfile` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_facileforms_elements: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_facileforms_elements` DISABLE KEYS */;
INSERT INTO `qtdpv_facileforms_elements` (`id`, `form`, `page`, `ordering`, `published`, `name`, `title`, `type`, `class1`, `class2`, `logging`, `posx`, `posxmode`, `posy`, `posymode`, `width`, `widthmode`, `height`, `heightmode`, `flag1`, `flag2`, `data1`, `data2`, `data3`, `script1cond`, `script1id`, `script1code`, `script1flag1`, `script1flag2`, `script2cond`, `script2id`, `script2code`, `script2flag1`, `script2flag2`, `script2flag3`, `script2flag4`, `script2flag5`, `script3cond`, `script3id`, `script3code`, `script3msg`, `mailback`, `mailbackfile`) VALUES
	(1, 1, 1, 1, 1, 'Nome', 'Nome', 'Text', '', '', 1, 0, 0, 0, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 1, 44, '', 'Informe seu nome', 0, ''),
	(2, 1, 1, 2, 1, 'Email', 'E-mail', 'Text', '', '', 1, 0, 0, 40, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 1, 42, '', 'Informe um e-mail válido', 0, ''),
	(3, 1, 1, 3, 1, 'Telefone', 'Telefone', 'Text', '', '', 1, 0, 0, 80, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 1, 44, '', 'Informe o número de seu telefone', 0, ''),
	(4, 1, 1, 4, 1, 'Mensagem', 'Mensagem', 'Textarea', '', '', 1, 0, 0, 120, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 1, 44, '', 'Informe sua mensagem', 0, ''),
	(29, 1, 1, 0, 1, 'bfFakeName', 'bfFakeTitle', '', '', '', 0, 0, 0, 160, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 41, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
	(30, 1, 1, 0, 1, 'bfFakeName2', 'bfFakeTitle2', '', '', '', 0, 0, 0, 200, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 23, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
	(31, 1, 1, 0, 1, 'bfFakeName3', 'bfFakeTitle3', '', '', '', 0, 0, 0, 240, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 40, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
	(32, 1, 1, 0, 1, 'bfFakeName4', 'bfFakeTitle4', '', '', '', 0, 0, 0, 280, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 38, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '');
/*!40000 ALTER TABLE `qtdpv_facileforms_elements` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_facileforms_forms
CREATE TABLE IF NOT EXISTS `qtdpv_facileforms_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alt_mailfrom` text,
  `alt_fromname` text,
  `mb_alt_mailfrom` text,
  `mb_alt_fromname` text,
  `mailchimp_email_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_checkbox_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_api_key` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_list_id` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_double_optin` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_mergevars` text,
  `mailchimp_text_html_mobile_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_send_errors` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_update_existing` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_replace_interests` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_send_welcome` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_default_type` varchar(255) NOT NULL DEFAULT 'text',
  `mailchimp_delete_member` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_send_goodbye` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_send_notify` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_unsubscribe_field` varchar(255) NOT NULL DEFAULT '',
  `salesforce_token` varchar(255) NOT NULL DEFAULT '',
  `salesforce_username` varchar(255) NOT NULL DEFAULT '',
  `salesforce_password` varchar(255) NOT NULL DEFAULT '',
  `salesforce_type` varchar(255) NOT NULL DEFAULT '',
  `salesforce_fields` text,
  `salesforce_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `dropbox_email` varchar(255) NOT NULL DEFAULT '',
  `dropbox_password` varchar(255) NOT NULL DEFAULT '',
  `dropbox_folder` text,
  `dropbox_submission_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `dropbox_submission_types` varchar(255) NOT NULL DEFAULT 'pdf',
  `tags_content` text NOT NULL,
  `tags_content_template` mediumtext NOT NULL,
  `tags_content_template_default_element` int(11) NOT NULL DEFAULT '0',
  `tags_form` text NOT NULL,
  `tags_content_default_category` int(11) NOT NULL DEFAULT '0',
  `tags_content_default_state` int(11) NOT NULL DEFAULT '1',
  `tags_content_default_access` int(11) NOT NULL DEFAULT '1',
  `tags_content_default_language` varchar(7) NOT NULL DEFAULT '*',
  `tags_content_default_featured` int(11) NOT NULL DEFAULT '0',
  `tags_content_default_publishup` varchar(255) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags_content_default_publishdown` varchar(255) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `autoheight` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `template_code` longtext NOT NULL,
  `template_code_processed` longtext NOT NULL,
  `template_areas` longtext NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `runmode` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `custom_mail_subject` varchar(255) NOT NULL DEFAULT '',
  `mb_custom_mail_subject` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `class1` varchar(30) DEFAULT NULL,
  `class2` varchar(30) DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT '0',
  `widthmode` tinyint(1) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `heightmode` tinyint(1) NOT NULL DEFAULT '0',
  `pages` int(11) NOT NULL DEFAULT '1',
  `emailntf` tinyint(1) NOT NULL DEFAULT '1',
  `mb_emailntf` tinyint(1) NOT NULL DEFAULT '1',
  `emaillog` tinyint(1) NOT NULL DEFAULT '1',
  `mb_emaillog` tinyint(1) NOT NULL DEFAULT '1',
  `emailxml` tinyint(1) NOT NULL DEFAULT '0',
  `mb_emailxml` tinyint(1) NOT NULL DEFAULT '0',
  `email_type` tinyint(1) NOT NULL DEFAULT '0',
  `mb_email_type` tinyint(1) NOT NULL DEFAULT '0',
  `email_custom_template` text,
  `mb_email_custom_template` text,
  `email_custom_html` tinyint(1) NOT NULL DEFAULT '0',
  `mb_email_custom_html` tinyint(1) NOT NULL DEFAULT '0',
  `emailadr` text,
  `dblog` tinyint(1) NOT NULL DEFAULT '1',
  `script1cond` tinyint(1) NOT NULL DEFAULT '0',
  `script1id` int(11) DEFAULT NULL,
  `script1code` text,
  `script2cond` tinyint(1) NOT NULL DEFAULT '0',
  `script2id` int(11) DEFAULT NULL,
  `script2code` text,
  `piece1cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece1id` int(11) DEFAULT NULL,
  `piece1code` text,
  `piece2cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece2id` int(11) DEFAULT NULL,
  `piece2code` text,
  `piece3cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece3id` int(11) DEFAULT NULL,
  `piece3code` text,
  `piece4cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece4id` int(11) DEFAULT NULL,
  `piece4code` text,
  `prevmode` tinyint(1) NOT NULL DEFAULT '2',
  `prevwidth` int(11) DEFAULT NULL,
  `filter_state` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_facileforms_forms: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_facileforms_forms` DISABLE KEYS */;
INSERT INTO `qtdpv_facileforms_forms` (`id`, `alt_mailfrom`, `alt_fromname`, `mb_alt_mailfrom`, `mb_alt_fromname`, `mailchimp_email_field`, `mailchimp_checkbox_field`, `mailchimp_api_key`, `mailchimp_list_id`, `mailchimp_double_optin`, `mailchimp_mergevars`, `mailchimp_text_html_mobile_field`, `mailchimp_send_errors`, `mailchimp_update_existing`, `mailchimp_replace_interests`, `mailchimp_send_welcome`, `mailchimp_default_type`, `mailchimp_delete_member`, `mailchimp_send_goodbye`, `mailchimp_send_notify`, `mailchimp_unsubscribe_field`, `salesforce_token`, `salesforce_username`, `salesforce_password`, `salesforce_type`, `salesforce_fields`, `salesforce_enabled`, `dropbox_email`, `dropbox_password`, `dropbox_folder`, `dropbox_submission_enabled`, `dropbox_submission_types`, `tags_content`, `tags_content_template`, `tags_content_template_default_element`, `tags_form`, `tags_content_default_category`, `tags_content_default_state`, `tags_content_default_access`, `tags_content_default_language`, `tags_content_default_featured`, `tags_content_default_publishup`, `tags_content_default_publishdown`, `autoheight`, `package`, `template_code`, `template_code_processed`, `template_areas`, `ordering`, `published`, `runmode`, `name`, `custom_mail_subject`, `mb_custom_mail_subject`, `title`, `description`, `class1`, `class2`, `width`, `widthmode`, `height`, `heightmode`, `pages`, `emailntf`, `mb_emailntf`, `emaillog`, `mb_emaillog`, `emailxml`, `mb_emailxml`, `email_type`, `mb_email_type`, `email_custom_template`, `mb_email_custom_template`, `email_custom_html`, `mb_email_custom_html`, `emailadr`, `dblog`, `script1cond`, `script1id`, `script1code`, `script2cond`, `script2id`, `script2code`, `piece1cond`, `piece1id`, `piece1code`, `piece2cond`, `piece2id`, `piece2code`, `piece3cond`, `piece3id`, `piece3code`, `piece4cond`, `piece4id`, `piece4code`, `prevmode`, `prevwidth`, `filter_state`) VALUES
	(1, NULL, NULL, NULL, NULL, '', '', '', '', 1, NULL, '', 0, 0, 0, 0, 'text', 0, 1, 1, '', '', '', '', '', NULL, 0, '', '', NULL, 0, 'pdf', '', '', 0, '', 0, 1, 1, '*', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'QuickModeForms', 'eyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVSb290Q2xhc3MiLCJpZCI6ImJmUXVpY2tNb2RlUm9vdCIsIm1kYXRhIjoie1widHlwZVwiOiBcInJvb3RcIn0ifSwicHJvcGVydGllcyI6eyJ0eXBlIjoicm9vdCIsInRpdGxlIjoiQ29udGF0byIsIm5hbWUiOiJDb250YXRvIiwicm9sbG92ZXIiOnRydWUsInJvbGxvdmVyQ29sb3IiOiIjZmZjIiwidG9nZ2xlRmllbGRzIjoiIiwiZGVzY3JpcHRpb24iOiIiLCJtYWlsTm90aWZpY2F0aW9uIjp0cnVlLCJtYWlsUmVjaXBpZW50IjoidmdiLmluZm9AZ21haWwuY29tIiwic3VibWl0SW5jbHVkZSI6dHJ1ZSwic3VibWl0TGFiZWwiOiJFbnZpYXIiLCJjYW5jZWxJbmNsdWRlIjp0cnVlLCJjYW5jZWxMYWJlbCI6IkxpbXBhciIsInBhZ2luZ0luY2x1ZGUiOnRydWUsInBhZ2luZ05leHRMYWJlbCI6Im5leHQiLCJwYWdpbmdQcmV2TGFiZWwiOiJiYWNrIiwidGhlbWUiOm51bGwsInRoZW1lYm9vdHN0cmFwIjoiIiwidGhlbWVib290c3RyYXBiZWZvcmUiOiIiLCJ0aGVtZWJvb3RzdHJhcExhYmVsVG9wIjpmYWxzZSwidGhlbWVib290c3RyYXBUaGVtZUVuZ2luZSI6ImJvb3RzdHJhcCIsInRoZW1lYm9vdHN0cmFwVXNlSGVyb1VuaXQiOmZhbHNlLCJ0aGVtZWJvb3RzdHJhcFVzZVdlbGwiOmZhbHNlLCJ0aGVtZWJvb3RzdHJhcFVzZVByb2dyZXNzIjpmYWxzZSwidGhlbWV1c2Vib290c3RyYXBsZWdhY3kiOmZhbHNlLCJmYWRlSW4iOmZhbHNlLCJsYXN0UGFnZVRoYW5rWW91Ijp0cnVlLCJzdWJtaXR0ZWRTY3JpcHRDb25kaWR0aW9uIjotMSwic3VibWl0dGVkU2NyaXB0Q29kZSI6IiIsInVzZUVycm9yQWxlcnRzIjpmYWxzZSwidXNlRGVmYXVsdEVycm9ycyI6dHJ1ZSwidXNlQmFsbG9vbkVycm9ycyI6ZmFsc2UsImRpc2FibGVKUXVlcnkiOmZhbHNlLCJqb29tbGFIaW50IjpmYWxzZSwibW9iaWxlRW5hYmxlZCI6dHJ1ZSwiZm9yY2VNb2JpbGUiOmZhbHNlLCJmb3JjZU1vYmlsZVVybCI6ImluZGV4LnBocCIsInRpdGxlX3RyYW5zbGF0aW9uIjoiIiwic3VibWl0TGFiZWxfdHJhbnNsYXRpb24iOiIiLCJjYW5jZWxMYWJlbF90cmFuc2xhdGlvbiI6IiIsInBhZ2luZ05leHRMYWJlbF90cmFuc2xhdGlvbiI6IiIsInBhZ2luZ1ByZXZMYWJlbF90cmFuc2xhdGlvbiI6IiIsInRoZW1lYm9vdHN0cmFwdmFycyI6IiJ9LCJzdGF0ZSI6Im9wZW4iLCJkYXRhIjp7InRpdGxlIjoiQ29udGF0byIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl9mb3JtLnBuZyJ9LCJjaGlsZHJlbiI6W3siYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlUGFnZUNsYXNzIiwiaWQiOiJiZlF1aWNrTW9kZVBhZ2UxIiwibWRhdGEiOiJ7XCJkZWxldGFibGVcIjogdHJ1ZSwgXCJ0eXBlXCI6IFwicGFnZVwifSJ9LCJwcm9wZXJ0aWVzIjp7InR5cGUiOiJwYWdlIiwicGFnZU51bWJlciI6MSwicGFnZUludHJvIjoiIn0sInN0YXRlIjoib3BlbiIsImRhdGEiOnsidGl0bGUiOiJQYWdlIDEiLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fcGFnZS5wbmcifSwiY2hpbGRyZW4iOlt7ImF0dHJpYnV0ZXMiOnsiY2xhc3MiOiJiZlF1aWNrTW9kZUVsZW1lbnRDbGFzcyIsImlkIjoiTm9tZSIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcImVsZW1lbnRcIn0ifSwiZGF0YSI6eyJ0aXRsZSI6Ik5vbWUiLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fdGV4dC1maWVsZC5wbmcifSwicHJvcGVydGllcyI6eyJ0eXBlIjoiZWxlbWVudCIsImJmVHlwZSI6ImJmVGV4dGZpZWxkIiwibGFiZWwiOiJOb21lIiwibGFiZWxQb3NpdGlvbiI6ImxlZnQiLCJiZk5hbWUiOiJOb21lIiwiZGJJZCI6MSwib3JkZXJOdW1iZXIiOiItMSIsInRhYkluZGV4IjoiLTEiLCJsb2dnaW5nIjp0cnVlLCJoaWRlTGFiZWwiOmZhbHNlLCJyZXF1aXJlZCI6dHJ1ZSwiaGludCI6IiIsIm9mZiI6ZmFsc2UsInBsYWNlaG9sZGVyIjoiSW5mb3JtZSBzZXUgbm9tZSIsInZhbHVlIjoiIiwibWF4TGVuZ3RoIjoiIiwicmVhZG9ubHkiOmZhbHNlLCJwYXNzd29yZCI6ZmFsc2UsIm1haWxiYWNrIjpmYWxzZSwibWFpbGJhY2tBc1NlbmRlciI6ZmFsc2UsIm1haWxiYWNrZmlsZSI6IiIsInNpemUiOiIiLCJ2YWxpZGF0aW9uQ29uZGl0aW9uIjoxLCJ2YWxpZGF0aW9uSWQiOiI0NCIsInZhbGlkYXRpb25Db2RlIjoiIiwidmFsaWRhdGlvbk1lc3NhZ2UiOiJJbmZvcm1lIHNldSBub21lIiwidmFsaWRhdGlvbkZ1bmN0aW9uTmFtZSI6ImZmX3ZhbHVlbm90ZW1wdHkiLCJpbml0Q29uZGl0aW9uIjowLCJpbml0SWQiOiI4IiwiaW5pdENvZGUiOiIiLCJpbml0RnVuY3Rpb25OYW1lIjoiIiwiaW5pdEZvcm1FbnRyeSI6MCwiaW5pdFBhZ2VFbnRyeSI6MCwiYWN0aW9uQ29uZGl0aW9uIjowLCJhY3Rpb25JZCI6IjE2IiwiYWN0aW9uQ29kZSI6IiIsImFjdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImFjdGlvbkNsaWNrIjowLCJhY3Rpb25CbHVyIjowLCJhY3Rpb25DaGFuZ2UiOjAsImFjdGlvbkZvY3VzIjowLCJhY3Rpb25TZWxlY3QiOjAsImhpZGVJbk1haWxiYWNrIjpmYWxzZSwidmFsdWVfdHJhbnNsYXRpb24iOiIiLCJwbGFjZWhvbGRlcl90cmFuc2xhdGlvbiI6IiIsImxhYmVsX3RyYW5zbGF0aW9uIjoiIiwiaGludF90cmFuc2xhdGlvbiI6IiIsInZhbGlkYXRpb25NZXNzYWdlX3RyYW5zbGF0aW9uIjoiIn19LHsiYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlRWxlbWVudENsYXNzIiwiaWQiOiJFbWFpbCIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcImVsZW1lbnRcIn0ifSwiZGF0YSI6eyJ0aXRsZSI6IkUtbWFpbCIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl90ZXh0LWZpZWxkLnBuZyJ9LCJwcm9wZXJ0aWVzIjp7InR5cGUiOiJlbGVtZW50IiwiYmZUeXBlIjoiYmZUZXh0ZmllbGQiLCJsYWJlbCI6IkUtbWFpbCIsImxhYmVsUG9zaXRpb24iOiJsZWZ0IiwiYmZOYW1lIjoiRW1haWwiLCJkYklkIjoyLCJvcmRlck51bWJlciI6Ii0xIiwidGFiSW5kZXgiOiItMSIsImxvZ2dpbmciOnRydWUsImhpZGVMYWJlbCI6ZmFsc2UsInJlcXVpcmVkIjp0cnVlLCJoaW50IjoiIiwib2ZmIjpmYWxzZSwicGxhY2Vob2xkZXIiOiJJbmZvcm1lIHNldSBlLW1haWwiLCJ2YWx1ZSI6IiIsIm1heExlbmd0aCI6IiIsInJlYWRvbmx5IjpmYWxzZSwicGFzc3dvcmQiOmZhbHNlLCJtYWlsYmFjayI6ZmFsc2UsIm1haWxiYWNrQXNTZW5kZXIiOmZhbHNlLCJtYWlsYmFja2ZpbGUiOiIiLCJzaXplIjoiIiwidmFsaWRhdGlvbkNvbmRpdGlvbiI6MSwidmFsaWRhdGlvbklkIjoiNDIiLCJ2YWxpZGF0aW9uQ29kZSI6IiIsInZhbGlkYXRpb25NZXNzYWdlIjoiSW5mb3JtZSB1bSBlLW1haWwgdlx1MDBlMWxpZG8iLCJ2YWxpZGF0aW9uRnVuY3Rpb25OYW1lIjoiZmZfdmFsaWRlbWFpbCIsImluaXRDb25kaXRpb24iOjAsImluaXRJZCI6IjgiLCJpbml0Q29kZSI6IiIsImluaXRGdW5jdGlvbk5hbWUiOiIiLCJpbml0Rm9ybUVudHJ5IjowLCJpbml0UGFnZUVudHJ5IjowLCJhY3Rpb25Db25kaXRpb24iOjAsImFjdGlvbklkIjoiMTYiLCJhY3Rpb25Db2RlIjoiIiwiYWN0aW9uRnVuY3Rpb25OYW1lIjoiIiwiYWN0aW9uQ2xpY2siOjAsImFjdGlvbkJsdXIiOjAsImFjdGlvbkNoYW5nZSI6MCwiYWN0aW9uRm9jdXMiOjAsImFjdGlvblNlbGVjdCI6MCwiaGlkZUluTWFpbGJhY2siOmZhbHNlLCJ2YWx1ZV90cmFuc2xhdGlvbiI6IiIsInBsYWNlaG9sZGVyX3RyYW5zbGF0aW9uIjoiIiwibGFiZWxfdHJhbnNsYXRpb24iOiIiLCJoaW50X3RyYW5zbGF0aW9uIjoiIiwidmFsaWRhdGlvbk1lc3NhZ2VfdHJhbnNsYXRpb24iOiIifX0seyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVFbGVtZW50Q2xhc3MiLCJpZCI6IlRlbGVmb25lIiwibWRhdGEiOiJ7XCJkZWxldGFibGVcIjogdHJ1ZSwgXCJ0eXBlXCI6IFwiZWxlbWVudFwifSJ9LCJkYXRhIjp7InRpdGxlIjoiVGVsZWZvbmUiLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fdGV4dC1maWVsZC5wbmcifSwicHJvcGVydGllcyI6eyJ0eXBlIjoiZWxlbWVudCIsImJmVHlwZSI6ImJmVGV4dGZpZWxkIiwibGFiZWwiOiJUZWxlZm9uZSIsImxhYmVsUG9zaXRpb24iOiJsZWZ0IiwiYmZOYW1lIjoiVGVsZWZvbmUiLCJkYklkIjozLCJvcmRlck51bWJlciI6Ii0xIiwidGFiSW5kZXgiOiItMSIsImxvZ2dpbmciOnRydWUsImhpZGVMYWJlbCI6ZmFsc2UsInJlcXVpcmVkIjp0cnVlLCJoaW50IjoiIiwib2ZmIjpmYWxzZSwicGxhY2Vob2xkZXIiOiJJbmZvcm1lIHNldSB0ZWxlZm9uZSIsInZhbHVlIjoiIiwibWF4TGVuZ3RoIjoiIiwicmVhZG9ubHkiOmZhbHNlLCJwYXNzd29yZCI6ZmFsc2UsIm1haWxiYWNrIjpmYWxzZSwibWFpbGJhY2tBc1NlbmRlciI6ZmFsc2UsIm1haWxiYWNrZmlsZSI6IiIsInNpemUiOiIiLCJ2YWxpZGF0aW9uQ29uZGl0aW9uIjoxLCJ2YWxpZGF0aW9uSWQiOiI0NCIsInZhbGlkYXRpb25Db2RlIjoiIiwidmFsaWRhdGlvbk1lc3NhZ2UiOiJJbmZvcm1lIG8gblx1MDBmYW1lcm8gZGUgc2V1IHRlbGVmb25lIiwidmFsaWRhdGlvbkZ1bmN0aW9uTmFtZSI6ImZmX3ZhbHVlbm90ZW1wdHkiLCJpbml0Q29uZGl0aW9uIjowLCJpbml0SWQiOiI4IiwiaW5pdENvZGUiOiIiLCJpbml0RnVuY3Rpb25OYW1lIjoiIiwiaW5pdEZvcm1FbnRyeSI6MCwiaW5pdFBhZ2VFbnRyeSI6MCwiYWN0aW9uQ29uZGl0aW9uIjowLCJhY3Rpb25JZCI6IjE2IiwiYWN0aW9uQ29kZSI6IiIsImFjdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImFjdGlvbkNsaWNrIjowLCJhY3Rpb25CbHVyIjowLCJhY3Rpb25DaGFuZ2UiOjAsImFjdGlvbkZvY3VzIjowLCJhY3Rpb25TZWxlY3QiOjAsImhpZGVJbk1haWxiYWNrIjpmYWxzZSwidmFsdWVfdHJhbnNsYXRpb24iOiIiLCJwbGFjZWhvbGRlcl90cmFuc2xhdGlvbiI6IiIsImxhYmVsX3RyYW5zbGF0aW9uIjoiIiwiaGludF90cmFuc2xhdGlvbiI6IiIsInZhbGlkYXRpb25NZXNzYWdlX3RyYW5zbGF0aW9uIjoiIn19LHsiYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlRWxlbWVudENsYXNzIiwiaWQiOiJNZW5zYWdlbSIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcImVsZW1lbnRcIn0ifSwiZGF0YSI6eyJ0aXRsZSI6Ik1lbnNhZ2VtIiwiaWNvbiI6Ii4uXC9hZG1pbmlzdHJhdG9yXC9jb21wb25lbnRzXC9jb21fYnJlZXppbmdmb3Jtc1wvbGlicmFyaWVzXC9qcXVlcnlcL3RoZW1lc1wvcXVpY2ttb2RlXC9pXC9pY29uX3RleHQtYXJlYS5wbmcifSwicHJvcGVydGllcyI6eyJ0eXBlIjoiZWxlbWVudCIsImJmVHlwZSI6ImJmVGV4dGFyZWEiLCJsYWJlbCI6Ik1lbnNhZ2VtIiwibGFiZWxQb3NpdGlvbiI6ImxlZnQiLCJiZk5hbWUiOiJNZW5zYWdlbSIsImRiSWQiOjQsIm9yZGVyTnVtYmVyIjoiLTEiLCJ0YWJJbmRleCI6Ii0xIiwibG9nZ2luZyI6dHJ1ZSwiaGlkZUxhYmVsIjpmYWxzZSwicmVxdWlyZWQiOnRydWUsImhpbnQiOiIiLCJvZmYiOmZhbHNlLCJwbGFjZWhvbGRlciI6IkluZm9ybWUgc3VhIG1lbnNhZ2VtIiwiaXNfaHRtbCI6ZmFsc2UsInZhbHVlIjoiIiwid2lkdGgiOiIiLCJoZWlnaHQiOiIxMDBweCIsIm1heGxlbmd0aCI6IjAiLCJzaG93TWF4bGVuZ3RoQ291bnRlciI6dHJ1ZSwicmVhZG9ubHkiOmZhbHNlLCJ2YWxpZGF0aW9uQ29uZGl0aW9uIjoxLCJ2YWxpZGF0aW9uSWQiOiI0NCIsInZhbGlkYXRpb25Db2RlIjoiIiwidmFsaWRhdGlvbk1lc3NhZ2UiOiJJbmZvcm1lIHN1YSBtZW5zYWdlbSIsInZhbGlkYXRpb25GdW5jdGlvbk5hbWUiOiJmZl92YWx1ZW5vdGVtcHR5IiwiaW5pdENvbmRpdGlvbiI6MCwiaW5pdElkIjoiOCIsImluaXRDb2RlIjoiIiwiaW5pdEZ1bmN0aW9uTmFtZSI6IiIsImluaXRGb3JtRW50cnkiOjAsImluaXRQYWdlRW50cnkiOjAsImFjdGlvbkNvbmRpdGlvbiI6MCwiYWN0aW9uSWQiOiIxNiIsImFjdGlvbkNvZGUiOiIiLCJhY3Rpb25GdW5jdGlvbk5hbWUiOiIiLCJhY3Rpb25DbGljayI6MCwiYWN0aW9uQmx1ciI6MCwiYWN0aW9uQ2hhbmdlIjowLCJhY3Rpb25Gb2N1cyI6MCwiYWN0aW9uU2VsZWN0IjowLCJoaWRlSW5NYWlsYmFjayI6ZmFsc2UsInZhbHVlX3RyYW5zbGF0aW9uIjoiIiwicGxhY2Vob2xkZXJfdHJhbnNsYXRpb24iOiIiLCJsYWJlbF90cmFuc2xhdGlvbiI6IiIsImhpbnRfdHJhbnNsYXRpb24iOiIiLCJ2YWxpZGF0aW9uTWVzc2FnZV90cmFuc2xhdGlvbiI6IiJ9fV19XX0=', 'QuickMode', '[{"elements":[{"element":null,"bfType":"Text","elementType":"","options":{"value":"","placeholder":"Informe seu nome","password":false,"mailback":false,"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":1,"script3id":"44","script3code":"","script3msg":"Informe seu nome","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"ff_valuenotempty","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Nome","name":"Nome","page":"1","orderNumber":1,"dbId":1,"appElementOrderId":0,"id":0,"logging":true,"qId":"Nome","internalType":"bfTextfield","mailbackAsSender":0,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Text","elementType":"","options":{"value":"","placeholder":"Informe seu e-mail","password":false,"mailback":false,"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":1,"script3id":"42","script3code":"","script3msg":"Informe um e-mail v\\u00e1lido","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"ff_validemail","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"E-mail","name":"Email","page":"1","orderNumber":2,"dbId":2,"appElementOrderId":0,"id":0,"logging":true,"qId":"Email","internalType":"bfTextfield","mailbackAsSender":0,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Text","elementType":"","options":{"value":"","placeholder":"Informe seu telefone","password":false,"mailback":false,"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":1,"script3id":"44","script3code":"","script3msg":"Informe o n\\u00famero de seu telefone","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"ff_valuenotempty","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Telefone","name":"Telefone","page":"1","orderNumber":3,"dbId":3,"appElementOrderId":0,"id":0,"logging":true,"qId":"Telefone","internalType":"bfTextfield","mailbackAsSender":0,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Textarea","elementType":"","options":{"value":"","placeholder":"Informe sua mensagem","readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":1,"script3id":"44","script3code":"","script3msg":"Informe sua mensagem","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"ff_valuenotempty","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Mensagem","name":"Mensagem","page":"1","orderNumber":4,"dbId":4,"appElementOrderId":0,"id":0,"logging":true,"qId":"Mensagem","internalType":"bfTextarea","tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"41","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle","name":"bfFakeName","page":1,"orderNumber":0,"dbId":29,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"23","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle2","name":"bfFakeName2","page":1,"orderNumber":0,"dbId":30,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"40","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle3","name":"bfFakeName3","page":1,"orderNumber":0,"dbId":31,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"38","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle4","name":"bfFakeName4","page":1,"orderNumber":0,"dbId":32,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""}],"elementCount":4}]', 0, 1, 0, 'Contato', '', '', 'Contato', '', '', NULL, 400, 0, 500, 0, 1, 2, 1, 1, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 'vgb.info@gmail.com', 1, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, NULL, '');
/*!40000 ALTER TABLE `qtdpv_facileforms_forms` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_facileforms_integrator_criteria_fixed
CREATE TABLE IF NOT EXISTS `qtdpv_facileforms_integrator_criteria_fixed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `fixed_value` text NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_facileforms_integrator_criteria_fixed: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_facileforms_integrator_criteria_fixed` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_facileforms_integrator_criteria_fixed` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_facileforms_integrator_criteria_form
CREATE TABLE IF NOT EXISTS `qtdpv_facileforms_integrator_criteria_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `element_id` varchar(255) NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_facileforms_integrator_criteria_form: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_facileforms_integrator_criteria_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_facileforms_integrator_criteria_form` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_facileforms_integrator_criteria_joomla
CREATE TABLE IF NOT EXISTS `qtdpv_facileforms_integrator_criteria_joomla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `joomla_object` varchar(255) NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_facileforms_integrator_criteria_joomla: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_facileforms_integrator_criteria_joomla` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_facileforms_integrator_criteria_joomla` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_facileforms_integrator_items
CREATE TABLE IF NOT EXISTS `qtdpv_facileforms_integrator_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_facileforms_integrator_items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_facileforms_integrator_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_facileforms_integrator_items` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_facileforms_integrator_rules
CREATE TABLE IF NOT EXISTS `qtdpv_facileforms_integrator_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `form_id` int(11) NOT NULL,
  `reference_table` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'insert',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `finalize_code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_facileforms_integrator_rules: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_facileforms_integrator_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_facileforms_integrator_rules` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_facileforms_packages
CREATE TABLE IF NOT EXISTS `qtdpv_facileforms_packages` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '',
  `created` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_facileforms_packages: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_facileforms_packages` DISABLE KEYS */;
INSERT INTO `qtdpv_facileforms_packages` (`id`, `name`, `version`, `created`, `title`, `author`, `email`, `url`, `description`, `copyright`) VALUES
	('', 'mypck_001', '0.0.1', '2005-07-31 22:21:23', 'My First Package', 'My Name', 'my.name@my.domain', 'http://www.my.domain', 'This is the first package that I created', 'This FacileForms package is released under the GNU/GPL license'),
	('FF', 'stdlib.english', '1.8', '2012-09-21 11:50:15', 'BreezingForms-Standard Piece and Script Libraries', 'Markus Bopp', 'markus.bopp@crosstec.org', 'http://www.crosstec.org', 'These are the standard BreezingForms script and piece libraries.', 'This BreezingForms package is released under the GNU/GPL license');
/*!40000 ALTER TABLE `qtdpv_facileforms_packages` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_facileforms_pieces
CREATE TABLE IF NOT EXISTS `qtdpv_facileforms_pieces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT '',
  `code` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_facileforms_pieces: ~28 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_facileforms_pieces` DISABLE KEYS */;
INSERT INTO `qtdpv_facileforms_pieces` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
	(1, 1, 'FF', 'ff_addCustomCSSFile', 'Add custom CSS File', 'Adds a custom css file to the form. To choose a css file, execute this piece and call the function ff_addCustomCSSFile(\'path/to/css/file\') with the RELATIVE (not full!) path to your joomla installation.\r\nDo not forget to call $this->execPieceByName(\'ff_InitLib\') before!\r\n\r\nExample:\r\n\r\nglobal $mainframe;\r\n\r\n$this->execPieceByName(\'ff_InitLib\');\r\n$this->execPieceByName(\'ff_addCustomCSSFile\');\r\n\r\nff_addCustomCSSFile(\'templates/\' . $mainframe->getTemplate() . \'/css/template.css\');', 'Before Form', 'function ff_addCustomCSSFile($path){\r\n	if(file_exists(JPATH_SITE . \'/\' . $path)){\r\n		JFactory::getDocument()->addStyleSheet(JURI::root() . $path);\r\n	}\r\n}'),
	(2, 1, 'FF', 'ff_Constants', 'Constansts definitions', 'Library constants definitions', 'Before Form', 'define(\'FF_DIE\',       \'_ff_die_on_errors_\');\r\ndefine(\'FF_DONTDIE\',   \'_ff_stay_alive_\');\r\ndefine(\'FF_IGNOREDIE\', \'_ff_ignore_if_dying_\');\r\n\r\ndefine(\'FF_ARRAY\',     \'_ff_return_as_array_\');\r\ndefine(\'FF_LIST\',      \'_ff_return_as_list_\');\r\ndefine(\'FF_SLIST\',     \'_ff_return_as_slist_\');\r\ndefine(\'FF_DLIST\',     \'_ff_return_as_dlist_\');\r\n\r\ndefine(\'FF_NOTRIM\',    1);\r\ndefine(\'FF_ALLOWHTML\', 2);\r\ndefine(\'FF_ALLOWRAW\',  4);'),
	(3, 1, 'FF', 'ff_die', 'Terminate form gracefully', 'Gracefully terminates the form and shows a message plus opionally a \r\nCONTINUE button for further redirection.\r\n\r\nCall:\r\n\r\n    ff_die($message=null, $action=\'stop\', $target=\'\', $params=\'\', $label=\'Continue\');\r\n    return;\r\n\r\n    $message = A message to display. If no message is provided, it will\r\n               display:\r\n\r\n                    Fatal error in $formname, processing stopped.\r\n\r\n    $action  = \'stop\' : Dont show a CONTINUE button (default)\r\n               \'self\' : Redirect to the same form\r\n               \'form\' : Redirect to another form \r\n               \'page\' : Redirect to another page of this site\r\n               \'home\' : Redirect to homepage of the site\r\n               \'url\'  : Redirect to a url\r\n\r\n    $target  = Target name/url for \'form\', \'page\' and \'url\'\r\n\r\n    $params  = Additional parameters for \'self\' and \'form\'\r\n\r\n    $label   = Text for the continue button\r\n\r\nExamples:\r\n\r\n    // Display standard message without continue button\r\n    ff_die(); \r\n\r\n    // Display message without continue button\r\n    ff_die(\'Sorry, cannot continue for some reason.\');\r\n\r\n    // Display standard message and return to same form with a parameter\r\n    ff_die(null, \'self\', \'&ff_param_foo=bar\');\r\n\r\n    // Redirect to another form\r\n    ff_die(\'Guess you are hungry now...\', \'form\', \'SamplePizzaShop\', null, \'Order\');\r\n\r\n    // Redirect to another site page\r\n    ff_die(\r\n        \'Something strange has happened!\', \r\n        \'page\', \r\n        \'index.php?option=com_content&task=section&id=1&Itemid=2\'\r\n    );', 'Untyped', 'function ff_die($message=\'\', $action=\'stop\', $target=\'\', $params=\'\', $label=\'Continue\')\r\n{\r\n    global $ff_processor;\r\n    if ($ff_processor->dying) return;\r\n\r\n    ob_end_clean();\r\n    $form =& $ff_processor->formrow;\r\n    if (!$message) \r\n        $message = \r\n            "<strong>Fatal error in $form->name, form processing halted.</strong>";\r\n    switch ($action) {\r\n        case \'self\': $url = ff_makeSelfUrl($params); break;\r\n        case \'form\': $url = ff_makeFormUrl($target, $params); break;\r\n        case \'page\': $url = ff_makePageUrl($target); break;\r\n        case \'home\': $url = "{mossite}"; break;\r\n        case \'url\' : $url = $target; break;\r\n        default    : $url = \'\';\r\n    } // switch\r\n    if ($form->class1 != \'\') echo \'<div class="\'.$form->class1.\'">\'.nl();\r\n    echo($message.\'<br/><br/><br/>\'.nl());\r\n    if ($url) {\r\n        if (!$ff_processor->inline) echo \'<form action="#redirect">\'.nl();\r\n        if ($ff_processor->inframe) $t = \'parent\'; else $t = \'document\';\r\n        echo \'<input type="button" class="button" value="\'.$label.\'"\'.\r\n             \' onClick="\'.$t.\'.location.href=\\\'\'.htmlentities($url,ENT_QUOTES).\'\\\';"\'.\r\n             \'/>\'.nl();\r\n        if (!$ff_processor->inline) echo \'</form>\'.nl();\r\n    } // if\r\n    if ($form->class1 != \'\') echo \'</div>\'.nl();\r\n    unset($form);\r\n    ob_start();\r\n    $ff_processor->suicide();\r\n} // ff_die'),
	(4, 1, 'FF', 'ff_DisableFormTrace', 'Disable tracing at view time', 'Disables tracing for use as before form piece', 'Before Form', '//+trace dis'),
	(5, 1, 'FF', 'ff_DisableSubmitTrace', 'Disable tracing at submit time', 'Disables tracing for use as begin submit piece', 'Begin Submit', '//+trace dis'),
	(6, 1, 'FF', 'ff_dying', 'Query live status', 'Query if form is dying', 'Untyped', '//+trace max none\r\nfunction ff_dying()\r\n{\r\n    global $ff_processor; \r\n    return $ff_processor->dying;\r\n} // ff_dying'),
	(7, 1, 'FF', 'ff_expString', 'String export', 'Export string function: escapes special characters in c-codes', 'Untyped', 'function ff_expString($text)\r\n{\r\n    return expstring($text);\r\n} // ff_expString'),
	(8, 1, 'FF', 'ff_getPageByNameX', 'Get page # by element name', 'Gets the page number by the name of an element. \r\nTypically used to redirect to a certain page in a before form piece \r\nas \r\n\r\n    $this->page = ff_getPageByName(\'elementname\');', 'Untyped', 'function ff_getPageByName($name)\r\n{\r\n    global $ff_processor;\r\n    foreach($ff_processor->rows as $row)\r\n        if ($row->name==$name)\r\n            return $row->page;\r\n    return null;\r\n} // ff_getPageByName'),
	(9, 1, 'FF', 'ff_getParam', 'Get GET/POST parameter', 'Direct replacement for mosGetParam. ff_getParam will attempt to filter \r\nout parameters that are targeted to another form on the same page.', 'Untyped', 'function ff_getParam($name, $default=null, $mask=0)\r\n{\r\n    global $ff_request;\r\n    if (substr($name,0,9)==\'ff_param_\') {\r\n        if (!isset($ff_request[$name])) return $default;\r\n        $val = $ff_request[$name];\r\n    } else {\r\n        if (!isset($_REQUEST[$name])) return $default;\r\n        $val = $_REQUEST[$name];\r\n    } // if\r\n    $dotrim = ($mask & FF_NOTRIM)==0;\r\n    $dostrp = ($mask & FF_ALLOWHTML)==0;\r\n    $addsla = ($mask & FF_ALLOWRAW)==0 && !get_magic_quotes_gpc();\r\n    $remsla = ($mask & FF_ALLOWRAW)!=0 && get_magic_quotes_gpc();\r\n    if (is_array($val)) {\r\n        $cnt = count($val);\r\n        for ($v = 0; $v < $cnt; $v++)\r\n            if (is_string($val[$v])) {\r\n                if ($dotrim) $val[$v] = trim($val[$v]);\r\n                if ($dostrp) $val[$v] = strip_tags($val[$v]);\r\n                if ($addsla) $val[$v] = addslashes($val[$v]);\r\n                if ($remsla) $val[$v] = stripslashes($val[$v]);\r\n            } // if\r\n    } else {\r\n        if (is_string($val)) {\r\n            if ($dotrim) $val = trim($val);\r\n            if ($dostrp) $val = strip_tags($val);\r\n            if ($addsla) $val = addslashes($val);\r\n            if ($remsla) $val = stripslashes($val);\r\n        } // if\r\n    } // if\r\n    return $val;\r\n} // ff_getParam'),
	(10, 1, 'FF', 'ff_getSubmit', 'Get submited data', 'Returns submitdata either as scalar, array or list. In case of list the values\r\nare returned as a string with the values concatenated by comma.\r\n\r\nExamples:\r\n\r\n// Get as scalar: Optionally pass a default value as second parameter.\r\n// If no default is provided, it will return NULL if no value was submitted\r\n\r\n    $myval = ff_getSubmit(\'myvar\');        // return NULL if not submitted\r\n\r\n    $myval = ff_getSubmit(\'myvar\',1);      // return 1 if not submitted\r\n\r\n    $myval = ff_getSubmit(\'myvar\',\'foo\');  // return \'foo\' if not submitted\r\n\r\n    ff_query(\r\n        "insert into #__mytable(id, name) ".\r\n        "values (\'".\r\n            ff_getSubmit(\'id\').", ".\r\n            ff_getSubmit(\'name\',\'unknown\').\r\n        "\')"\r\n    );\r\n\r\n// Get as array: Pass FF_ARRAY as second Parameter\r\n\r\n    $myarr = $ff_getSubmit(\'myarr\', FF_ARRAY);\r\n\r\n    foreach ($myarr as $myval) ...\r\n\r\n// Get as list: Pass either FF_LIST, FF_SLIST or FF_DLIST as 2nd parameter.\r\n\r\n    // FF_LIST will return numeric data unquoted and strings in single quotes:\r\n    //    1,2,\'a\',4\r\n\r\n    // FF_SLIST will return all data single quoted:\r\n    //    \'1\',\'2\',\'a\',\'4\'\r\n\r\n    // FF_DLIST will return all data double quoted:\r\n    //    "1","2","a","4"\r\n\r\n    ff_query(\r\n        "delete from #__mytable ".\r\n        "where id in (".ff_getSubmit(\'itemlist\',FF_LIST).")"\r\n    );', 'Untyped', 'function ff_getSubmit($name, $default=null)\r\n{\r\n    global $ff_processor;\r\n\r\n    switch ((string)$default) {\r\n        case FF_ARRAY: $value = array(); break;\r\n        case FF_LIST : \r\n        case FF_SLIST:\r\n        case FF_DLIST: $value = \'\'; break;\r\n        default      : $value = $default;\r\n    } // switch\r\n    foreach ($ff_processor->submitdata as $data)\r\n        if ($data[_FF_DATA_NAME]==$name) {\r\n            $q = \'\';\r\n            switch ((string)$default) {\r\n                case FF_ARRAY:\r\n                    $value[] = $data[_FF_DATA_VALUE];\r\n                    break;\r\n                case FF_SLIST:\r\n                    $q = "\'";\r\n                case FF_DLIST:\r\n                    if ($q==\'\') $q = \'"\';\r\n                case FF_LIST:\r\n                    if ($q==\'\' && !is_numeric($data[_FF_DATA_VALUE])) $q = "\'";\r\n                    if ($value!=\'\') $value.=\',\';\r\n                    $value .= $q.$data[_FF_DATA_VALUE].$q;\r\n                    break;\r\n                default:\r\n                    return $data[_FF_DATA_VALUE];\r\n            } // switch\r\n         } // if\r\n    return $value;\r\n} // ff_getSubmit'),
	(11, 1, 'FF', 'ff_impString', 'String import', 'Import string function: unescapes c-coded characters of a string', 'Untyped', 'function ff_impString($text)\r\n{\r\n    return impstring($text);\r\n} // ff_impString'),
	(12, 1, 'FF', 'ff_InitLib', 'Init Library', 'A collection of useful functions for use in form pieces. \r\n\r\nInclude by: \r\n\r\n    $this->execPieceByName(\'ff_InitLib\');', 'Before Form', '//+trace high none\r\nif (!defined(\'FF_DIE\'))                    $this->execPieceByName(\'ff_Constants\');\r\nif (!function_exists(\'ff_expstring\'))      $this->execPieceByName(\'ff_expstring\');\r\nif (!function_exists(\'ff_makePageUrl\'))    $this->execPieceByName(\'ff_makePageUrl\');\r\nif (!function_exists(\'ff_makeFormUrl\'))    $this->execPieceByName(\'ff_makeFormUrl\');\r\nif (!function_exists(\'ff_makeSelfUrl\'))    $this->execPieceByName(\'ff_makeSelfUrl\');\r\nif (!function_exists(\'ff_die\'))            $this->execPieceByName(\'ff_die\');\r\nif (!function_exists(\'ff_dying\'))          $this->execPieceByName(\'ff_dying\');\r\nif (!function_exists(\'ff_redirect\'))       $this->execPieceByName(\'ff_redirect\');\r\nif (!function_exists(\'ff_redirectParent\')) $this->execPieceByName(\'ff_redirectParentX\');\r\nif (!function_exists(\'ff_redirectPage\'))   $this->execPieceByName(\'ff_redirectPage\');\r\nif (!function_exists(\'ff_redirectForm\'))   $this->execPieceByName(\'ff_redirectForm\');\r\nif (!function_exists(\'ff_redirectSelf\'))   $this->execPieceByName(\'ff_redirectSelf\');\r\nif (!function_exists(\'ff_setChecked\'))     $this->execPieceByName(\'ff_setCheckedX\');\r\nif (!function_exists(\'ff_setSelected\'))    $this->execPieceByName(\'ff_setSelectedX\');\r\nif (!function_exists(\'ff_setValue\'))       $this->execPieceByName(\'ff_setValueX\');\r\nif (!function_exists(\'ff_getPageByName\'))  $this->execPieceByName(\'ff_getPageByNameX\');\r\nif (!function_exists(\'ff_getParam\'))       $this->execPieceByName(\'ff_getParam\');\r\nif (!function_exists(\'ff_getSubmit\'))      $this->execPieceByName(\'ff_getSubmit\');\r\nif (!function_exists(\'ff_impString\'))      $this->execPieceByName(\'ff_impString\');\r\nif (!function_exists(\'ff_expString\'))      $this->execPieceByName(\'ff_expString\');\r\nif (!function_exists(\'ff_securityImage\'))  $this->execPieceByName(\'ff_securityImage\');\r\nif (!function_exists(\'ff_select\'))         $this->execPieceByName(\'ff_select\');\r\nif (!function_exists(\'ff_selectValue\'))    $this->execPieceByName(\'ff_selectValue\');\r\nif (!function_exists(\'ff_query\'))          $this->execPieceByName(\'ff_query\');\r\nif (!function_exists(\'ff_markdown\'))       $this->execPieceByName(\'ff_markdown\');'),
	(13, 1, 'FF', 'ff_makeFormUrl', 'Make URL to other form', 'Redirects to another facile form. \r\n\r\nCall: \r\n\r\n    $url = ff_makeFormUrl($name, $params = \'\');\r\n\r\nExample:\r\n\r\n    $url = ff_makeFormUrl(\r\n       \'OtherForm\', \r\n       \'&ff_param_email=\'.urlencode($email)\r\n    );', 'Untyped', 'function ff_makeFormUrl($name, $params=\'\')\r\n{\r\n    global $ff_processor, $ff_otherparams;\r\n    $url = \'\';\r\n    switch ($ff_processor->runmode) {\r\n        case 2: // preview\r\n        case 1: // backend\r\n            $url .= \'administrator/index2.php?option=com_breezingforms&act=run\'.\r\n                    \'&ff_name=\'.urlencode($name);\r\n            if ($ff_processor->inframe) $url .= \'&ff_frame=1\';\r\n            if ($ff_processor->border) $url .= \'&ff_border=1\';\r\n            break;\r\n        default: // frontend\r\n            $url .= \'index.php?ff_name=\'.urlencode($name);\r\n            if ($ff_otherparams[\'option\'] == \'com_breezingforms\') {\r\n                reset($ff_otherparams);\r\n                while (list($prop, $val) = each($ff_otherparams))\r\n                    $url .= \'&\'.urlencode($prop).\'=\'.urlencode($val);\r\n            } else\r\n                $url .= \'&option=com_breezingforms\';\r\n            if ($ff_processor->target > 1) $url .= \'&ff_target=\'.$ff_processor->target;\r\n            if ($ff_processor->inframe) $url .= \'&ff_frame=1\';\r\n            if ($ff_processor->border) $url .= \'&ff_border=1\';\r\n            if ($ff_processor->align !=1) $url .= \'&ff_align=\'.$ff_processor->align;\r\n            if ($ff_processor->top>0) $url .= \'&ff_top=\'.$ff_processor->top;\r\n    } // switch\r\n    return ff_makePageUrl($url. $params);\r\n} // ff_makeFormUrl'),
	(14, 1, 'FF', 'ff_makePageUrl', 'Make URL to other page', 'Builds an URL to another mambo page\r\n\r\nCall: \r\n\r\n    $url = ff_makePageUrl($params = \'\');\r\n\r\nExample:\r\n\r\n    $url = ff_makePageUrl(\r\n        \'index.php?option=com_content&task=blogsection&id=0&Itemid=39\'\r\n    );', 'Untyped', 'function ff_makePageUrl($params=\'\')\r\n{\r\n    $url = \'{mossite}\';\r\n    if ($params != \'\') {\r\n        $len = strlen($url);\r\n        if ($len > 0 && $url{$len-1} != \'/\') $url .= \'/\';\r\n        $url .= $params;\r\n    } // if\r\n    return $url;\r\n} // ff_makePageUrl'),
	(15, 1, 'FF', 'ff_makeSelfUrl', 'Make URL to same form', 'Make an URL to the same form. \r\n\r\nCall: \r\n\r\n    $url = ff_makeSelfUrl($params = \'\');\r\n\r\nExample:\r\n\r\n    $url = ff_makeSelfUrl(\'&ff_param_email=\'.urlencode($email));', 'Untyped', 'function ff_makeSelfUrl($params=\'\')\r\n{\r\n    global $ff_processor;\r\n    return ff_makeFormUrl($ff_processor->formrow->name, $params);\r\n} // ff_makeSelfUrl'),
	(16, 1, 'FF', 'ff_query', 'Non-select queries against db', 'Execute a simple db query.\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(\'ff_InitUtilities\');\r\n    $this->execPieceByName(\'ff_SubmitUtilities\');\r\n    if (!function_exists(\'ff_query\')) $this->execPieceByName(\'ff_query\');\r\n\r\nCall syntax:\r\n\r\n    [$newid = ] ff_query($sql [, $insert = 0]);\r\n\r\n    $sql:    Sql statement to call\r\n    $insert: 1 = return key of auto column when inserting rows\r\n    $newid:  The key of the new row.', 'Untyped', 'function ff_query($sql, $insert=false, $error=FF_DIE)\r\n{\r\n    global $ff_processor;\r\n    $database = JFactory::getDBO();\r\n    if ($ff_processor->dying && $error!=FF_IGNOREDIE) return -1;\r\n    $database->setQuery($sql);\r\n    $database->query();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        if ($dienow) ff_die($error);\r\n    } else {\r\n        $error = null;\r\n        if ($insert) return $database->insertid();\r\n    } // if\r\n    return 0;\r\n} // ff_query'),
	(17, 1, 'FF', 'ff_redirect', 'Basic redirection', 'Basic redirection routine supporting multiple targets and methods.\r\n\r\nCall:\r\n \r\nff_redirect($url [, $target=\'self\' , $method=\'post\'])\r\n\r\n    $url    = The url to redirect to including the parameters appended.\r\n\r\n    $target = \'top\', \'parent\', \'self\' or \'blank\'\r\n\r\n              \'top\'    = redirect to the top browser window\r\n              \'parent\' = redirect to the parent frame\r\n              \'self\'   = redirect in the same frame (the default)\r\n              \'blank\'  = redirect to a new browser window \r\n                         (blank works with post method only)\r\n\r\n    $method = \'post\' or \'get\'. The default is \'post\'.\r\n\r\n    Example:\r\n\r\n       ff_redirect(\r\n          \'http://mysite.net/index.php?option=xxx&Itemid=33\',\r\n          \'top\'\r\n       );', 'Untyped', 'function ff_redirect($url, $target=\'self\', $method=\'post\')\r\n{\r\n    global $ff_processor, $ff_request;\r\n    if ($ff_processor->dying) return;\r\n\r\n    ob_end_clean();\r\n    switch (strtolower($method)) {\r\n        case \'get\': {\r\n            switch (strtolower($target)) {\r\n                case \'top\'   :\r\n                case \'parent\': break;\r\n                default      : $target = \'document\';\r\n            } // switch\r\n            echo \'<script type="text/javascript">\'.nl().\r\n                 \'<!--\'.nl().\r\n                 "onload=function() { ".$target.".location.href=\'".$url."\'; }".nl().\r\n                 \'-->\'.nl().\r\n                 \'</script>\'.nl().\r\n                 \'</body>\'.nl();\r\n            break;\r\n        } // url\r\n        default: { // post\r\n            $pos = strpos($url,\'?\');\r\n            $ff_request = array();\r\n            if ($pos === false)\r\n                $action = $url;\r\n            else {\r\n                $action = substr($url,0,$pos);\r\n                addRequestParams(substr($url, $pos+1));\r\n            } // if\r\n            switch (strtolower($target)) {\r\n                case \'blank\' : $target = \' target="_blank"\';  break;\r\n                case \'top\'   : $target = \' target="_top"\';    break;\r\n                case \'parent\': $target = \' target="_parent"\'; break;\r\n                default      : $target = \' target="_self"\';\r\n            } // switch\r\n            echo \'<script language="javascript" type="text/javascript">\'.nl().\r\n                 \'<!--\'.nl().\r\n                 \'onload = function() { document.ff_redirect.submit(); }\'.nl().\r\n                 \'-->\'.nl().\r\n                 \'</script>\'.nl().\r\n                 \'<form action="\'.$action.\'" \'.\r\n                  \'method="post" \'.\r\n                  \'name="ff_redirect" id="ff_redirect" \'.\r\n                  \'enctype="multipart/form-data"\'.\r\n                  $target.\r\n                 \'>\'.nl();\r\n            while (list($prop, $val) = each($ff_request))\r\n                echo \'<input type="hidden" name="\'.$prop.\'" \'.\r\n                            \'value="\'.htmlentities(urldecode($val)).\'"/>\'.nl();\r\n            echo \'</form>\'.nl().\r\n                 \'</body>\'.nl();\r\n        } // post\r\n    } // switch\r\n    exit;\r\n} // ff_redirect'),
	(18, 1, 'FF', 'ff_redirectForm', 'Redirect to other form', 'Redirects to another facile form. \r\n\r\nCall: \r\n\r\n    ff_redirectForm($name, $params = \'\');\r\n\r\nExample:\r\n\r\n    ff_redirectForm(\r\n        $this, \r\n       \'SecondForm\', \r\n       \'&ff_param_email=\'.urlencode($email)\r\n    );', 'Untyped', 'function ff_redirectForm($name, $params=\'\', $method=\'post\')\r\n{\r\n    ff_redirectParent(ff_makeFormUrl($name, $params), $method);\r\n} // ff_redirectForm'),
	(19, 1, 'FF', 'ff_redirectPage', 'Redirect to other page', 'Redirects to another mambo page. \r\n\r\nCall: \r\n\r\n    ff_redirectPage($params = \'\');\r\n\r\nExample:\r\n\r\n    ff_redirectPage(\r\n        \'index.php?option=com_content&task=blogsection&id=0&Itemid=39\'\r\n    );', 'Untyped', 'function ff_redirectPage($params=\'\', $method=\'post\')\r\n{\r\n    ff_redirectParent(ff_makePageUrl($params), $method);\r\n} // ff_redirectPage'),
	(20, 1, 'FF', 'ff_redirectParentX', 'Redirect to parent window', 'Redirects to the parent window when runing in iframe, otherwise to self. \r\n\r\nff_redirectParent($url [, $method=\'post\'])\r\n\r\n    $url    = The url to redirect to including the parameters appended.\r\n\r\n    $method = \'post\' or \'url\'. The default is \'post\'.\r\n\r\n    Example:\r\n\r\n       ff_redirectParent(\r\n          \'http://mysite.net/index.php?option=xxx&Itemid=33\',\r\n          \'url\'\r\n       );', 'Untyped', 'function ff_redirectParent($url, $method = \'post\')\r\n{\r\n    global $ff_processor;\r\n    if ($ff_processor->inframe) $target = \'parent\'; else $target = \'self\'; \r\n    ff_redirect($url, $target, $method);\r\n} // ff_redirectParent'),
	(21, 1, 'FF', 'ff_redirectSelf', 'Redirect to same form', 'Redirects to the same form. \r\n\r\nCall: \r\n\r\n    ff_redirectSelf($params = \'\');\r\n\r\nExample:\r\n\r\n    ff_redirectSelf(\'&ff_param_email=\'.urlencode($email));', 'Untyped', 'function ff_redirectSelf($params=\'\', $method=\'post\')\r\n{\r\n    ff_redirectParent(ff_makeSelfUrl($params), $method);\r\n} // ff_redirectSelf'),
	(22, 1, 'FF', 'ff_securityImage', 'Security Image', 'Create code to display the security image', 'Untyped', 'global $ff_seccode;\r\n\r\nif (!isset($this->record_id)) { $ff_seccode = null; }\r\n\r\nfunction ff_securityImage()\r\n{\r\n    global $ff_comsite, $ff_seccode;\r\n    if (!isset($ff_seccode)) { \r\n        mt_srand((double)microtime()*1000000);\r\n        $ff_seccode = mt_rand(10000, 99999);\r\n        JFactory::getSession()->set(\'ff_seccode\', $ff_seccode);\r\n    } // if\r\n\r\n    return \'<img src="\'.JURI::root().\'ff_secimage.php?option=com_breezingforms&showSecImage=true" title="" alt="" />\';\r\n} // ff_securityImage'),
	(23, 1, 'FF', 'ff_select', 'Select rows from db', 'Execute a select query\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(\'ff_InitUtilities\');\r\n    $this->execPieceByName(\'ff_SubmitUtilities\');\r\n    if (!function_exists(\'ff_select\')) $this->execPieceByName(\'ff_select\');\r\n\r\nCall syntax:\r\n\r\n    $rows = ff_select($sql);\r\n\r\n    $sql:    Sql SELECT-statement to call\r\n    $rows:   List of row objects', 'Untyped', 'function ff_select($sql, $error=FF_DIE)\r\n{\r\n    $database = JFactory::getDBO();\r\n    $database->setQuery($sql);\r\n    $rows = $database->loadObjectList();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        $rows = array();\r\n        if ($dienow) ff_die($error);\r\n    } else\r\n        $error = null;\r\n    return $rows;\r\n} // ff_select'),
	(24, 1, 'FF', 'ff_selectValue', 'Select single value from db', 'Execute query to read a single value\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(\'ff_InitUtilities\');\r\n    $this->execPieceByName(\'ff_SubmitUtilities\');\r\n    if (!function_exists(\'ff_selectValue\')) $this->execPieceByName(\'ff_selectValue\');\r\n\r\nCall syntax:\r\n\r\n    $value = ff_selectValue($sql);\r\n\r\n    $sql:    Sql SELECT-statement to call\r\n    $value:  The value returned by the database', 'Untyped', 'function ff_selectValue($sql, $def=null, $error=FF_DIE)\r\n{\r\n    $database = JFactory::getDBO();\r\n    $database->setQuery($sql);\r\n    $value = $database->loadResult();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        if ($dienow) ff_die($error);\r\n    } else {\r\n        $error = null;\r\n        if ($value) return $value;\r\n    } // if\r\n    return $def;\r\n} // ff_selectValue'),
	(25, 1, 'FF', 'ff_setCheckedX', 'Set checkbox/radiobutton checked', 'Set a radio button or checkbox checked. \r\n\r\nCall: \r\n\r\n    ff_setChecked(\'name\', \'value\');', 'Untyped', 'function ff_setChecked($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name && $row->data1==$value)\r\n            $row->flag1 = 1;\r\n        unset($row);\r\n    } // for\r\n} // ff_setChecked'),
	(26, 1, 'FF', 'ff_setSelectedX', 'Set a select list option to *selected*', 'Sets a select list option to selected. \r\n\r\nCall: \r\n\r\n    ff_setSelected(\'name\', \'value\');', 'Untyped', 'function ff_setSelected($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name)\r\n            $row->data2 =\r\n                preg_replace(\r\n                    \'/(^|\\r\\n|\\n)(0|1);([^;]*);(\'.$value.\')($|\\r\\n|\\n)/\',\r\n                    \'${1}1;${3};${4}${5}\',\r\n                    $row->data2\r\n                );\r\n        unset($row);\r\n    } // for\r\n} // ff_setSelected'),
	(27, 1, 'FF', 'ff_setValueX', 'Set text, textarea, hidden value', 'Set value of a Static Text, Text, Textarea or Hidden Input. \r\n\r\nCall: \r\n\r\n    ff_setValue(\'name\', \'value\');', 'Untyped', 'function ff_setValue($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name)\r\n            $row->data1 = $value;\r\n        unset($row);\r\n    } // for\r\n} // ff_setValue'),
	(28, 1, 'FF', 'Markdown', 'Original Markdown Processor', 'Converts text marked up by \'Markdown\' into HTML.\r\n\r\nPlease use ff_markdown() in forms instead of Markdown()', 'Untyped', '#\r\n# Markdown  -  A text-to-HTML conversion tool for web writers\r\n#\r\n# Copyright (c) 2004-2005 John Gruber\r\n# <http://daringfireball.net/projects/markdown/>\r\n#\r\n# Copyright (c) 2004-2005 Michel Fortin - PHP Port\r\n# <http://www.michelf.com/projects/php-markdown/>\r\n#\r\n\r\nglobal	$MarkdownPHPVersion, $MarkdownSyntaxVersion,\r\n		$md_empty_element_suffix, $md_tab_width,\r\n		$md_nested_brackets_depth, $md_nested_brackets,\r\n		$md_escape_table, $md_backslash_escape_table,\r\n		$md_list_level;\r\n\r\n$MarkdownPHPVersion    = \'1.0.1b\'; # Mon 6 Jun 2005\r\n$MarkdownSyntaxVersion = \'1.0.1\';  # Sun 12 Dec 2004\r\n\r\n\r\n#\r\n# Global default settings:\r\n#\r\n$md_empty_element_suffix = " />";     # Change to ">" for HTML output\r\n$md_tab_width = 4;\r\n\r\n#\r\n# WordPress settings:\r\n#\r\n$md_wp_posts    = true;  # Set to false to remove Markdown from posts.\r\n$md_wp_comments = true;  # Set to false to remove Markdown from comments.\r\n\r\n\r\n# -- WordPress Plugin Interface -----------------------------------------------\r\n/*\r\nPlugin Name: Markdown\r\nPlugin URI: http://www.michelf.com/projects/php-markdown/\r\nDescription: <a href="http://daringfireball.net/projects/markdown/syntax">Markdown syntax</a> allows you to write using an easy-to-read, easy-to-write plain text format. Based on the original Perl version by <a href="http://daringfireball.net/">John Gruber</a>. <a href="http://www.michelf.com/projects/php-markdown/">More...</a>\r\nVersion: 1.0.1b\r\nAuthor: Michel Fortin\r\nAuthor URI: http://www.michelf.com/\r\n*/\r\nif (isset($wp_version)) {\r\n	# More details about how it works here:\r\n	# <http://www.michelf.com/weblog/2005/wordpress-text-flow-vs-markdown/>\r\n\r\n	# Post content and excerpts\r\n	if ($md_wp_posts) {\r\n		remove_filter(\'the_content\',  \'wpautop\');\r\n		remove_filter(\'the_excerpt\',  \'wpautop\');\r\n		add_filter(\'the_content\',     \'Markdown\', 6);\r\n		add_filter(\'get_the_excerpt\', \'Markdown\', 6);\r\n		add_filter(\'get_the_excerpt\', \'trim\', 7);\r\n		add_filter(\'the_excerpt\',     \'md_add_p\');\r\n		add_filter(\'the_excerpt_rss\', \'md_strip_p\');\r\n\r\n		remove_filter(\'content_save_pre\',  \'balanceTags\', 50);\r\n		remove_filter(\'excerpt_save_pre\',  \'balanceTags\', 50);\r\n		add_filter(\'the_content\',  	  \'balanceTags\', 50);\r\n		add_filter(\'get_the_excerpt\', \'balanceTags\', 9);\r\n\r\n		function md_add_p($text) {\r\n			if (strlen($text) == 0) return;\r\n			if (strcasecmp(substr($text, -3), \'<p>\') == 0) return $text;\r\n			return \'<p>\'.$text.\'</p>\';\r\n		}\r\n		function md_strip_p($t) { return preg_replace(\'{</?[pP]>}\', \'\', $t); }\r\n	}\r\n\r\n	# Comments\r\n	if ($md_wp_comments) {\r\n		remove_filter(\'comment_text\', \'wpautop\');\r\n		remove_filter(\'comment_text\', \'make_clickable\');\r\n		add_filter(\'pre_comment_content\', \'Markdown\', 6);\r\n		add_filter(\'pre_comment_content\', \'md_hide_tags\', 8);\r\n		add_filter(\'pre_comment_content\', \'md_show_tags\', 12);\r\n		add_filter(\'get_comment_text\',    \'Markdown\', 6);\r\n		add_filter(\'get_comment_excerpt\', \'Markdown\', 6);\r\n		add_filter(\'get_comment_excerpt\', \'md_strip_p\', 7);\r\n\r\n		global $md_hidden_tags;\r\n		$md_hidden_tags = array(\r\n			\'<p>\'	=> md5(\'<p>\'),		\'</p>\'	=> md5(\'</p>\'),\r\n			\'<pre>\'	=> md5(\'<pre>\'),	\'</pre>\'=> md5(\'</pre>\'),\r\n			\'<ol>\'	=> md5(\'<ol>\'),		\'</ol>\'	=> md5(\'</ol>\'),\r\n			\'<ul>\'	=> md5(\'<ul>\'),		\'</ul>\'	=> md5(\'</ul>\'),\r\n			\'<li>\'	=> md5(\'<li>\'),		\'</li>\'	=> md5(\'</li>\'),\r\n			);\r\n\r\n		function md_hide_tags($text) {\r\n			global $md_hidden_tags;\r\n			return str_replace(array_keys($md_hidden_tags),\r\n								array_values($md_hidden_tags), $text);\r\n		}\r\n		function md_show_tags($text) {\r\n			global $md_hidden_tags;\r\n			return str_replace(array_values($md_hidden_tags),\r\n								array_keys($md_hidden_tags), $text);\r\n		}\r\n	}\r\n}\r\n\r\n\r\n# -- bBlog Plugin Info --------------------------------------------------------\r\nfunction identify_modifier_markdown() {\r\n	global $MarkdownPHPVersion;\r\n	return array(\r\n		\'name\'			=> \'markdown\',\r\n		\'type\'			=> \'modifier\',\r\n		\'nicename\'		=> \'Markdown\',\r\n		\'description\'	=> \'A text-to-HTML conversion tool for web writers\',\r\n		\'authors\'		=> \'Michel Fortin and John Gruber\',\r\n		\'licence\'		=> \'GPL\',\r\n		\'version\'		=> $MarkdownPHPVersion,\r\n		\'help\'			=> \'<a href="http://daringfireball.net/projects/markdown/syntax">Markdown syntax</a> allows you to write using an easy-to-read, easy-to-write plain text format. Based on the original Perl version by <a href="http://daringfireball.net/">John Gruber</a>. <a href="http://www.michelf.com/projects/php-markdown/">More...</a>\'\r\n	);\r\n}\r\n\r\n# -- Smarty Modifier Interface ------------------------------------------------\r\nfunction smarty_modifier_markdown($text) {\r\n	return Markdown($text);\r\n}\r\n\r\n# -- Textile Compatibility Mode -----------------------------------------------\r\n# Rename this file to "classTextile.php" and it can replace Textile anywhere.\r\nif (strcasecmp(substr(__FILE__, -16), "classTextile.php") == 0) {\r\n	# Try to include PHP SmartyPants. Should be in the same directory.\r\n	@include_once \'smartypants.php\';\r\n	# Fake Textile class. It calls Markdown instead.\r\n	class Textile {\r\n		function TextileThis($text, $lite=\'\', $encode=\'\', $noimage=\'\', $strict=\'\') {\r\n			if ($lite == \'\' && $encode == \'\')   $text = Markdown($text);\r\n			if (function_exists(\'SmartyPants\')) $text = SmartyPants($text);\r\n			return $text;\r\n		}\r\n	}\r\n}\r\n\r\n\r\n\r\n#\r\n# Globals:\r\n#\r\n\r\n# Regex to match balanced [brackets].\r\n# Needed to insert a maximum bracked depth while converting to PHP.\r\n$md_nested_brackets_depth = 6;\r\n$md_nested_brackets =\r\n	str_repeat(\'(?>[^\\[\\]]+|\\[\', $md_nested_brackets_depth).\r\n	str_repeat(\'\\])*\', $md_nested_brackets_depth);\r\n\r\n# Table of hash values for escaped characters:\r\n$md_escape_table = array(\r\n	"\\\\" => md5("\\\\"),\r\n	"`" => md5("`"),\r\n	"*" => md5("*"),\r\n	"_" => md5("_"),\r\n	"{" => md5("{"),\r\n	"}" => md5("}"),\r\n	"[" => md5("["),\r\n	"]" => md5("]"),\r\n	"(" => md5("("),\r\n	")" => md5(")"),\r\n	">" => md5(">"),\r\n	"#" => md5("#"),\r\n	"+" => md5("+"),\r\n	"-" => md5("-"),\r\n	"." => md5("."),\r\n	"!" => md5("!")\r\n);\r\n# Create an identical table but for escaped characters.\r\n$md_backslash_escape_table;\r\nforeach ($md_escape_table as $key => $char)\r\n	$md_backslash_escape_table["\\\\$key"] = $char;\r\n\r\n\r\nfunction Markdown($text) {\r\n#\r\n# Main function. The order in which other subs are called here is\r\n# essential. Link and image substitutions need to happen before\r\n# _EscapeSpecialCharsWithinTagAttributes(), so that any *\'s or _\'s in the <a>\r\n# and <img> tags get encoded.\r\n#\r\n	# Clear the global hashes. If we don\'t clear these, you get conflicts\r\n	# from other articles when generating a page which contains more than\r\n	# one article (e.g. an index page that shows the N most recent\r\n	# articles):\r\n	global $md_urls, $md_titles, $md_html_blocks;\r\n	$md_urls = array();\r\n	$md_titles = array();\r\n	$md_html_blocks = array();\r\n\r\n	# Standardize line endings:\r\n	#   DOS to Unix and Mac to Unix\r\n	$text = str_replace(array("\\r\\n", "\\r"), "\\n", $text);\r\n\r\n	# Make sure $text ends with a couple of newlines:\r\n	$text .= "\\n\\n";\r\n\r\n	# Convert all tabs to spaces.\r\n	$text = _Detab($text);\r\n\r\n	# Strip any lines consisting only of spaces and tabs.\r\n	# This makes subsequent regexen easier to write, because we can\r\n	# match consecutive blank lines with /\\n+/ instead of something\r\n	# contorted like /[ \\t]*\\n+/ .\r\n	$text = preg_replace(\'/^[ \\t]+$/m\', \'\', $text);\r\n\r\n	# Turn block-level HTML blocks into hash entries\r\n	$text = _HashHTMLBlocks($text);\r\n\r\n	# Strip link definitions, store in hashes.\r\n	$text = _StripLinkDefinitions($text);\r\n\r\n	$text = _RunBlockGamut($text);\r\n\r\n	$text = _UnescapeSpecialChars($text);\r\n\r\n	return $text . "\\n";\r\n}\r\n\r\n\r\nfunction _StripLinkDefinitions($text) {\r\n#\r\n# Strips link definitions from text, stores the URLs and titles in\r\n# hash references.\r\n#\r\n	global $md_tab_width;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Link defs are in the form: ^[id]: url "optional title"\r\n	$text = preg_replace_callback(\'{\r\n						^[ ]{0,\'.$less_than_tab.\'}\\[(.+)\\]:	# id = $1\r\n						  [ \\t]*\r\n						  \\n?				# maybe *one* newline\r\n						  [ \\t]*\r\n						<?(\\S+?)>?			# url = $2\r\n						  [ \\t]*\r\n						  \\n?				# maybe one newline\r\n						  [ \\t]*\r\n						(?:\r\n							(?<=\\s)			# lookbehind for whitespace\r\n							["(]\r\n							(.+?)			# title = $3\r\n							[")]\r\n							[ \\t]*\r\n						)?	# title is optional\r\n						(?:\\n+|\\Z)\r\n		}xm\',\r\n		\'_StripLinkDefinitions_callback\',\r\n		$text);\r\n	return $text;\r\n}\r\nfunction _StripLinkDefinitions_callback($matches) {\r\n	global $md_urls, $md_titles;\r\n	$link_id = strtolower($matches[1]);\r\n	$md_urls[$link_id] = _EncodeAmpsAndAngles($matches[2]);\r\n	if (isset($matches[3]))\r\n		$md_titles[$link_id] = str_replace(\'"\', \'&quot;\', $matches[3]);\r\n	return \'\'; # String that will replace the block\r\n}\r\n\r\n\r\nfunction _HashHTMLBlocks($text) {\r\n	global $md_tab_width;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Hashify HTML blocks:\r\n	# We only want to do this for block-level HTML tags, such as headers,\r\n	# lists, and tables. That\'s because we still want to wrap <p>s around\r\n	# "paragraphs" that are wrapped in non-block-level tags, such as anchors,\r\n	# phrase emphasis, and spans. The list of tags we\'re looking for is\r\n	# hard-coded:\r\n	$block_tags_a = \'p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|\'.\r\n					\'script|noscript|form|fieldset|iframe|math|ins|del\';\r\n	$block_tags_b = \'p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|\'.\r\n					\'script|noscript|form|fieldset|iframe|math\';\r\n\r\n	# First, look for nested blocks, e.g.:\r\n	# 	<div>\r\n	# 		<div>\r\n	# 		tags for inner block must be indented.\r\n	# 		</div>\r\n	# 	</div>\r\n	#\r\n	# The outermost tags must start at the left margin for this to match, and\r\n	# the inner nested divs must be indented.\r\n	# We need to do this before the next, more liberal match, because the next\r\n	# match will start at the first `<div>` and stop at the first `</div>`.\r\n	$text = preg_replace_callback("{\r\n				(						# save in $1\r\n					^					# start of line  (with /m)\r\n					<($block_tags_a)	# start tag = $2\r\n					\\\\b					# word break\r\n					(.*\\\\n)*?			# any number of lines, minimally matching\r\n					</\\\\2>				# the matching end tag\r\n					[ \\\\t]*				# trailing spaces/tabs\r\n					(?=\\\\n+|\\\\Z)	# followed by a newline or end of document\r\n				)\r\n		}xm",\r\n		\'_HashHTMLBlocks_callback\',\r\n		$text);\r\n\r\n	#\r\n	# Now match more liberally, simply from `\\n<tag>` to `</tag>\\n`\r\n	#\r\n	$text = preg_replace_callback("{\r\n				(						# save in $1\r\n					^					# start of line  (with /m)\r\n					<($block_tags_b)	# start tag = $2\r\n					\\\\b					# word break\r\n					(.*\\\\n)*?			# any number of lines, minimally matching\r\n					.*</\\\\2>				# the matching end tag\r\n					[ \\\\t]*				# trailing spaces/tabs\r\n					(?=\\\\n+|\\\\Z)	# followed by a newline or end of document\r\n				)\r\n		}xm",\r\n		\'_HashHTMLBlocks_callback\',\r\n		$text);\r\n\r\n	# Special case just for <hr />. It was easier to make a special case than\r\n	# to make the other regex more complicated.\r\n	$text = preg_replace_callback(\'{\r\n				(?:\r\n					(?<=\\n\\n)		# Starting after a blank line\r\n					|				# or\r\n					\\A\\n?			# the beginning of the doc\r\n				)\r\n				(						# save in $1\r\n					[ ]{0,\'.$less_than_tab.\'}\r\n					<(hr)				# start tag = $2\r\n					\\b					# word break\r\n					([^<>])*?			#\r\n					/?>					# the matching end tag\r\n					[ \\t]*\r\n					(?=\\n{2,}|\\Z)		# followed by a blank line or end of document\r\n				)\r\n		}x\',\r\n		\'_HashHTMLBlocks_callback\',\r\n		$text);\r\n\r\n	# Special case for standalone HTML comments:\r\n	$text = preg_replace_callback(\'{\r\n				(?:\r\n					(?<=\\n\\n)		# Starting after a blank line\r\n					|				# or\r\n					\\A\\n?			# the beginning of the doc\r\n				)\r\n				(						# save in $1\r\n					[ ]{0,\'.$less_than_tab.\'}\r\n					(?s:\r\n						<!\r\n						(--.*?--\\s*)+\r\n						>\r\n					)\r\n					[ \\t]*\r\n					(?=\\n{2,}|\\Z)		# followed by a blank line or end of document\r\n				)\r\n			}x\',\r\n			\'_HashHTMLBlocks_callback\',\r\n			$text);\r\n\r\n	return $text;\r\n}\r\nfunction _HashHTMLBlocks_callback($matches) {\r\n	global $md_html_blocks;\r\n	$text = $matches[1];\r\n	$key = md5($text);\r\n	$md_html_blocks[$key] = $text;\r\n	return "\\n\\n$key\\n\\n"; # String that will replace the block\r\n}\r\n\r\n\r\nfunction _RunBlockGamut($text) {\r\n#\r\n# These are all the transformations that form block-level\r\n# tags like paragraphs, headers, and list items.\r\n#\r\n	global $md_empty_element_suffix;\r\n\r\n	$text = _DoHeaders($text);\r\n\r\n	# Do Horizontal Rules:\r\n	$text = preg_replace(\r\n		array(\'{^[ ]{0,2}([ ]?\\*[ ]?){3,}[ \\t]*$}mx\',\r\n			  \'{^[ ]{0,2}([ ]? -[ ]?){3,}[ \\t]*$}mx\',\r\n			  \'{^[ ]{0,2}([ ]? _[ ]?){3,}[ \\t]*$}mx\'),\r\n		"\\n<hr$md_empty_element_suffix\\n",\r\n		$text);\r\n\r\n	$text = _DoLists($text);\r\n	$text = _DoCodeBlocks($text);\r\n	$text = _DoBlockQuotes($text);\r\n\r\n	# We already ran _HashHTMLBlocks() before, in Markdown(), but that\r\n	# was to escape raw HTML in the original Markdown source. This time,\r\n	# we\'re escaping the markup we\'ve just created, so that we don\'t wrap\r\n	# <p> tags around block-level tags.\r\n	$text = _HashHTMLBlocks($text);\r\n	$text = _FormParagraphs($text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _RunSpanGamut($text) {\r\n#\r\n# These are all the transformations that occur *within* block-level\r\n# tags like paragraphs, headers, and list items.\r\n#\r\n	global $md_empty_element_suffix;\r\n\r\n	$text = _DoCodeSpans($text);\r\n\r\n	$text = _EscapeSpecialChars($text);\r\n\r\n	# Process anchor and image tags. Images must come first,\r\n	# because ![foo][f] looks like an anchor.\r\n	$text = _DoImages($text);\r\n	$text = _DoAnchors($text);\r\n\r\n	# Make links out of things like `<http://example.com/>`\r\n	# Must come after _DoAnchors(), because you can use < and >\r\n	# delimiters in inline links like [this](<url>).\r\n	$text = _DoAutoLinks($text);\r\n	$text = _EncodeAmpsAndAngles($text);\r\n	$text = _DoItalicsAndBold($text);\r\n\r\n	# Do hard breaks:\r\n	$text = preg_replace(\'/ {2,}\\n/\', "<br$md_empty_element_suffix\\n", $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EscapeSpecialChars($text) {\r\n	global $md_escape_table;\r\n	$tokens = _TokenizeHTML($text);\r\n\r\n	$text = \'\';   # rebuild $text from the tokens\r\n#	$in_pre = 0;  # Keep track of when we\'re inside <pre> or <code> tags.\r\n#	$tags_to_skip = "!<(/?)(?:pre|code|kbd|script|math)[\\s>]!";\r\n\r\n	foreach ($tokens as $cur_token) {\r\n		if ($cur_token[0] == \'tag\') {\r\n			# Within tags, encode * and _ so they don\'t conflict\r\n			# with their use in Markdown for italics and strong.\r\n			# We\'re replacing each such character with its\r\n			# corresponding MD5 checksum value; this is likely\r\n			# overkill, but it should prevent us from colliding\r\n			# with the escape values by accident.\r\n			$cur_token[1] = str_replace(array(\'*\', \'_\'),\r\n				array($md_escape_table[\'*\'], $md_escape_table[\'_\']),\r\n				$cur_token[1]);\r\n			$text .= $cur_token[1];\r\n		} else {\r\n			$t = $cur_token[1];\r\n			$t = _EncodeBackslashEscapes($t);\r\n			$text .= $t;\r\n		}\r\n	}\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoAnchors($text) {\r\n#\r\n# Turn Markdown link shortcuts into XHTML <a> tags.\r\n#\r\n	global $md_nested_brackets;\r\n	#\r\n	# First, handle reference-style links: [link text] [id]\r\n	#\r\n	$text = preg_replace_callback("{\r\n		(					# wrap whole match in $1\r\n		  \\\\[\r\n			($md_nested_brackets)	# link text = $2\r\n		  \\\\]\r\n\r\n		  [ ]?				# one optional space\r\n		  (?:\\\\n[ ]*)?		# one optional newline followed by spaces\r\n\r\n		  \\\\[\r\n			(.*?)		# id = $3\r\n		  \\\\]\r\n		)\r\n		}xs",\r\n		\'_DoAnchors_reference_callback\', $text);\r\n\r\n	#\r\n	# Next, inline-style links: [link text](url "optional title")\r\n	#\r\n	$text = preg_replace_callback("{\r\n		(				# wrap whole match in $1\r\n		  \\\\[\r\n			($md_nested_brackets)	# link text = $2\r\n		  \\\\]\r\n		  \\\\(			# literal paren\r\n			[ \\\\t]*\r\n			<?(.*?)>?	# href = $3\r\n			[ \\\\t]*\r\n			(			# $4\r\n			  ([\'\\"])	# quote char = $5\r\n			  (.*?)		# Title = $6\r\n			  \\\\5		# matching quote\r\n			)?			# title is optional\r\n		  \\\\)\r\n		)\r\n		}xs",\r\n		\'_DoAnchors_inline_callback\', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoAnchors_reference_callback($matches) {\r\n	global $md_urls, $md_titles, $md_escape_table;\r\n	$whole_match = $matches[1];\r\n	$link_text   = $matches[2];\r\n	$link_id     = strtolower($matches[3]);\r\n\r\n	if ($link_id == "") {\r\n		$link_id = strtolower($link_text); # for shortcut links like [this][].\r\n	}\r\n\r\n	if (isset($md_urls[$link_id])) {\r\n		$url = $md_urls[$link_id];\r\n		# We\'ve got to encode these to avoid conflicting with italics/bold.\r\n		$url = str_replace(array(\'*\', \'_\'),\r\n						   array($md_escape_table[\'*\'], $md_escape_table[\'_\']),\r\n						   $url);\r\n		$result = "<a href=\\"$url\\"";\r\n		if ( isset( $md_titles[$link_id] ) ) {\r\n			$title = $md_titles[$link_id];\r\n			$title = str_replace(array(\'*\',     \'_\'),\r\n								 array($md_escape_table[\'*\'],\r\n									   $md_escape_table[\'_\']), $title);\r\n			$result .=  " title=\\"$title\\"";\r\n		}\r\n		$result .= ">$link_text</a>";\r\n	}\r\n	else {\r\n		$result = $whole_match;\r\n	}\r\n	return $result;\r\n}\r\nfunction _DoAnchors_inline_callback($matches) {\r\n	global $md_escape_table;\r\n	$whole_match	= $matches[1];\r\n	$link_text		= $matches[2];\r\n	$url			= $matches[3];\r\n	$title			=& $matches[6];\r\n\r\n	# We\'ve got to encode these to avoid conflicting with italics/bold.\r\n	$url = str_replace(array(\'*\', \'_\'),\r\n					   array($md_escape_table[\'*\'], $md_escape_table[\'_\']),\r\n					   $url);\r\n	$result = "<a href=\\"$url\\"";\r\n	if (isset($title)) {\r\n		$title = str_replace(\'"\', \'&quot;\', $title);\r\n		$title = str_replace(array(\'*\', \'_\'),\r\n							 array($md_escape_table[\'*\'], $md_escape_table[\'_\']),\r\n							 $title);\r\n		$result .=  " title=\\"$title\\"";\r\n	}\r\n\r\n	$result .= ">$link_text</a>";\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoImages($text) {\r\n#\r\n# Turn Markdown image shortcuts into <img> tags.\r\n#\r\n	global $md_nested_brackets;\r\n\r\n	#\r\n	# First, handle reference-style labeled images: ![alt text][id]\r\n	#\r\n	$text = preg_replace_callback(\'{\r\n		(				# wrap whole match in $1\r\n		  !\\[\r\n			(\'.$md_nested_brackets.\')		# alt text = $2\r\n		  \\]\r\n\r\n		  [ ]?				# one optional space\r\n		  (?:\\n[ ]*)?		# one optional newline followed by spaces\r\n\r\n		  \\[\r\n			(.*?)		# id = $3\r\n		  \\]\r\n\r\n		)\r\n		}xs\',\r\n		\'_DoImages_reference_callback\', $text);\r\n\r\n	#\r\n	# Next, handle inline images:  ![alt text](url "optional title")\r\n	# Don\'t forget: encode * and _\r\n\r\n	$text = preg_replace_callback(\'{\r\n		(				# wrap whole match in $1\r\n		  !\\[\r\n			(\'.$md_nested_brackets.\')		# alt text = $2\r\n		  \\]\r\n		  \\(			# literal paren\r\n			[ \\t]*\r\n			<?(\\S+?)>?	# src url = $3\r\n			[ \\t]*\r\n			(			# $4\r\n			  ([\\\'"])	# quote char = $5\r\n			  (.*?)		# title = $6\r\n			  \\5		# matching quote\r\n			  [ \\t]*\r\n			)?			# title is optional\r\n		  \\)\r\n		)\r\n		}xs\',\r\n		\'_DoImages_inline_callback\', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoImages_reference_callback($matches) {\r\n	global $md_urls, $md_titles, $md_empty_element_suffix, $md_escape_table;\r\n	$whole_match = $matches[1];\r\n	$alt_text    = $matches[2];\r\n	$link_id     = strtolower($matches[3]);\r\n\r\n	if ($link_id == "") {\r\n		$link_id = strtolower($alt_text); # for shortcut links like ![this][].\r\n	}\r\n\r\n	$alt_text = str_replace(\'"\', \'&quot;\', $alt_text);\r\n	if (isset($md_urls[$link_id])) {\r\n		$url = $md_urls[$link_id];\r\n		# We\'ve got to encode these to avoid conflicting with italics/bold.\r\n		$url = str_replace(array(\'*\', \'_\'),\r\n						   array($md_escape_table[\'*\'], $md_escape_table[\'_\']),\r\n						   $url);\r\n		$result = "<img src=\\"$url\\" alt=\\"$alt_text\\"";\r\n		if (isset($md_titles[$link_id])) {\r\n			$title = $md_titles[$link_id];\r\n			$title = str_replace(array(\'*\', \'_\'),\r\n								 array($md_escape_table[\'*\'],\r\n									   $md_escape_table[\'_\']), $title);\r\n			$result .=  " title=\\"$title\\"";\r\n		}\r\n		$result .= $md_empty_element_suffix;\r\n	}\r\n	else {\r\n		# If there\'s no such link ID, leave intact:\r\n		$result = $whole_match;\r\n	}\r\n\r\n	return $result;\r\n}\r\nfunction _DoImages_inline_callback($matches) {\r\n	global $md_empty_element_suffix, $md_escape_table;\r\n	$whole_match	= $matches[1];\r\n	$alt_text		= $matches[2];\r\n	$url			= $matches[3];\r\n	$title			= \'\';\r\n	if (isset($matches[6])) {\r\n		$title		= $matches[6];\r\n	}\r\n\r\n	$alt_text = str_replace(\'"\', \'&quot;\', $alt_text);\r\n	$title    = str_replace(\'"\', \'&quot;\', $title);\r\n	# We\'ve got to encode these to avoid conflicting with italics/bold.\r\n	$url = str_replace(array(\'*\', \'_\'),\r\n					   array($md_escape_table[\'*\'], $md_escape_table[\'_\']),\r\n					   $url);\r\n	$result = "<img src=\\"$url\\" alt=\\"$alt_text\\"";\r\n	if (isset($title)) {\r\n		$title = str_replace(array(\'*\', \'_\'),\r\n							 array($md_escape_table[\'*\'], $md_escape_table[\'_\']),\r\n							 $title);\r\n		$result .=  " title=\\"$title\\""; # $title already quoted\r\n	}\r\n	$result .= $md_empty_element_suffix;\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoHeaders($text) {\r\n	# Setext-style headers:\r\n	#	  Header 1\r\n	#	  ========\r\n	#\r\n	#	  Header 2\r\n	#	  --------\r\n	#\r\n	$text = preg_replace(\r\n		array(\'{ ^(.+)[ \\t]*\\n=+[ \\t]*\\n+ }emx\',\r\n			  \'{ ^(.+)[ \\t]*\\n-+[ \\t]*\\n+ }emx\'),\r\n		array("\'<h1>\'._RunSpanGamut(_UnslashQuotes(\'\\\\1\')).\'</h1>\\n\\n\'",\r\n			  "\'<h2>\'._RunSpanGamut(_UnslashQuotes(\'\\\\1\')).\'</h2>\\n\\n\'"),\r\n		$text);\r\n\r\n	# atx-style headers:\r\n	#	# Header 1\r\n	#	## Header 2\r\n	#	## Header 2 with closing hashes ##\r\n	#	...\r\n	#	###### Header 6\r\n	#\r\n	$text = preg_replace("{\r\n			^(\\\\#{1,6})	# $1 = string of #\'s\r\n			[ \\\\t]*\r\n			(.+?)		# $2 = Header text\r\n			[ \\\\t]*\r\n			\\\\#*			# optional closing #\'s (not counted)\r\n			\\\\n+\r\n		}xme",\r\n		"\'<h\'.strlen(\'\\\\1\').\'>\'._RunSpanGamut(_UnslashQuotes(\'\\\\2\')).\'</h\'.strlen(\'\\\\1\').\'>\\n\\n\'",\r\n		$text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoLists($text) {\r\n#\r\n# Form HTML ordered (numbered) and unordered (bulleted) lists.\r\n#\r\n	global $md_tab_width, $md_list_level;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = \'[*+-]\';\r\n	$marker_ol  = \'\\d+[.]\';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$markers = array($marker_ul, $marker_ol);\r\n\r\n	foreach ($markers as $marker) {\r\n		# Re-usable pattern to match any entirel ul or ol list:\r\n		$whole_list = \'\r\n			(								# $1 = whole list\r\n			  (								# $2\r\n				[ ]{0,\'.$less_than_tab.\'}\r\n				(\'.$marker.\')				# $3 = first list item marker\r\n				[ \\t]+\r\n			  )\r\n			  (?s:.+?)\r\n			  (								# $4\r\n				  \\z\r\n				|\r\n				  \\n{2,}\r\n				  (?=\\S)\r\n				  (?!						# Negative lookahead for another list item marker\r\n					[ \\t]*\r\n					\'.$marker.\'[ \\t]+\r\n				  )\r\n			  )\r\n			)\r\n		\'; // mx\r\n\r\n		# We use a different prefix before nested lists than top-level lists.\r\n		# See extended comment in _ProcessListItems().\r\n\r\n		if ($md_list_level) {\r\n			$text = preg_replace_callback(\'{\r\n					^\r\n					\'.$whole_list.\'\r\n				}mx\',\r\n				\'_DoLists_callback_top\', $text);\r\n		}\r\n		else {\r\n			$text = preg_replace_callback(\'{\r\n					(?:(?<=\\n\\n)|\\A\\n?)\r\n					\'.$whole_list.\'\r\n				}mx\',\r\n				\'_DoLists_callback_nested\', $text);\r\n		}\r\n	}\r\n\r\n	return $text;\r\n}\r\nfunction _DoLists_callback_top($matches) {\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = \'[*+-]\';\r\n	$marker_ol  = \'\\d+[.]\';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$list = $matches[1];\r\n	$list_type = preg_match("/$marker_ul/", $matches[3]) ? "ul" : "ol";\r\n\r\n	$marker_any = ( $list_type == "ul" ? $marker_ul : $marker_ol );\r\n\r\n	# Turn double returns into triple returns, so that we can make a\r\n	# paragraph for the last item in a list, if necessary:\r\n	$list = preg_replace("/\\n{2,}/", "\\n\\n\\n", $list);\r\n	$result = _ProcessListItems($list, $marker_any);\r\n\r\n	# Trim any trailing whitespace, to put the closing `</$list_type>`\r\n	# up on the preceding line, to get it past the current stupid\r\n	# HTML block parser. This is a hack to work around the terrible\r\n	# hack that is the HTML block parser.\r\n	$result = rtrim($result);\r\n	$result = "<$list_type>" . $result . "</$list_type>\\n";\r\n	return $result;\r\n}\r\nfunction _DoLists_callback_nested($matches) {\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = \'[*+-]\';\r\n	$marker_ol  = \'\\d+[.]\';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$list = $matches[1];\r\n	$list_type = preg_match("/$marker_ul/", $matches[3]) ? "ul" : "ol";\r\n\r\n	$marker_any = ( $list_type == "ul" ? $marker_ul : $marker_ol );\r\n\r\n	# Turn double returns into triple returns, so that we can make a\r\n	# paragraph for the last item in a list, if necessary:\r\n	$list = preg_replace("/\\n{2,}/", "\\n\\n\\n", $list);\r\n	$result = _ProcessListItems($list, $marker_any);\r\n	$result = "<$list_type>\\n" . $result . "</$list_type>\\n";\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _ProcessListItems($list_str, $marker_any) {\r\n#\r\n#	Process the contents of a single ordered or unordered list, splitting it\r\n#	into individual list items.\r\n#\r\n	global $md_list_level;\r\n\r\n	# The $md_list_level global keeps track of when we\'re inside a list.\r\n	# Each time we enter a list, we increment it; when we leave a list,\r\n	# we decrement. If it\'s zero, we\'re not in a list anymore.\r\n	#\r\n	# We do this because when we\'re not inside a list, we want to treat\r\n	# something like this:\r\n	#\r\n	#		I recommend upgrading to version\r\n	#		8. Oops, now this line is treated\r\n	#		as a sub-list.\r\n	#\r\n	# As a single paragraph, despite the fact that the second line starts\r\n	# with a digit-period-space sequence.\r\n	#\r\n	# Whereas when we\'re inside a list (or sub-list), that line will be\r\n	# treated as the start of a sub-list. What a kludge, huh? This is\r\n	# an aspect of Markdown\'s syntax that\'s hard to parse perfectly\r\n	# without resorting to mind-reading. Perhaps the solution is to\r\n	# change the syntax rules such that sub-lists must start with a\r\n	# starting cardinal number; e.g. "1." or "a.".\r\n\r\n	$md_list_level++;\r\n\r\n	# trim trailing blank lines:\r\n	$list_str = preg_replace("/\\n{2,}\\\\z/", "\\n", $list_str);\r\n\r\n	$list_str = preg_replace_callback(\'{\r\n		(\\n)?							# leading line = $1\r\n		(^[ \\t]*)						# leading whitespace = $2\r\n		(\'.$marker_any.\') [ \\t]+		# list marker = $3\r\n		((?s:.+?)						# list item text   = $4\r\n		(\\n{1,2}))\r\n		(?= \\n* (\\z | \\2 (\'.$marker_any.\') [ \\t]+))\r\n		}xm\',\r\n		\'_ProcessListItems_callback\', $list_str);\r\n\r\n	$md_list_level--;\r\n	return $list_str;\r\n}\r\nfunction _ProcessListItems_callback($matches) {\r\n	$item = $matches[4];\r\n	$leading_line =& $matches[1];\r\n	$leading_space =& $matches[2];\r\n\r\n	if ($leading_line || preg_match(\'/\\n{2,}/\', $item)) {\r\n		$item = _RunBlockGamut(_Outdent($item));\r\n	}\r\n	else {\r\n		# Recursion for sub-lists:\r\n		$item = _DoLists(_Outdent($item));\r\n		$item = preg_replace(\'/\\n+$/\', \'\', $item);\r\n		$item = _RunSpanGamut($item);\r\n	}\r\n\r\n	return "<li>" . $item . "</li>\\n";\r\n}\r\n\r\n\r\nfunction _DoCodeBlocks($text) {\r\n#\r\n#	Process Markdown `<pre><code>` blocks.\r\n#\r\n	global $md_tab_width;\r\n	$text = preg_replace_callback("{\r\n			(?:\\\\n\\\\n|\\\\A)\r\n			(	            # $1 = the code block -- one or more lines, starting with a space/tab\r\n			  (?:\r\n				(?:[ ]\\{$md_tab_width} | \\\\t)  # Lines must start with a tab or a tab-width of spaces\r\n				.*\\\\n+\r\n			  )+\r\n			)\r\n			((?=^[ ]{0,$md_tab_width}\\\\S)|\\\\Z)	# Lookahead for non-space at line-start, or end of doc\r\n		}xm",\r\n		\'_DoCodeBlocks_callback\', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoCodeBlocks_callback($matches) {\r\n	$codeblock = $matches[1];\r\n\r\n	$codeblock = _EncodeCode(_Outdent($codeblock));\r\n//	$codeblock = _Detab($codeblock);\r\n	# trim leading newlines and trailing whitespace\r\n	$codeblock = preg_replace(array(\'/\\A\\n+/\', \'/\\s+\\z/\'), \'\', $codeblock);\r\n\r\n	$result = "\\n\\n<pre><code>" . $codeblock . "\\n</code></pre>\\n\\n";\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoCodeSpans($text) {\r\n#\r\n# 	*	Backtick quotes are used for <code></code> spans.\r\n#\r\n# 	*	You can use multiple backticks as the delimiters if you want to\r\n# 		include literal backticks in the code span. So, this input:\r\n#\r\n#		  Just type ``foo `bar` baz`` at the prompt.\r\n#\r\n#	  	Will translate to:\r\n#\r\n#		  <p>Just type <code>foo `bar` baz</code> at the prompt.</p>\r\n#\r\n#		There\'s no arbitrary limit to the number of backticks you\r\n#		can use as delimters. If you need three consecutive backticks\r\n#		in your code, use four for delimiters, etc.\r\n#\r\n#	*	You can use spaces to get literal backticks at the edges:\r\n#\r\n#		  ... type `` `bar` `` ...\r\n#\r\n#	  	Turns to:\r\n#\r\n#		  ... type <code>`bar`</code> ...\r\n#\r\n	$text = preg_replace_callback(\'@\r\n			(?<!\\\\\\)	# Character before opening ` can\\\'t be a backslash\r\n			(`+)		# $1 = Opening run of `\r\n			(.+?)		# $2 = The code block\r\n			(?<!`)\r\n			\\1			# Matching closer\r\n			(?!`)\r\n		@xs\',\r\n		\'_DoCodeSpans_callback\', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoCodeSpans_callback($matches) {\r\n	$c = $matches[2];\r\n	$c = preg_replace(\'/^[ \\t]*/\', \'\', $c); # leading whitespace\r\n	$c = preg_replace(\'/[ \\t]*$/\', \'\', $c); # trailing whitespace\r\n	$c = _EncodeCode($c);\r\n	return "<code>$c</code>";\r\n}\r\n\r\n\r\nfunction _EncodeCode($_) {\r\n#\r\n# Encode/escape certain characters inside Markdown code runs.\r\n# The point is that in code, these characters are literals,\r\n# and lose their special Markdown meanings.\r\n#\r\n	global $md_escape_table;\r\n\r\n	# Encode all ampersands; HTML entities are not\r\n	# entities within a Markdown code span.\r\n	$_ = str_replace(\'&\', \'&amp;\', $_);\r\n\r\n	# Do the angle bracket song and dance:\r\n	$_ = str_replace(array(\'<\',    \'>\'),\r\n					 array(\'&lt;\', \'&gt;\'), $_);\r\n\r\n	# Now, escape characters that are magic in Markdown:\r\n	$_ = str_replace(array_keys($md_escape_table),\r\n					 array_values($md_escape_table), $_);\r\n\r\n	return $_;\r\n}\r\n\r\n\r\nfunction _DoItalicsAndBold($text) {\r\n	# <strong> must go first:\r\n	$text = preg_replace(\'{\r\n			(						# $1: Marker\r\n				(?<!\\*\\*) \\*\\* |	#     (not preceded by two chars of\r\n				(?<!__)   __		#      the same marker)\r\n			)\r\n			(?=\\S) 					# Not followed by whitespace\r\n			(?!\\1)					#   or two others marker chars.\r\n			(						# $2: Content\r\n				(?:\r\n					[^*_]+?			# Anthing not em markers.\r\n				|\r\n									# Balence any regular emphasis inside.\r\n					([*_]) (?=\\S) .+? (?<=\\S) \\3	# $3: em char (* or _)\r\n				|\r\n					(?! \\1 ) .		# Allow unbalenced * and _.\r\n				)+?\r\n			)\r\n			(?<=\\S) \\1				# End mark not preceded by whitespace.\r\n		}sx\',\r\n		\'<strong>\\2</strong>\', $text);\r\n	# Then <em>:\r\n	$text = preg_replace(\r\n		\'{ ( (?<!\\*)\\* | (?<!_)_ ) (?=\\S) (?! \\1) (.+?) (?<=\\S) \\1 }sx\',\r\n		\'<em>\\2</em>\', $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoBlockQuotes($text) {\r\n	$text = preg_replace_callback(\'/\r\n		  (								# Wrap whole match in $1\r\n			(\r\n			  ^[ \\t]*>[ \\t]?			# ">" at the start of a line\r\n				.+\\n					# rest of the first line\r\n			  (.+\\n)*					# subsequent consecutive lines\r\n			  \\n*						# blanks\r\n			)+\r\n		  )\r\n		/xm\',\r\n		\'_DoBlockQuotes_callback\', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoBlockQuotes_callback($matches) {\r\n	$bq = $matches[1];\r\n	# trim one level of quoting - trim whitespace-only lines\r\n	$bq = preg_replace(array(\'/^[ \\t]*>[ \\t]?/m\', \'/^[ \\t]+$/m\'), \'\', $bq);\r\n	$bq = _RunBlockGamut($bq);		# recurse\r\n\r\n	$bq = preg_replace(\'/^/m\', "  ", $bq);\r\n	# These leading spaces screw with <pre> content, so we need to fix that:\r\n	$bq = preg_replace_callback(\'{(\\s*<pre>.+?</pre>)}sx\',\r\n								\'_DoBlockQuotes_callback2\', $bq);\r\n\r\n	return "<blockquote>\\n$bq\\n</blockquote>\\n\\n";\r\n}\r\nfunction _DoBlockQuotes_callback2($matches) {\r\n	$pre = $matches[1];\r\n	$pre = preg_replace(\'/^  /m\', \'\', $pre);\r\n	return $pre;\r\n}\r\n\r\n\r\nfunction _FormParagraphs($text) {\r\n#\r\n#	Params:\r\n#		$text - string to process with html <p> tags\r\n#\r\n	global $md_html_blocks;\r\n\r\n	# Strip leading and trailing lines:\r\n	$text = preg_replace(array(\'/\\A\\n+/\', \'/\\n+\\z/\'), \'\', $text);\r\n\r\n	$grafs = preg_split(\'/\\n{2,}/\', $text, -1, PREG_SPLIT_NO_EMPTY);\r\n\r\n	#\r\n	# Wrap <p> tags.\r\n	#\r\n	foreach ($grafs as $key => $value) {\r\n		if (!isset( $md_html_blocks[$value] )) {\r\n			$value = _RunSpanGamut($value);\r\n			$value = preg_replace(\'/^([ \\t]*)/\', \'<p>\', $value);\r\n			$value .= "</p>";\r\n			$grafs[$key] = $value;\r\n		}\r\n	}\r\n\r\n	#\r\n	# Unhashify HTML blocks\r\n	#\r\n	foreach ($grafs as $key => $value) {\r\n		if (isset( $md_html_blocks[$value] )) {\r\n			$grafs[$key] = $md_html_blocks[$value];\r\n		}\r\n	}\r\n\r\n	return implode("\\n\\n", $grafs);\r\n}\r\n\r\n\r\nfunction _EncodeAmpsAndAngles($text) {\r\n# Smart processing for ampersands and angle brackets that need to be encoded.\r\n\r\n	# Ampersand-encoding based entirely on Nat Irons\'s Amputator MT plugin:\r\n	#   http://bumppo.net/projects/amputator/\r\n	$text = preg_replace(\'/&(?!#?[xX]?(?:[0-9a-fA-F]+|\\w+);)/\',\r\n						 \'&amp;\', $text);;\r\n\r\n	# Encode naked <\'s\r\n	$text = preg_replace(\'{<(?![a-z/?\\$!])}i\', \'&lt;\', $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EncodeBackslashEscapes($text) {\r\n#\r\n#	Parameter:  String.\r\n#	Returns:    The string, with after processing the following backslash\r\n#				escape sequences.\r\n#\r\n	global $md_escape_table, $md_backslash_escape_table;\r\n	# Must process escaped backslashes first.\r\n	return str_replace(array_keys($md_backslash_escape_table),\r\n					   array_values($md_backslash_escape_table), $text);\r\n}\r\n\r\n\r\nfunction _DoAutoLinks($text) {\r\n	$text = preg_replace("!<((https?|ftp):[^\'\\">\\\\s]+)>!",\r\n						 \'<a href="\\1">\\1</a>\', $text);\r\n\r\n	# Email addresses: <address@domain.foo>\r\n	$text = preg_replace(\'{\r\n		<\r\n        (?:mailto:)?\r\n		(\r\n			[-.\\w]+\r\n			\\@\r\n			[-a-z0-9]+(\\.[-a-z0-9]+)*\\.[a-z]+\r\n		)\r\n		>\r\n		}exi\',\r\n		"_EncodeEmailAddress(_UnescapeSpecialChars(_UnslashQuotes(\'\\\\1\')))",\r\n		$text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EncodeEmailAddress($addr) {\r\n#\r\n#	Input: an email address, e.g. "foo@example.com"\r\n#\r\n#	Output: the email address as a mailto link, with each character\r\n#		of the address encoded as either a decimal or hex entity, in\r\n#		the hopes of foiling most address harvesting spam bots. E.g.:\r\n#\r\n#	  <a href="&#x6D;&#97;&#105;&#108;&#x74;&#111;:&#102;&#111;&#111;&#64;&#101;\r\n#		x&#x61;&#109;&#x70;&#108;&#x65;&#x2E;&#99;&#111;&#109;">&#102;&#111;&#111;\r\n#		&#64;&#101;x&#x61;&#109;&#x70;&#108;&#x65;&#x2E;&#99;&#111;&#109;</a>\r\n#\r\n#	Based by a filter by Matthew Wickline, posted to the BBEdit-Talk\r\n#	mailing list: <http://tinyurl.com/yu7ue>\r\n#\r\n	$addr = "mailto:" . $addr;\r\n	$length = strlen($addr);\r\n\r\n	# leave \':\' alone (to spot mailto: later)\r\n	$addr = preg_replace_callback(\'/([^\\:])/\',\r\n								  \'_EncodeEmailAddress_callback\', $addr);\r\n\r\n	$addr = "<a href=\\"$addr\\">$addr</a>";\r\n	# strip the mailto: from the visible part\r\n	$addr = preg_replace(\'/">.+?:/\', \'">\', $addr);\r\n\r\n	return $addr;\r\n}\r\nfunction _EncodeEmailAddress_callback($matches) {\r\n	$char = $matches[1];\r\n	$r = rand(0, 100);\r\n	# roughly 10% raw, 45% hex, 45% dec\r\n	# \'@\' *must* be encoded. I insist.\r\n	if ($r > 90 && $char != \'@\') return $char;\r\n	if ($r < 45) return \'&#x\'.dechex(ord($char)).\';\';\r\n	return \'&#\'.ord($char).\';\';\r\n}\r\n\r\n\r\nfunction _UnescapeSpecialChars($text) {\r\n#\r\n# Swap back in all the special characters we\'ve hidden.\r\n#\r\n	global $md_escape_table;\r\n	return str_replace(array_values($md_escape_table),\r\n					   array_keys($md_escape_table), $text);\r\n}\r\n\r\n\r\n# _TokenizeHTML is shared between PHP Markdown and PHP SmartyPants.\r\n# We only define it if it is not already defined.\r\nif (!function_exists(\'_TokenizeHTML\')) :\r\nfunction _TokenizeHTML($str) {\r\n#\r\n#   Parameter:  String containing HTML markup.\r\n#   Returns:    An array of the tokens comprising the input\r\n#               string. Each token is either a tag (possibly with nested,\r\n#               tags contained therein, such as <a href="<MTFoo>">, or a\r\n#               run of text between tags. Each element of the array is a\r\n#               two-element array; the first is either \'tag\' or \'text\';\r\n#               the second is the actual value.\r\n#\r\n#\r\n#   Regular expression derived from the _tokenize() subroutine in\r\n#   Brad Choate\'s MTRegex plugin.\r\n#   <http://www.bradchoate.com/past/mtregex.php>\r\n#\r\n	$index = 0;\r\n	$tokens = array();\r\n\r\n	$match = \'(?s:<!(?:--.*?--\\s*)+>)|\'.	# comment\r\n			 \'(?s:<\\?.*?\\?>)|\'.				# processing instruction\r\n			 								# regular tags\r\n			 \'(?:<[/!$]?[-a-zA-Z0-9:]+\\b(?>[^"\\\'>]+|"[^"]*"|\\\'[^\\\']*\\\')*>)\';\r\n\r\n	$parts = preg_split("{($match)}", $str, -1, PREG_SPLIT_DELIM_CAPTURE);\r\n\r\n	foreach ($parts as $part) {\r\n		if (++$index % 2 && $part != \'\')\r\n			$tokens[] = array(\'text\', $part);\r\n		else\r\n			$tokens[] = array(\'tag\', $part);\r\n	}\r\n\r\n	return $tokens;\r\n}\r\nendif;\r\n\r\n\r\nfunction _Outdent($text) {\r\n#\r\n# Remove one level of line-leading tabs or spaces\r\n#\r\n	global $md_tab_width;\r\n	return preg_replace("/^(\\\\t|[ ]{1,$md_tab_width})/m", "", $text);\r\n}\r\n\r\n\r\nfunction _Detab($text) {\r\n#\r\n# Replace tabs with the appropriate amount of space.\r\n#\r\n	global $md_tab_width;\r\n\r\n	# For each line we separate the line in blocks delemited by\r\n	# tab characters. Then we reconstruct every line by adding the\r\n	# appropriate number of space between each blocks.\r\n\r\n	$lines = explode("\\n", $text);\r\n	$text = "";\r\n\r\n	foreach ($lines as $line) {\r\n		# Split in blocks.\r\n		$blocks = explode("\\t", $line);\r\n		# Add each blocks to the line.\r\n		$line = $blocks[0];\r\n		unset($blocks[0]); # Do not add first block twice.\r\n		foreach ($blocks as $block) {\r\n			# Calculate amount of space, insert spaces, insert block.\r\n			$amount = $md_tab_width - strlen($line) % $md_tab_width;\r\n			$line .= str_repeat(" ", $amount) . $block;\r\n		}\r\n		$text .= "$line\\n";\r\n	}\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _UnslashQuotes($text) {\r\n#\r\n#	This function is useful to remove automaticaly slashed double quotes\r\n#	when using preg_replace and evaluating an expression.\r\n#	Parameter:  String.\r\n#	Returns:    The string with any slash-double-quote (\\") sequence replaced\r\n#				by a single double quote.\r\n#\r\n	return str_replace(\'\\"\', \'"\', $text);\r\n}\r\n\r\n\r\n/*\r\n\r\nPHP Markdown\r\n============\r\n\r\nDescription\r\n-----------\r\n\r\nThis is a PHP translation of the original Markdown formatter written in\r\nPerl by John Gruber.\r\n\r\nMarkdown is a text-to-HTML filter; it translates an easy-to-read /\r\neasy-to-write structured text format into HTML. Markdown\'s text format\r\nis most similar to that of plain text email, and supports features such\r\nas headers, *emphasis*, code blocks, blockquotes, and links.\r\n\r\nMarkdown\'s syntax is designed not as a generic markup language, but\r\nspecifically to serve as a front-end to (X)HTML. You can use span-level\r\nHTML tags anywhere in a Markdown document, and you can use block level\r\nHTML tags (like <div> and <table> as well).\r\n\r\nFor more information about Markdown\'s syntax, see:\r\n\r\n<http://daringfireball.net/projects/markdown/>\r\n\r\n\r\nBugs\r\n----\r\n\r\nTo file bug reports please send email to:\r\n\r\n<michel.fortin@michelf.com>\r\n\r\nPlease include with your report: (1) the example input; (2) the output you\r\nexpected; (3) the output Markdown actually produced.\r\n\r\n\r\nVersion History\r\n---------------\r\n\r\nSee the readme file for detailed release notes for this version.\r\n\r\n1.0.1b - 6 Jun 2005\r\n\r\n1.0.1a - 15 Apr 2005\r\n\r\n1.0.1 - 16 Dec 2004\r\n\r\n1.0 - 21 Aug 2004\r\n\r\n\r\nAuthor & Contributors\r\n---------------------\r\n\r\nOriginal Perl version by John Gruber\r\n<http://daringfireball.net/>\r\n\r\nPHP port and other contributions by Michel Fortin\r\n<http://www.michelf.com/>\r\n\r\n\r\nCopyright and License\r\n---------------------\r\n\r\nCopyright (c) 2004-2005 Michel Fortin\r\n<http://www.michelf.com/>\r\nAll rights reserved.\r\n\r\nCopyright (c) 2003-2004 John Gruber\r\n<http://daringfireball.net/>\r\nAll rights reserved.\r\n\r\nRedistribution and use in source and binary forms, with or without\r\nmodification, are permitted provided that the following conditions are\r\nmet:\r\n\r\n*	Redistributions of source code must retain the above copyright notice,\r\n	this list of conditions and the following disclaimer.\r\n\r\n*	Redistributions in binary form must reproduce the above copyright\r\n	notice, this list of conditions and the following disclaimer in the\r\n	documentation and/or other materials provided with the distribution.\r\n\r\n*	Neither the name "Markdown" nor the names of its contributors may\r\n	be used to endorse or promote products derived from this software\r\n	without specific prior written permission.\r\n\r\nThis software is provided by the copyright holders and contributors "as\r\nis" and any express or implied warranties, including, but not limited\r\nto, the implied warranties of merchantability and fitness for a\r\nparticular purpose are disclaimed. In no event shall the copyright owner\r\nor contributors be liable for any direct, indirect, incidental, special,\r\nexemplary, or consequential damages (including, but not limited to,\r\nprocurement of substitute goods or services; loss of use, data, or\r\nprofits; or business interruption) however caused and on any theory of\r\nliability, whether in contract, strict liability, or tort (including\r\nnegligence or otherwise) arising in any way out of the use of this\r\nsoftware, even if advised of the possibility of such damage.\r\n\r\n*/');
/*!40000 ALTER TABLE `qtdpv_facileforms_pieces` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_facileforms_records
CREATE TABLE IF NOT EXISTS `qtdpv_facileforms_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submitted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `form` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(30) NOT NULL DEFAULT '',
  `browser` varchar(255) NOT NULL DEFAULT '',
  `opsys` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(255) NOT NULL DEFAULT '',
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `exported` tinyint(1) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `user_full_name` varchar(255) NOT NULL DEFAULT '',
  `paypal_tx_id` varchar(255) NOT NULL DEFAULT '',
  `paypal_payment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paypal_testaccount` tinyint(1) NOT NULL DEFAULT '0',
  `paypal_download_tries` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_facileforms_records: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_facileforms_records` DISABLE KEYS */;
INSERT INTO `qtdpv_facileforms_records` (`id`, `submitted`, `form`, `title`, `name`, `ip`, `browser`, `opsys`, `provider`, `viewed`, `exported`, `archived`, `user_id`, `username`, `user_full_name`, `paypal_tx_id`, `paypal_payment_date`, `paypal_testaccount`, `paypal_download_tries`) VALUES
	(1, '2016-05-01 06:02:08', 1, 'Contato', 'Contato', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'win', 'Unknown', 1, 0, 0, 564, 'admin', 'Super User', '', '0000-00-00 00:00:00', 0, 0);
/*!40000 ALTER TABLE `qtdpv_facileforms_records` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_facileforms_scripts
CREATE TABLE IF NOT EXISTS `qtdpv_facileforms_scripts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT '',
  `code` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_facileforms_scripts: ~44 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_facileforms_scripts` DISABLE KEYS */;
INSERT INTO `qtdpv_facileforms_scripts` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
	(1, 1, 'FF', 'ff_anychecked', 'Any Checked', 'Validate that any radio button or checkbox of a group is checked.', 'Element Validation', 'function ff_anychecked(element, message)\r\n{\r\n    // get plain name\r\n   // alert(document.ff_form52[\'ff_nm_bfQuickMode6303958[]\']);\r\n   // alert(document.getElementById(element.id).id);\r\n    var name = \'\';\r\n    if(!element.name){\r\n    	if(element.length && element.length != 0){\r\n           name = element[0].name;\r\n           var cnt = 0;\r\n           for (var i = 0; i < element.length; i++)\r\n             if (element[i].name==name) \r\n              if (element[i].checked) cnt++;                      \r\n           if (cnt==0) {\r\n            ff_validationFocus(element[0].name);\r\n            if (message==\'\') message = "Please check or select "+name+".\\n";\r\n            return message;\r\n           } // if \r\n\r\n        } else {\r\n           return \'\';\r\n        }\r\n    } else {\r\n      name = element.name;\r\n      if (name.substr(0,6) == \'ff_nm_\') name = name.substring(6,name.length-2);\r\n\r\n      // loop through elements and count selections\r\n      var cnt = 0;\r\n      for (var i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) \r\n            if (ff_getElementByIndex(i).checked) cnt++;\r\n\r\n      // if none selected, emitt error\r\n      if (cnt==0) {\r\n        ff_validationFocus(element.name);\r\n        if (message==\'\') message = "Please check or select "+name+".\\n";\r\n        return message;\r\n      } // if\r\n    }\r\n    \r\n    return \'\';\r\n} // ff_anychecked'),
	(2, 1, 'FF', 'ff_checked', 'Checked', 'Validate that radio button or checkbox is checked.', 'Element Validation', 'function ff_checked(element, message)\r\n{\r\n    if (element.checked) \r\n        return \'\'; \r\n    else {\r\n        if (message==\'\') message = element.name+" is not checked.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } \r\n}'),
	(3, 1, 'FF', 'ff_checkedValue', 'Get checked value', 'Get value of the currently checked radiobutton.', 'Untyped', 'function ff_checkedValue(name)\r\n{\r\n    // loop through elements and find checked\r\n    for (i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) {\r\n            e = ff_getElementByIndex(i);\r\n            if (e.checked) return e.value;\r\n        } // if \r\n    return \'\';\r\n} // ff_checkedValue'),
	(4, 1, 'FF', 'ff_countQuerySelections', 'Count Query Selections', 'Counts how many checkboxes/radiobuttons are checked/selected in a query list element', 'Untyped', 'function ff_countQuerySelections(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var cnt = ff_queryRows[id].length;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr;\r\n    var sels = 0;\r\n    for (curr = 0; curr < cnt; curr++)\r\n        if (document.getElementById(\'ff_cb\'+id+\'_\'+curr).checked) sels++;\r\n    return sels;\r\n} // ff_countQuerySelections'),
	(5, 1, 'FF', 'ff_dollaramount2dp', 'Dollar Amount with 2 Decimal Places', 'Validate that a dollar amount with two decimal places is entered.', 'Element Validation', 'function ff_dollaramount2dp(element, message)\r\n{\r\n    var ex  = /^\\d+$|^\\d+\\.\\d{2}$/;\r\n    if (!ex.test(element.value)) {\r\n        if (message==\'\') message = element.name+" must be a number with two decimal places.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return \'\';\r\n} // ff_dollaramount2dp'),
	(6, 1, 'FF', 'ff_expString', 'String export', 'Export string function: escapes special characters of a string', 'Untyped', 'function ff_expString(text)\r\n{\r\n    text = trim(text);\r\n    var i;\r\n    var o = \'\';\r\n    for(i = 0; i < text.length; i++) {\r\n        c = text.charAt(i);\r\n        switch(c) {\r\n            case \';\' : o += \'\\\\x3B\'; break;\r\n            case \',\' : o += \'\\\\x2C\'; break;\r\n            case \'&\' : o += \'\\\\x26\'; break;\r\n            case \'<\' : o += \'\\\\x3C\'; break;\r\n            case \'>\' : o += \'\\\\x3E\'; break;\r\n            case \'\\\'\': o += \'\\\\x27\'; break;\r\n            case \'\\\\\': o += \'\\\\x5C\'; break;\r\n            case \'"\' : o += \'\\\\x22\'; break;\r\n            case \'\\n\': o += \'\\\\n\'; break;\r\n            case \'\\r\': o += \'\\\\r\'; break;\r\n            default: o += c;\r\n        } // switch\r\n    } // for\r\n    return o;\r\n} // expString'),
	(7, 1, 'FF', 'ff_flashupload_not_empty', 'Flash Upload Not Empty (QuickMode only!)', 'Validates if a flash upload is empty or not.', 'Element Validation', 'function ff_flashupload_not_empty(element, message)\r\n{\r\n    if(typeof bfSummarizers == "undefined") { alert("Flash upload validation only available in QuickMode!"); return \'\'}\r\n    if(JQuery(\'#bfFlashFileQueue\'+element.id.split(\'ff_elem\')[1]).html() != \'\') return \'\';\r\n    if (message==\'\') message = "Please enter "+element.name+".\\n";\r\n    ff_validationFocus(element.name);\r\n    return message;\r\n} // ff_valuenotempty'),
	(8, 1, 'FF', 'ff_getfocus', 'Get focus', 'Get the focus. Usually this is for the first element of the form/page.', 'Element Init', 'function ff_getfocus(element,condition)\r\n{\r\n    if(!element.name){\r\n    	if(element.length && element.length != 0){\r\n    		element[0].focus();\r\n    	}\r\n    }else{\r\n    	element.focus();\r\n    }\r\n}'),
	(9, 1, 'FF', 'ff_getQuerySelectedRows', 'Get Query Selected Rows', 'Returns the selected rows in a 2-dimensional array', 'Untyped', 'function ff_getQuerySelectedRows(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var rcnt = ff_queryRows[id].length;\r\n    var cnt = rcnt;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr, r;\r\n    var selcnt = 0;\r\n    var sels = new Array;\r\n    for (curr = 0; curr < cnt; curr++) {\r\n        var elem = document.getElementById(\'ff_cb\'+id+\'_\'+curr);\r\n        if (elem.checked) {\r\n            var ident = elem.value;\r\n            for (r = 0; r < rcnt; r++)\r\n                if (ff_queryRows[id][r][0] == ident) {\r\n                    sels[selcnt++] = ff_queryRows[id][r];\r\n                    break;\r\n                } // if\r\n        } // if\r\n    } // for\r\n    return sels;\r\n} // ff_getQuerySelectedRows'),
	(10, 1, 'FF', 'ff_getQuerySelections', 'Get Query Selected ID\'s', 'Returns the column values of the checked/selected checkboxes/radiobuttons in an array', 'Untyped', 'function ff_getQuerySelections(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var cnt = ff_queryRows[id].length;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr;\r\n    var selcnt = 0;\r\n    var sels = new Array;\r\n    for (curr = 0; curr < cnt; curr++) {\r\n        var elem = document.getElementById(\'ff_cb\'+id+\'_\'+curr);\r\n        if (elem.checked) \r\n            sels[selcnt++] = elem.value;\r\n    } // for\r\n    return sels;\r\n} // ff_getQuerySelections'),
	(11, 1, 'FF', 'ff_htmlvaluenotempty', 'HTML Texteditor Not Empty', 'Checks if an HTML editor element is empty or not', 'Element Validation', 'function ff_htmlvaluenotempty( element, message ){\r\n    \r\n    if( typeof bf_htmltextareanames == "undefined" ) return \'\';\r\n\r\n    var content = "";\r\n\r\n    for(var i = 0; i < bf_htmltextareanames.length; i++){\r\n      if( element.name == bf_htmltextareanames[i] ) {\r\n          eval("content = " + bf_htmltextareas[i]);\r\n          break;\r\n      }\r\n    }\r\n    if (JQuery.trim(content) == "") {\r\n        if (message==\'\') message = element.name+" must not be empty.\\n";\r\n        return message;\r\n    } // if\r\n    return \'\';\r\n}'),
	(12, 1, 'FF', 'ff_impString', 'String import', 'Import string function: unescapes c-coded characters of a string', 'Untyped', 'function ff_impString(text)\r\n{\r\n    var str = \'\';\r\n    var ss = 0;\r\n    var s;\r\n    var tl = text.length;\r\n    var hexdigs = "0123456789abcdefABCDEF";\r\n    while (ss < tl) {\r\n        s = text.charAt(ss++);\r\n        if (s == \'\\\\\') {\r\n            if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n            switch (s) {\r\n                case 0   : break;\r\n                case \'e\' : str += \'\\33\'; break;\r\n                case \'t\' : str += \'\\t\'; break;\r\n                case \'r\' : str += \'\\r\'; break;\r\n                case \'n\' : str += \'\\n\'; break;\r\n                case \'f\' : str += \'\\f\'; break;\r\n                case \'x\' : {\r\n                    if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n                    var ch = \'\';\r\n                    while (hexdigs.indexOf(s)>=0 && ch.length < 2) {\r\n                        ch += s;\r\n                        if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n                    } // while\r\n                    while (ch.length < 2) ch = \'0\'+ch;\r\n                    str += unescape(\'%\'+ch);\r\n                    if (s) ss--;\r\n                    break;\r\n                }\r\n                default:\r\n                    str += s;\r\n            } // switch\r\n        } else\r\n            str += s;\r\n    } // while\r\n    return str;\r\n} // impString'),
	(13, 1, 'FF', 'ff_integer', 'Integer Number', 'Validate that an integer value is entered.', 'Element Validation', 'function ff_integer(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message==\'\') message = element.name+" must be integer.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return \'\';\r\n} // ff_integer'),
	(14, 1, 'FF', 'ff_integeramount', 'Positive Integer', 'Validate that an positive integer value is entered.', 'Element Validation', 'function ff_integeramount(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message==\'\') message = element.name+" must be integer.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return \'\';\r\n} // ff_integeramount'),
	(15, 1, 'FF', 'ff_integer_or_empty', 'Integer or empty', 'Validate that either an integer value or nothing is entered.', 'Element Validation', 'function ff_integer_or_empty(element, message)\r\n{\r\n    if (element.value != \'\') {\r\n        var ex  = /(^-?\\d\\d*$)/;\r\n        if (!ex.test(element.value)) {\r\n            if (message==\'\') message = element.name+" must be integer.\\n";\r\n            ff_validationFocus(element.name);\r\n            return message;\r\n        } // if\r\n    } // if\r\n    return \'\';\r\n} // ff_integer_or_empty'),
	(16, 1, 'FF', 'ff_nextpage', 'Next page', 'Switchs to the next page.', 'Element Action', 'function ff_nextpage(element, action)\r\n{\r\n    if (ff_currentpage < ff_lastpage) {\r\n        ff_switchpage(ff_currentpage+1);\r\n        self.scrollTo(0,0);\r\n    }\r\n} // ff_nextpage'),
	(17, 1, 'FF', 'ff_page1', 'Page 1', 'Switches to the first page.', 'Element Action', 'function ff_page1(element, action)\r\n{\r\n    ff_switchpage(1);\r\n} // ff_page1'),
	(18, 1, 'FF', 'ff_page2', 'Page 2', 'Switches to the second page.', 'Element Action', 'function ff_page2(element, action)\r\n{\r\n    if (ff_lastpage >= 2) ff_switchpage(2);\r\n} // ff_page2'),
	(19, 1, 'FF', 'ff_page3', 'Page 3', 'Switches to the third page.', 'Element Action', 'function ff_page3(element, action)\r\n{\r\n    if (ff_lastpage >= 3) ff_switchpage(3);\r\n} // ff_page3'),
	(20, 1, 'FF', 'ff_previouspage', 'Previous page', 'Switches to the previous page.', 'Element Action', 'function ff_previouspage(element, action)\r\n{\r\n    if (ff_currentpage > 1){\r\n        ff_switchpage(ff_currentpage-1);\r\n        self.scrollTo(0,0);\r\n    }\r\n} // ff_previouspage'),
	(21, 1, 'FF', 'ff_real', 'Real Number', 'Validate that a real number is entered.', 'Element Validation', 'function ff_real(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*\\.?\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message==\'\') message = element.name+" must be a number.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return \'\';\r\n} // ff_real'),
	(22, 1, 'FF', 'ff_realamount', 'Positive Real Number', 'Validate that a positive real number is entered.', 'Element Validation', 'function ff_realamount(element, message)\r\n{\r\n    var ex  = /(^\\d\\d*\\.?\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message==\'\') message = element.name+" must be a number.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return \'\';\r\n} // ff_realamount'),
	(23, 1, 'FF', 'ff_resetForm', 'Reset form', 'Reset all form inputs to the initial values.', 'Element Action', 'function ff_resetForm(element, action)\r\n{\r\n    eval(\'document.\'+ff_processor.form_id).reset();\r\n} // ff_resetForm'),
	(24, 1, 'FF', 'ff_securitycode_entered', 'Security code entered', 'Check that a security code was entered.', 'Element Validation', 'function ff_securitycode_entered(element, message)\r\n{\r\n    var ex  = /(^\\d{5}$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message==\'\') message = "Security code must be entered as five digits.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return \'\';\r\n} // ff_securitycode_entered'),
	(25, 1, 'FF', 'ff_securitycode_ok', 'Security code ok', 'Check that a valid security code was entered.', 'Element Validation', 'function ff_securitycode_ok(element, message)\r\n{\r\n<?php\r\n    global $ff_seccode;\r\n    if (!isset($ff_seccode)) { \r\n        mt_srand((double)microtime()*1000000);\r\n        $ff_seccode = mt_rand(10000, 99999);\r\n        JFactory::getSession()->set(\'ff_seccode\', $ff_seccode);\r\n    } // if\r\n    $enc = array();\r\n    mt_srand((double)microtime()*1000000);\r\n    for ($i = 0; $i < 256; $i++) $enc[] = mt_rand(0, 255);\r\n    $seccode = (string)$ff_seccode;\r\n    $hash = \'\';\r\n    $ini = $ff_seccode % 240;\r\n    for ($i = 0; $i < 5; $i++) {\r\n        $d = $ini+intval($seccode{$i});\r\n        for ($j = 0; $j < 7; $j++) $d = $enc[$d];\r\n        $hash .= $d;\r\n        $ini = ($ini+$d) % 240;\r\n    } // for\r\n    return\r\n        "var enc = ".$this->expJsValue($enc).";\\n".\r\n        "var seccode = new String(element.value);\\n".\r\n        "if (seccode.length==5) {\\n".\r\n        "    var hash = \'\';\\n".\r\n        "    var ini = parseInt(element.value) % 240;\\n".\r\n        "    var i, j;\\n".\r\n        "    for (i = 0; i < 5; i++) {\\n".\r\n        "        var d = ini+parseInt(seccode.charAt(i));\\n".\r\n        "        for (j = 0; j < 7; j++) d = enc[d];\\n".\r\n        "        hash += d;\\n".\r\n        "        ini = (ini+d) % 240;\\n".\r\n        "    } // for\\n".\r\n        "    if (hash == \'$hash\') return \'\';\\n". \r\n        "} // if\\n".\r\n        "if (message==\'\') message = \\"Security code is missing or wrong.\\\\n\\";\\n".\r\n        "ff_validationFocus(element.name);\\n".\r\n        "return message;\\n";\r\n?>\r\n} // ff_securitycode_ok'),
	(26, 1, 'FF', 'ff_selectedValues', 'Get selected values as list', 'Get values of selected options of a select list as list:\r\n\r\nx = ff_selectedValues(\'myselectlist\');\r\n// x = green,red', 'Untyped', 'function ff_selectedValues(name)\r\n{\r\n    vals = \'\';\r\n    opts = ff_getElementByName(name).options;\r\n    for (o = 0; o < opts.length; o++)\r\n        if (opts[o].selected) {\r\n            if (vals != \'\') vals += \',\';\r\n            vals += opts[o].value;\r\n        } // if\r\n    return vals;\r\n} // ff_selectedValues'),
	(27, 1, 'FF', 'ff_setChecked', 'Set radiobutton checked', 'Set a radiobutton checked/unchecked', 'Untyped', 'function ff_setChecked(name, value, checked)\r\n{\r\n    if (arguments.length<3) checked = true;\r\n    for (var i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) {\r\n            var e = ff_getElementByIndex(i);\r\n            if (e.value == value) {\r\n                e.checked = checked;\r\n                break;\r\n            } // if\r\n        } // if\r\n} // ff_setChecked'),
	(28, 1, 'FF', 'ff_setSelected', 'Select options of  select list', 'Select options in a Select List element.\r\n\r\nff_setSelected(\'mylist\', \'green\'); // select green in single or multi mode, unselect all other options\r\nff_setSelected(\'mylist\', \'red,green\'); // select red and green in multi mode, unselect all other options', 'Untyped', 'function ff_setSelected(name, list)\r\n{\r\n    ids = list.split(\',\')\r\n    opts = ff_getElementByName(name).options;\r\n    for (o = 0; o < opts.length; o++) {\r\n        state = false;\r\n        for (i = 0; i < ids.length; i++) \r\n            if (ids[i]==opts[o].value) {\r\n                state = true;\r\n                break;\r\n            } // if\r\n        opts[o].selected = state;\r\n    } // for\r\n} // ff_setSelected'),
	(29, 1, 'FF', 'ff_showaction', 'Show action', 'Displays the element action.', 'Element Action', 'function ff_showaction(element, action)\r\n{\r\n   alert(\'Action \'+action+\' performed by element \'+element.id);\r\n}'),
	(30, 1, 'FF', 'ff_showelementinit', 'Show element initialization', 'Display the element initialization (mainly for debugging)', 'Element Init', 'function ff_showelementinit(element,condition)\r\n{\r\n    if(!element.name)\r\n    	if(element.length && element.length != 0)\r\n    		alert(\'Initialization of \'+element[0].name+\' at \'+condition);\r\n    else\r\n    	alert(\'Initialization of \'+element.name+\' at \'+condition);\r\n}'),
	(31, 1, 'FF', 'ff_showforminit', 'Show form initialization', 'Show when form initialization is run (for debugging)', 'Form Init', 'function ff_showforminit()\r\n{\r\n    alert(\'Form initialization\');\r\n}'),
	(32, 1, 'FF', 'ff_showsubmitted', 'Show submitted status', 'Display submit status as user feedback.', 'Form Submitted', 'function ff_showsubmitted(status, message)\r\n{\r\n    alert(message);\r\n} // ff_showsubmitted'),
	(33, 1, 'FF', 'ff_showvalidation', 'Show element validation', 'Display element validation (for debugging)', 'Element Validation', 'function ff_showvalidation(element, message)\r\n{\r\n    alert(\'Validation of \'+element.name+" with message: \\n"+message);\r\n    return \'\';\r\n}'),
	(34, 1, 'FF', 'ff_submittedhome', 'Return to homepage', 'Display submit status and then return to the home page of the site.', 'Form Submitted', 'function ff_submittedhome(status, message)\r\n{\r\n    alert(message+"\\nYou will be redirected to the home page now.");\r\n    ff_returnHome();\r\n} // ff_submittedhome'),
	(35, 1, 'FF', 'ff_unchecked', 'Unchecked', 'Validate that radio button or checkbox is unchecked.', 'Element Validation', 'function ff_unchecked(element, message)\r\n{\r\n    if (!element.checked) \r\n        return \'\'; \r\n    else {\r\n        if (message==\'\') message = element.name+" is checked.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n} // ff_unchecked'),
	(36, 1, 'FF', 'ff_validate_date_DDMMYYYY', 'Validate Date DD/MM/YYYY format', 'Validates that the date in a textfield is correctly formatted in DD/MM/YYYY format.\r\nCan be used with a textfield element and/or the Calendar element.', 'Element Validation', 'function ff_validate_date_DDMMYYYY(element, message)\r\n{\r\n   // Regular expression used to check if date is in correct format\r\n   var pattern = /[0-3][0-9]\\/(0|1)[0-9]\\/(19|20)[0-9]{2}/;\r\n   if(pattern.test(element.value))\r\n   {\r\n      var date_array = element.value.split(\'/\');\r\n      var day = date_array[0];\r\n\r\n      // Attention! Javascript consider months in the range 0 - 11\r\n      var month = date_array[1] - 1;\r\n      var year = date_array[2];\r\n\r\n      // This instruction will create a date object\r\n      source_date = new Date(year,month,day);\r\n\r\n      if(year != source_date.getFullYear())\r\n      {\r\n         return message == \'\' ? \'Element \' + element.name + \' failed my test\' : message;\r\n      }\r\n\r\n      if(month != source_date.getMonth())\r\n      {\r\n         return message == \'\' ? \'Element \' + element.name + \' failed my test\' : message;\r\n      }\r\n\r\n      if(day != source_date.getDate())\r\n      {\r\n         return message == \'\' ? \'Element \' + element.name + \' failed my test\' : message;\r\n      }\r\n   }\r\n   else\r\n   {\r\n      return message == \'\' ? \'Element \' + element.name + \' failed my test\' : message;\r\n   }\r\n\r\n   return \'\';\r\n}'),
	(37, 1, 'FF', 'ff_validate_form', 'Validate form', 'Validates the form and displays the result.', 'Element Action', 'function ff_validate_form(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != \'undefined\'){\r\n     JQuery(".bfErrorMessage").html(\'\');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(0);\r\n    if (error != \'\') {\r\n        if(typeof bfUseErrorAlerts == \'undefined\'){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus(\'\');\r\n    } else\r\n        alert(\'All inputs are valid.\');\r\n} // ff_validate_form'),
	(38, 1, 'FF', 'ff_validate_nextpage', 'Validate and next page', 'Validates the current page, and if everything is ok is switches to the next page.', 'Element Action', 'function ff_validate_nextpage(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != \'undefined\'){\r\n     JQuery(".bfErrorMessage").html(\'\');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != \'\') {\r\n       if(typeof bfUseErrorAlerts == \'undefined\'){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus(\'\');\r\n    } else {\r\n        ff_switchpage(ff_currentpage+1);\r\n        self.scrollTo(0,0);   \r\n    }\r\n} // ff_validate_nextpage'),
	(39, 1, 'FF', 'ff_validate_page', 'Validate page', 'Validates the current page and displays the result.', 'Element Action', 'function ff_validate_page(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != \'undefined\'){\r\n     JQuery(".bfErrorMessage").html(\'\');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != \'\') {\r\n        if(typeof bfUseErrorAlerts == \'undefined\'){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus(\'\');\r\n    } else\r\n        alert(\'All inputs are valid.\');\r\n} // ff_validate_page'),
	(40, 1, 'FF', 'ff_validate_prevpage', 'Validate previous page', 'Validates the current page and switches to the previous page if all is ok', 'Element Action', 'function ff_validate_prevpage(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != \'undefined\'){\r\n     JQuery(".bfErrorMessage").html(\'\');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != \'\') {\r\n       if(typeof bfUseErrorAlerts == \'undefined\'){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus(\'\');\r\n    } else{\r\n    	if(ff_currentpage > 1){\r\n	 ff_switchpage(ff_currentpage-1);\r\n	 self.scrollTo(0,0);\r\n        }\r\n    }\r\n} // ff_validate_prevpage'),
	(41, 1, 'FF', 'ff_validate_submit', 'Validate and submit form', 'Validates the whole form, and if everything is ok it submits the form.', 'Element Action', 'function ff_validate_submit(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != \'undefined\'){\r\n     JQuery(".bfErrorMessage").html(\'\');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(0);\r\n    if (error != \'\') {\r\n\r\n        if(typeof bfUseErrorAlerts == \'undefined\'){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus();\r\n    } else\r\n        ff_submitForm();\r\n} // ff_validate_submit'),
	(42, 1, 'FF', 'ff_validemail', 'Valid email', 'Validate entry of a valid email (syntax check only)', 'Element Validation', 'function ff_validemail(element, message)\r\n{\r\n    var check =\r\n    /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\r\n    if (!check.test(element.value)){\r\n        if (message==\'\') message = element.name+" is no valid email address.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return \'\';\r\n} // ff_validemail'),
	(43, 1, 'FF', 'ff_validemail_repeat', 'Validate Email repeat', 'Checks if the field value is a valid email address and has a second counterpart that has an equal value.\r\nThe 2nd email field must be named "FIELDNAME_repeat"!', 'Element Validation', 'function ff_validemail_repeat(element, message)\r\n{\r\n    var check =\r\n    /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\r\n    if (!check.test(element.value)){\r\n        if (message==\'\') message = element.name+" is no valid email address.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n	\r\n    try{\r\n	    var repeat = element.name.split("ff_nm_")[1].split("[]")[0];\r\n	\r\n	    if(!ff_getElementByName(repeat + \'_repeat\')){\r\n	     	if (message==\'\') message = repeat+" has no repeat email field.\\n";\r\n	        ff_validationFocus(element.name);\r\n	        return message;\r\n	    } else {\r\n	        if(ff_getElementByName(repeat + \'_repeat\').value != element.value){\r\n	           if (message==\'\') message = element.name+" and " + repeat + "_repeat do not match.\\n";\r\n	           ff_validationFocus(repeat + \'_repeat\');\r\n	           return message;\r\n	        }\r\n	    }\r\n    }catch(e){\r\n        return e.description;\r\n    }\r\n\r\n    return \'\';\r\n} // ff_validemail'),
	(44, 1, 'FF', 'ff_valuenotempty', 'Value not empty', 'Validate that value is not empty.', 'Element Validation', 'function ff_valuenotempty(element, message)\r\n{\r\n    if (element.value!=\'\') return \'\'; \r\n    if (message==\'\') message = "Please enter "+element.name+".\\n";\r\n    ff_validationFocus(element.name);\r\n    return message;\r\n} // ff_valuenotempty');
/*!40000 ALTER TABLE `qtdpv_facileforms_scripts` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_facileforms_subrecords
CREATE TABLE IF NOT EXISTS `qtdpv_facileforms_subrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record` int(11) NOT NULL DEFAULT '0',
  `element` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_facileforms_subrecords: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_facileforms_subrecords` DISABLE KEYS */;
INSERT INTO `qtdpv_facileforms_subrecords` (`id`, `record`, `element`, `title`, `name`, `type`, `value`) VALUES
	(1, 1, 1, 'Nome', 'Nome', 'Text', 'Victor Gonçalves Bento'),
	(2, 1, 2, 'E-mail', 'Email', 'Text', 'vgb.info@gmail.com'),
	(3, 1, 3, 'Telefone', 'Telefone', 'Text', '(62) 3232-2032'),
	(4, 1, 4, 'Mensagem', 'Mensagem', 'Textarea', 'Olá, esta é uma mensagem de teste, sobre o imóvel XYZ');
/*!40000 ALTER TABLE `qtdpv_facileforms_subrecords` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_filters
CREATE TABLE IF NOT EXISTS `qtdpv_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` mediumtext NOT NULL,
  `params` longtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_filters: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_filters` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`),
  KEY `idx_title` (`title`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_terms0
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_terms0: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_terms0` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_terms1
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_terms1: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_terms1` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_terms2
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_terms2: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_terms2` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_terms3
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_terms3: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_terms3` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_terms4
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_terms4: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_terms4` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_terms5
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_terms5: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_terms5` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_terms6
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_terms6: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_terms6` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_terms7
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_terms7: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_terms7` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_terms8
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_terms8: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_terms8` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_terms9
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_terms9: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_terms9` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_termsa
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_termsa: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_termsa` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_termsb
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_termsb: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_termsb` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_termsc
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_termsc: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_termsc` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_termsd
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_termsd: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_termsd` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_termse
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_termse: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_termse` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_links_termsf
CREATE TABLE IF NOT EXISTS `qtdpv_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_links_termsf: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_links_termsf` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_taxonomy
CREATE TABLE IF NOT EXISTS `qtdpv_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_taxonomy: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `qtdpv_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
	(1, 0, 'ROOT', 0, 0, 0);
/*!40000 ALTER TABLE `qtdpv_finder_taxonomy` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_taxonomy_map
CREATE TABLE IF NOT EXISTS `qtdpv_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_taxonomy_map: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_taxonomy_map` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_terms
CREATE TABLE IF NOT EXISTS `qtdpv_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_terms: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_terms` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_terms_common
CREATE TABLE IF NOT EXISTS `qtdpv_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_terms_common: ~115 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_terms_common` DISABLE KEYS */;
INSERT INTO `qtdpv_finder_terms_common` (`term`, `language`) VALUES
	('a', 'en'),
	('about', 'en'),
	('after', 'en'),
	('ago', 'en'),
	('all', 'en'),
	('am', 'en'),
	('an', 'en'),
	('and', 'en'),
	('ani', 'en'),
	('any', 'en'),
	('are', 'en'),
	('aren\'t', 'en'),
	('as', 'en'),
	('at', 'en'),
	('be', 'en'),
	('but', 'en'),
	('by', 'en'),
	('for', 'en'),
	('from', 'en'),
	('get', 'en'),
	('go', 'en'),
	('how', 'en'),
	('if', 'en'),
	('in', 'en'),
	('into', 'en'),
	('is', 'en'),
	('isn\'t', 'en'),
	('it', 'en'),
	('its', 'en'),
	('me', 'en'),
	('more', 'en'),
	('most', 'en'),
	('must', 'en'),
	('my', 'en'),
	('new', 'en'),
	('no', 'en'),
	('none', 'en'),
	('not', 'en'),
	('noth', 'en'),
	('nothing', 'en'),
	('of', 'en'),
	('off', 'en'),
	('often', 'en'),
	('old', 'en'),
	('on', 'en'),
	('onc', 'en'),
	('once', 'en'),
	('onli', 'en'),
	('only', 'en'),
	('or', 'en'),
	('other', 'en'),
	('our', 'en'),
	('ours', 'en'),
	('out', 'en'),
	('over', 'en'),
	('page', 'en'),
	('she', 'en'),
	('should', 'en'),
	('small', 'en'),
	('so', 'en'),
	('some', 'en'),
	('than', 'en'),
	('thank', 'en'),
	('that', 'en'),
	('the', 'en'),
	('their', 'en'),
	('theirs', 'en'),
	('them', 'en'),
	('then', 'en'),
	('there', 'en'),
	('these', 'en'),
	('they', 'en'),
	('this', 'en'),
	('those', 'en'),
	('thus', 'en'),
	('time', 'en'),
	('times', 'en'),
	('to', 'en'),
	('too', 'en'),
	('true', 'en'),
	('under', 'en'),
	('until', 'en'),
	('up', 'en'),
	('upon', 'en'),
	('use', 'en'),
	('user', 'en'),
	('users', 'en'),
	('veri', 'en'),
	('version', 'en'),
	('very', 'en'),
	('via', 'en'),
	('want', 'en'),
	('was', 'en'),
	('way', 'en'),
	('were', 'en'),
	('what', 'en'),
	('when', 'en'),
	('where', 'en'),
	('whi', 'en'),
	('which', 'en'),
	('who', 'en'),
	('whom', 'en'),
	('whose', 'en'),
	('why', 'en'),
	('wide', 'en'),
	('will', 'en'),
	('with', 'en'),
	('within', 'en'),
	('without', 'en'),
	('would', 'en'),
	('yes', 'en'),
	('yet', 'en'),
	('you', 'en'),
	('your', 'en'),
	('yours', 'en');
/*!40000 ALTER TABLE `qtdpv_finder_terms_common` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_tokens
CREATE TABLE IF NOT EXISTS `qtdpv_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_tokens: 0 rows
/*!40000 ALTER TABLE `qtdpv_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_tokens` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_tokens_aggregate
CREATE TABLE IF NOT EXISTS `qtdpv_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_tokens_aggregate: 0 rows
/*!40000 ALTER TABLE `qtdpv_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_tokens_aggregate` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_finder_types
CREATE TABLE IF NOT EXISTS `qtdpv_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela localize.qtdpv_finder_types: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_finder_types` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_languages
CREATE TABLE IF NOT EXISTS `qtdpv_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_languages: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_languages` DISABLE KEYS */;
INSERT INTO `qtdpv_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
	(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);
/*!40000 ALTER TABLE `qtdpv_languages` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_localize_empresa
CREATE TABLE IF NOT EXISTS `qtdpv_localize_empresa` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `updated` datetime NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cnpj` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `fundacao` date NOT NULL,
  `sobre` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `telefone1` varchar(255) NOT NULL,
  `telefone2` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `corretores` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_localize_empresa: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_localize_empresa` DISABLE KEYS */;
INSERT INTO `qtdpv_localize_empresa` (`id`, `asset_id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `modified_by`, `updated`, `nome`, `cnpj`, `logo`, `fundacao`, `sobre`, `link`, `telefone1`, `telefone2`, `email`, `corretores`) VALUES
	(1, 62, 1, 1, 0, '0000-00-00 00:00:00', 564, 564, '2016-02-10 23:34:49', 'MRV', '001231231', 'images/MRV.png', '1979-02-10', '<p>Desde 1979 no mercado imobili&aacute;rio, a <strong>MRV Engenharia</strong> &eacute; a maior construtora e incorporadora do pa&iacute;s em seu segmento, al&eacute;m de ser a &uacute;nica que oferece casas e apartamentos em mais de 130 cidades do Brasil. A ampla experi&ecirc;ncia permite o planejamento do processo construtivo, a antecipa&ccedil;&atilde;o de tend&ecirc;ncias e a melhor rela&ccedil;&atilde;o custo/benef&iacute;cio do mercado.<br />A empresa tem seu foco na redu&ccedil;&atilde;o de custos, inova&ccedil;&atilde;o e &eacute;tica. E investe em projetos sociais, a&ccedil;&otilde;es ambientais e de incentivo ao esporte, proporcionando novas perspectivas de futuro para todos.<br />Pelas facilidades de compra, linhas diferenciadas de produtos, pagamentos flex&iacute;veis, inova&ccedil;&otilde;es e localiza&ccedil;&atilde;o privilegiada de seus empreendimentos, milhares de fam&iacute;lias j&aacute; realizaram o sonho da casa pr&oacute;pria (Saiba mais no site www.mrventrega.com.br).</p>', 'www.mrventrega.com.br', '2423', '', 'contato@mrv.com.br', 564),
	(2, 71, 2, 1, 0, '0000-00-00 00:00:00', 564, 564, '2016-02-25 02:33:00', 'Sousa Andrade', '12345678', 'images/MRV.png', '2008-02-24', '<p>descri&ccedil;&atilde;o</p>', '', '32323232', '', 'contato@sa.com.br', 564);
/*!40000 ALTER TABLE `qtdpv_localize_empresa` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_localize_imovel
CREATE TABLE IF NOT EXISTS `qtdpv_localize_imovel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `valor` double NOT NULL,
  `imagem1` varchar(255) NOT NULL,
  `legenda_img1` varchar(255) NOT NULL,
  `imagem2` varchar(255) NOT NULL,
  `legenda_img2` varchar(255) NOT NULL,
  `imagem3` varchar(255) NOT NULL,
  `legenda_img3` varchar(255) NOT NULL,
  `imagem4` varchar(255) NOT NULL,
  `legenda_img4` varchar(255) NOT NULL,
  `metragem` int(11) NOT NULL,
  `num_quartos` int(11) NOT NULL,
  `num_banheiros` int(11) NOT NULL,
  `num_vagas` int(11) NOT NULL,
  `etapa_obra` varchar(255) NOT NULL,
  `etapa_negocio` varchar(255) NOT NULL,
  `data_lancamento` date NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `construtora` text NOT NULL,
  `imobiliaria` int(11) NOT NULL,
  `imobiliaria2` int(11) NOT NULL,
  `caracteristicas` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_localize_imovel: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_localize_imovel` DISABLE KEYS */;
INSERT INTO `qtdpv_localize_imovel` (`id`, `asset_id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `modified`, `created_by`, `nome`, `valor`, `imagem1`, `legenda_img1`, `imagem2`, `legenda_img2`, `imagem3`, `legenda_img3`, `imagem4`, `legenda_img4`, `metragem`, `num_quartos`, `num_banheiros`, `num_vagas`, `etapa_obra`, `etapa_negocio`, `data_lancamento`, `telefone`, `descricao`, `construtora`, `imobiliaria`, `imobiliaria2`, `caracteristicas`) VALUES
	(1, 63, 1, 1, 0, '0000-00-00 00:00:00', '2016-05-01 02:11:52', 564, 'Eldorado Golden', 190000, 'images/anuncio.jpg', 'Entrada', '', '', '', '', '', '', 65, 2, 2, 1, '1', '1', '2014-02-01', '', 'Ótima localização', '1', 1, 0, '2,3'),
	(2, 64, 2, 1, 0, '0000-00-00 00:00:00', '2016-05-01 03:02:24', 564, 'Reserva Gran Vitória', 280000, 'images/fachada-de-casas-simples.jpg', 'Entrada', '', '', '', '', '', '', 100, 3, 3, 4, '1', '1', '2016-02-01', '', 'Ótima localização', '1', 1, 0, '2,3'),
	(3, 65, 3, 1, 0, '0000-00-00 00:00:00', '2016-05-01 02:14:35', 564, 'Spazio Viver', 230000, 'images/anuncio.jpg', 'Entrada', '', '', '', '', '', '', 75, 2, 2, 2, '1', '1', '2012-02-20', '', 'Ótima localização', '1', 1, 0, '2,3'),
	(4, 66, 4, 1, 0, '0000-00-00 00:00:00', '2016-05-01 02:08:23', 564, 'Euro Park', 580000, 'images/anuncio.jpg', 'Entrada', '', '', '', '', '', '', 200, 3, 3, 1, '4', '1', '2015-04-15', '', 'Ótima localização', '1', 1, 0, '2,5'),
	(5, 67, 5, 1, 0, '0000-00-00 00:00:00', '2016-05-01 02:13:40', 564, 'Gran Paradiso', 150000, 'images/anuncio.jpg', 'Entrada', '', '', '', '', '', '', 70, 2, 2, 1, '3', '1', '2014-05-23', '', 'Ótima localização', '1', 1, 0, '2,3'),
	(6, 68, 6, 1, 0, '0000-00-00 00:00:00', '2016-05-01 02:11:20', 564, 'Independência Centro', 180000, 'images/anuncio.jpg', 'Entrada', '', '', '', '', '', '', 80, 3, 2, 2, '2', '1', '2015-06-23', '', 'Ótima localização', '1', 1, 0, '2,3');
/*!40000 ALTER TABLE `qtdpv_localize_imovel` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_localize_normaliza
CREATE TABLE IF NOT EXISTS `qtdpv_localize_normaliza` (
  `id` int(11) NOT NULL,
  `valor` double NOT NULL,
  `metragem` int(11) NOT NULL,
  `num_banheiros` int(11) NOT NULL,
  `num_quartos` int(11) NOT NULL,
  `num_vagas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_localize_normaliza: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_localize_normaliza` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_localize_normaliza` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_menu
CREATE TABLE IF NOT EXISTS `qtdpv_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100))
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_menu: ~43 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_menu` DISABLE KEYS */;
INSERT INTO `qtdpv_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
	(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 85, 0, '*', 0),
	(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
	(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
	(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
	(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
	(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
	(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
	(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
	(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
	(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
	(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
	(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
	(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
	(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
	(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
	(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
	(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
	(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
	(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
	(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
	(101, 'menuprincipal', 'Início', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 40, 1, '*', 0),
	(104, 'menuprincipal', 'Para Comprar', 'para-comprar', '', 'para-comprar', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 0, '*', 0),
	(105, 'menuprincipal', 'Para Alugar', 'para-alugar', '', 'para-alugar', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0),
	(106, 'menuprincipal', 'Anunciar', '2016-02-23-00-13-05', '', '2016-02-23-00-13-05', '#', 'url', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 45, 46, 0, '*', 0),
	(107, 'menuprincipal', 'Cadastrar', 'cadastrar', '', 'cadastrar', 'index.php?option=com_localize_imovel&view=imvelform', 'component', 1, 1, 1, 707, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{"item_id":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
	(115, 'main', 'COM_LOCALIZE_IMOVEL', 'com-localize-imovel', '', 'com-localize-imovel', 'index.php?option=com_localize_imovel', 'component', 0, 1, 1, 707, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_localize_imovel/images/s_com_localize_imovel.png', 0, '{}', 49, 52, 0, '', 1),
	(116, 'main', 'COM_LOCALIZE_IMOVEL_TITLE_IMVEIS', 'com-localize-imovel-title-imveis', '', 'com-localize-imovel/com-localize-imovel-title-imveis', 'index.php?option=com_localize_imovel&view=imveis', 'component', 0, 115, 2, 707, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_localize_imovel/images/s_imveis.png', 0, '{}', 50, 51, 0, '', 1),
	(117, 'main', 'COM_LOCALIZE_EMPRESA', 'com-localize-empresa', '', 'com-localize-empresa', 'index.php?option=com_localize_empresa', 'component', 0, 1, 1, 701, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_localize_empresa/images/s_com_localize_empresa.png', 0, '{}', 53, 56, 0, '', 1),
	(118, 'main', 'COM_LOCALIZE_EMPRESA_TITLE_CADASTRODEEMPRESAS', 'com-localize-empresa-title-cadastrodeempresas', '', 'com-localize-empresa/com-localize-empresa-title-cadastrodeempresas', 'index.php?option=com_localize_empresa&view=cadastrodeempresas', 'component', 0, 117, 2, 701, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_localize_empresa/images/s_cadastrodeempresas.png', 0, '{}', 54, 55, 0, '', 1),
	(119, 'oculto', 'Imóveis', 'imoveis', '', 'imoveis', 'index.php?option=com_localize_imovel&view=imveis', 'component', 1, 1, 1, 707, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
	(125, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 708, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '{}', 59, 68, 0, '', 1),
	(126, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 125, 2, 708, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '{}', 60, 61, 0, '', 1),
	(127, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 125, 2, 708, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '{}', 62, 63, 0, '', 1),
	(128, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 125, 2, 708, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '{}', 64, 65, 0, '', 1),
	(129, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 125, 2, 708, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, '{}', 66, 67, 0, '', 1),
	(130, 'main', 'BreezingForms', 'BreezingForms', '', 'breezingforms', 'index.php?option=com_breezingforms', 'component', 0, 1, 1, 717, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 69, 84, 0, '', 1),
	(131, 'main', 'COM_BREEZINGFORMS_MANAGE_RECORDS', 'Manage Records', '', 'breezingforms/com-breezingforms-manage-records', 'index.php?option=com_breezingforms&act=managerecs', 'component', 0, 130, 2, 717, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/checkin.png', 0, '{}', 70, 71, 0, '', 1),
	(132, 'main', 'COM_BREEZINGFORMS_MANAGE_FORMS', 'Manage Forms', '', 'breezingforms/com-breezingforms-manage-forms', 'index.php?option=com_breezingforms&act=manageforms', 'component', 0, 130, 2, 717, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/content.png', 0, '{}', 72, 73, 0, '', 1),
	(133, 'main', 'COM_BREEZINGFORMS_MANAGE_SCRIPTS', 'Manage Scripts', '', 'breezingforms/com-breezingforms-manage-scripts', 'index.php?option=com_breezingforms&act=managescripts', 'component', 0, 130, 2, 717, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/controlpanel.png', 0, '{}', 74, 75, 0, '', 1),
	(134, 'main', 'COM_BREEZINGFORMS_MANAGE_PIECES', 'Manage Pieces', '', 'breezingforms/com-breezingforms-manage-pieces', 'index.php?option=com_breezingforms&act=managepieces', 'component', 0, 130, 2, 717, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/controlpanel.png', 0, '{}', 76, 77, 0, '', 1),
	(135, 'main', 'COM_BREEZINGFORMS_INTEGRATOR', 'Integrator', '', 'breezingforms/com-breezingforms-integrator', 'index.php?option=com_breezingforms&act=integrate', 'component', 0, 130, 2, 717, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/controlpanel.png', 0, '{}', 78, 79, 0, '', 1),
	(136, 'main', 'COM_BREEZINGFORMS_MANAGE_BACKEND_MENUS', 'Manage Backend Menus', '', 'breezingforms/com-breezingforms-manage-backend-menus', 'index.php?option=com_breezingforms&act=managemenus', 'component', 0, 130, 2, 717, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/mainmenu.png', 0, '{}', 80, 81, 0, '', 1),
	(137, 'main', 'COM_BREEZINGFORMS_CONFIGURATION', 'Configuration', '', 'breezingforms/com-breezingforms-configuration', 'index.php?option=com_breezingforms&act=configuration', 'component', 0, 130, 2, 717, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/config.png', 0, '{}', 82, 83, 0, '', 1);
/*!40000 ALTER TABLE `qtdpv_menu` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_menu_types
CREATE TABLE IF NOT EXISTS `qtdpv_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_menu_types: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_menu_types` DISABLE KEYS */;
INSERT INTO `qtdpv_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
	(1, 'menuprincipal', 'Menu Principal', ''),
	(2, 'oculto', 'Oculto', '');
/*!40000 ALTER TABLE `qtdpv_menu_types` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_messages
CREATE TABLE IF NOT EXISTS `qtdpv_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_messages: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_messages` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_messages_cfg
CREATE TABLE IF NOT EXISTS `qtdpv_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_messages_cfg: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_messages_cfg` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_modules
CREATE TABLE IF NOT EXISTS `qtdpv_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_modules: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_modules` DISABLE KEYS */;
INSERT INTO `qtdpv_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
	(1, 39, 'Menu Principal', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"menuprincipal","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
	(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
	(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
	(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
	(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
	(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
	(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
	(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
	(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
	(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
	(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
	(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"Início","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
	(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
	(87, 55, 'Logotipo', '', '<img src="images/logotipo.png" alt="Localize ImÃ³veis"/>', 0, 'logotipo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(88, 56, 'Mapa Home', '', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d51417.191285401816!2d-49.27367987011535!3d-16.696607977815557!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1spt-BR!2sbr!4v1448543705001" width="100%" height="100%" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>', 1, 'mapa-home', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(89, 57, 'Pesquisar', '', '<h5>Encontre seu doce lar!</h5>\r\n<form>\r\n  <select>\r\n  <option>Apartamentos</option>\r\n  <option>Casas/Sobrados</option>\r\n</select><input type="text" placeholder="O que vocÃª estÃ¡ procurando?" /><input type="submit" value="Pesquisar" />\r\n</form>\r\n', 1, 'pesquisar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(90, 60, 'Pesquisa Imóvel', '', '', 1, 'pesquisar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_pesquisaimovel', 1, 1, '{"codeeditor":"","textareause":"1","phpcode":"","phpuse":"1","script":"","scriptuse":"1","itemid":"a","contenttitleuse":"1","contentuse":"1","content1":"1","content2":"2","content3":"3","graphics":"2","bgpattern":"-1","colour1":"#9ca5ff","trans1":"1","bordercol":"#acb5ff","bordersz":"4","shadcol":"#444444","shadsz":"4","margin-leftmodule":"","paddingleft":"","paddingright":"","paddingtop":"","paddingbottom":"","margin-top":"","margin-bottom":"","width":"100","widthunit":"%","colour2":"","trans2":"1","moduleclass_sfx":"","modno_bm":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(91, 61, 'Anúncios de imóveis', '', '', 1, 'anuncios-home', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imovelanuncios', 1, 1, '{"codeeditor":"","textareause":"1","phpcode":"","phpuse":"1","script":"","scriptuse":"1","itemid":"a","contenttitleuse":"1","contentuse":"1","content1":"1","content2":"2","content3":"3","tipo":"0","limite":"8","graphics":"2","bgpattern":"TinySquare2","colour1":"#9ca5ff","trans1":"1","bordercol":"#acb5ff","bordersz":"4","shadcol":"#444444","shadsz":"4","margin-leftmodule":"","paddingleft":"","paddingright":"","paddingtop":"","paddingbottom":"","margin-top":"","margin-bottom":"","width":"100","widthunit":"%","colour2":"","trans2":"1","moduleclass_sfx":"","modno_bm":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(92, 69, 'Anúncios de imóveis', '', '', 1, 'anuncios-home', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imovelanuncios', 1, 1, '{"codeeditor":"","textareause":"1","phpcode":"","phpuse":"1","script":"","scriptuse":"1","itemid":"a","contenttitleuse":"1","contentuse":"1","content1":"1","content2":"2","content3":"3","tipo":"1","limite":"8","graphics":"2","bgpattern":"TinySquare2","colour1":"#9ca5ff","trans1":"1","bordercol":"#acb5ff","bordersz":"4","shadcol":"#444444","shadsz":"4","margin-leftmodule":"","paddingleft":"","paddingright":"","paddingtop":"","paddingbottom":"","margin-top":"","margin-bottom":"","width":"100","widthunit":"%","colour2":"","trans2":"1","moduleclass_sfx":"","modno_bm":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(93, 70, 'Anúncios de imóveis', '', '', 1, 'anuncios-home', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imovelanuncios', 1, 1, '{"codeeditor":"","textareause":"1","phpcode":"","phpuse":"1","script":"","scriptuse":"1","itemid":"a","contenttitleuse":"1","contentuse":"1","content1":"1","content2":"2","content3":"3","tipo":"2","limite":"8","graphics":"2","bgpattern":"TinySquare2","colour1":"#9ca5ff","trans1":"1","bordercol":"#acb5ff","bordersz":"4","shadcol":"#444444","shadsz":"4","margin-leftmodule":"","paddingleft":"","paddingright":"","paddingtop":"","paddingbottom":"","margin-top":"","margin-bottom":"","width":"100","widthunit":"%","colour2":"","trans2":"1","moduleclass_sfx":"","modno_bm":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(94, 72, 'Recomendação de imóveis', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_recomendacao', 1, 1, '', 0, '*'),
	(95, 73, 'Recomendação de imóveis', '', '', 1, 'recomendacao', 564, '2016-04-30 20:09:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_recomendacao', 1, 1, '{"codeeditor":"","textareause":"1","phpcode":"","phpuse":"1","script":"","scriptuse":"1","itemid":"a","contenttitleuse":"1","contentuse":"1","content1":"1","content2":"2","content3":"3","graphics":"2","bgpattern":"TinySquare2","colour1":"#9ca5ff","trans1":"1","bordercol":"#acb5ff","bordersz":"4","shadcol":"#444444","shadsz":"4","margin-leftmodule":"","paddingleft":"","paddingright":"","paddingtop":"","paddingbottom":"","margin-top":"","margin-bottom":"","width":"100","widthunit":"%","colour2":"","trans2":"1","moduleclass_sfx":"","modno_bm":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(96, 75, 'Fale com o vendedor', '', '', 1, 'formulario-imovel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breezingforms', 1, 1, '{"ff_mod_name":"Contato","ff_mod_page":"1","ff_mod_editable":"0","ff_mod_editable_override":"0","ff_mod_frame":"0","ff_mod_border":"0","ff_mod_align":"1","ff_mod_left":"0","ff_mod_top":"0","ff_mod_parprv":"","ff_mod_parpub":"","moduleclass_sfx":"","owncache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
/*!40000 ALTER TABLE `qtdpv_modules` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_modules_menu
CREATE TABLE IF NOT EXISTS `qtdpv_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_modules_menu: ~35 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_modules_menu` DISABLE KEYS */;
INSERT INTO `qtdpv_modules_menu` (`moduleid`, `menuid`) VALUES
	(1, 101),
	(1, 104),
	(1, 105),
	(2, 0),
	(3, 0),
	(4, 0),
	(6, 0),
	(7, 0),
	(8, 0),
	(9, 0),
	(10, 0),
	(12, 0),
	(13, 0),
	(14, 0),
	(15, 0),
	(16, 0),
	(17, -101),
	(79, 0),
	(86, 0),
	(87, 0),
	(88, 101),
	(88, 104),
	(88, 105),
	(89, 0),
	(90, 101),
	(90, 104),
	(90, 105),
	(91, 101),
	(92, 104),
	(93, 105),
	(95, 101),
	(95, 104),
	(95, 105),
	(95, 119),
	(96, 119);
/*!40000 ALTER TABLE `qtdpv_modules_menu` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_newsfeeds
CREATE TABLE IF NOT EXISTS `qtdpv_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_newsfeeds: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_newsfeeds` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_overrider
CREATE TABLE IF NOT EXISTS `qtdpv_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_overrider: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_overrider` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_plg_system_adminexile
CREATE TABLE IF NOT EXISTS `qtdpv_plg_system_adminexile` (
  `ip` varchar(45) NOT NULL,
  `firstattempt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastattempt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `attempts` int(11) NOT NULL,
  `penalty` int(11) NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_plg_system_adminexile: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_plg_system_adminexile` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_plg_system_adminexile` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_plg_system_adminexile_tmpwhitelist
CREATE TABLE IF NOT EXISTS `qtdpv_plg_system_adminexile_tmpwhitelist` (
  `ip` varchar(15) NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_plg_system_adminexile_tmpwhitelist: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_plg_system_adminexile_tmpwhitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_plg_system_adminexile_tmpwhitelist` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_postinstall_messages
CREATE TABLE IF NOT EXISTS `qtdpv_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_postinstall_messages: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_postinstall_messages` DISABLE KEYS */;
INSERT INTO `qtdpv_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
	(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
	(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
	(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);
/*!40000 ALTER TABLE `qtdpv_postinstall_messages` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_recomendacao_imovel
CREATE TABLE IF NOT EXISTS `qtdpv_recomendacao_imovel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_imovel` int(10) unsigned DEFAULT '0',
  `id_user` int(10) unsigned DEFAULT '0',
  `acesso` int(10) DEFAULT '0',
  `like` int(10) DEFAULT '0',
  `formulario` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_recomendacao_imovel: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_recomendacao_imovel` DISABLE KEYS */;
INSERT INTO `qtdpv_recomendacao_imovel` (`id`, `id_imovel`, `id_user`, `acesso`, `like`, `formulario`) VALUES
	(1, 1, 565, 1, 1, 1),
	(2, 1, 0, 1, 0, 0),
	(3, 1, 564, 1, 1, 0),
	(4, 2, 564, 1, 1, 1),
	(5, 3, 564, 1, 0, 0),
	(6, 6, 564, 1, 0, 0),
	(7, 4, 564, 1, 0, 0),
	(8, 5, 564, 1, 0, 0);
/*!40000 ALTER TABLE `qtdpv_recomendacao_imovel` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_redirect_links
CREATE TABLE IF NOT EXISTS `qtdpv_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_link_modifed` (`modified_date`),
  KEY `idx_old_url` (`old_url`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_redirect_links: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_redirect_links` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_schemas
CREATE TABLE IF NOT EXISTS `qtdpv_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_schemas: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_schemas` DISABLE KEYS */;
INSERT INTO `qtdpv_schemas` (`extension_id`, `version_id`) VALUES
	(700, '3.5.1-2016-03-29'),
	(716, '2.3.6');
/*!40000 ALTER TABLE `qtdpv_schemas` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_session
CREATE TABLE IF NOT EXISTS `qtdpv_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_session: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_session` DISABLE KEYS */;
INSERT INTO `qtdpv_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
	('ff5u2q1dvc3ciaajjve9vi4i04', 1, 0, '1462082574', 'joomla|s:2388:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0NjIwODEyNDY7czo0OiJsYXN0IjtpOjE0NjIwODI1NzI7czozOiJub3ciO2k6MTQ2MjA4MjU3Mzt9czo1OiJ0b2tlbiI7czozMjoiRWFJeUdiYWVYaGp2YTJzU1R4VFFmUlNRT3RFSm1QR0kiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czoxODoicGxnX3N5c19hZG1pbmV4aWxlIjtPOjg6InN0ZENsYXNzIjoxOntzOjEyOiJjb25zbG9jYWxpemUiO2I6MTt9czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czoxOToiY29tX2xvY2FsaXplX2ltb3ZlbCI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImltdmVsIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX1zOjY6ImltdmVpcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo4OiJvcmRlcmNvbCI7czo2OiJhLm5vbWUiO319fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjI4OntzOjk6IgAqAGlzUm9vdCI7YjoxO3M6MjoiaWQiO3M6MzoiNTY0IjtzOjQ6Im5hbWUiO3M6MTA6IlN1cGVyIFVzZXIiO3M6ODoidXNlcm5hbWUiO3M6NToiYWRtaW4iO3M6NToiZW1haWwiO3M6MTg6InZnYi5pbmZvQGdtYWlsLmNvbSI7czo4OiJwYXNzd29yZCI7czo2MDoiJDJ5JDEwJGphMDM3SFNzYWRQTjM5TGJoMW9kTWVOdm1LLy5iUUh6akx4RVhqMkN4SVlwT2FZTGVYcHNxIjtzOjE0OiJwYXNzd29yZF9jbGVhciI7czowOiIiO3M6NToiYmxvY2siO3M6MToiMCI7czo5OiJzZW5kRW1haWwiO3M6MToiMSI7czoxMjoicmVnaXN0ZXJEYXRlIjtzOjE5OiIyMDE1LTExLTIzIDExOjQ3OjE3IjtzOjEzOiJsYXN0dmlzaXREYXRlIjtzOjE5OiIyMDE2LTA1LTAxIDA0OjI4OjQ3IjtzOjEwOiJhY3RpdmF0aW9uIjtzOjE6IjAiO3M6NjoicGFyYW1zIjtzOjI6Int9IjtzOjY6Imdyb3VwcyI7YToxOntpOjg7czoxOiI4Ijt9czo1OiJndWVzdCI7aTowO3M6MTM6Imxhc3RSZXNldFRpbWUiO3M6MTk6IjAwMDAtMDAtMDAgMDA6MDA6MDAiO3M6MTA6InJlc2V0Q291bnQiO3M6MToiMCI7czoxMjoicmVxdWlyZVJlc2V0IjtzOjE6IjAiO3M6MTA6IgAqAF9wYXJhbXMiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6MTQ6IgAqAF9hdXRoR3JvdXBzIjthOjI6e2k6MDtpOjE7aToxO2k6ODt9czoxNDoiACoAX2F1dGhMZXZlbHMiO2E6NTp7aTowO2k6MTtpOjE7aToxO2k6MjtpOjI7aTozO2k6MztpOjQ7aTo2O31zOjE1OiIAKgBfYXV0aEFjdGlvbnMiO047czoxMjoiACoAX2Vycm9yTXNnIjtOO3M6MTM6IgAqAHVzZXJIZWxwZXIiO086MTg6IkpVc2VyV3JhcHBlckhlbHBlciI6MDp7fXM6MTA6IgAqAF9lcnJvcnMiO2E6MDp7fXM6MzoiYWlkIjtpOjA7czo2OiJvdHBLZXkiO3M6MDoiIjtzOjQ6Im90ZXAiO3M6MDoiIjt9fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 564, 'admin'),
	('vbl2paj1949e66pnaiovg8b716', 0, 0, '1462082841', 'joomla|s:2668:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo5OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo3MDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0NjIwNzY5MjE7czo0OiJsYXN0IjtpOjE0NjIwODI3NDY7czozOiJub3ciO2k6MTQ2MjA4Mjg0MDt9czo1OiJ0b2tlbiI7czozMjoiaGtvUjNYMFk0OG9wbnBGTVNqVXJLZnlxZnhRRlJia00iO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO2E6MDp7fXM6NjoicmV0dXJuIjtzOjU0OiJodHRwOi8vbG9jYWxob3N0L2xvY2FsaXplX2Nzcy9sb2NhbGl6ZS9pbW92ZWlzL2ltdmVsLzIiO319fXM6MTk6ImNvbV9sb2NhbGl6ZV9pbW92ZWwiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJpbXZlbCI7Tzo4OiJzdGRDbGFzcyI6MTp7czoyOiJpZCI7czoxOiI0Ijt9fX19czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6Mjg6e3M6OToiACoAaXNSb290IjtiOjE7czoyOiJpZCI7czozOiI1NjQiO3M6NDoibmFtZSI7czoxMDoiU3VwZXIgVXNlciI7czo4OiJ1c2VybmFtZSI7czo1OiJhZG1pbiI7czo1OiJlbWFpbCI7czoxODoidmdiLmluZm9AZ21haWwuY29tIjtzOjg6InBhc3N3b3JkIjtzOjYwOiIkMnkkMTAkamEwMzdIU3NhZFBOMzlMYmgxb2RNZU52bUsvLmJRSHpqTHhFWGoyQ3hJWXBPYVlMZVhwc3EiO3M6MTQ6InBhc3N3b3JkX2NsZWFyIjtzOjA6IiI7czo1OiJibG9jayI7czoxOiIwIjtzOjk6InNlbmRFbWFpbCI7czoxOiIxIjtzOjEyOiJyZWdpc3RlckRhdGUiO3M6MTk6IjIwMTUtMTEtMjMgMTE6NDc6MTciO3M6MTM6Imxhc3R2aXNpdERhdGUiO3M6MTk6IjIwMTYtMDUtMDEgMDE6NTc6MjIiO3M6MTA6ImFjdGl2YXRpb24iO3M6MToiMCI7czo2OiJwYXJhbXMiO3M6Mjoie30iO3M6NjoiZ3JvdXBzIjthOjE6e2k6ODtzOjE6IjgiO31zOjU6Imd1ZXN0IjtpOjA7czoxMzoibGFzdFJlc2V0VGltZSI7czoxOToiMDAwMC0wMC0wMCAwMDowMDowMCI7czoxMDoicmVzZXRDb3VudCI7czoxOiIwIjtzOjEyOiJyZXF1aXJlUmVzZXQiO3M6MToiMCI7czoxMDoiACoAX3BhcmFtcyI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czoxNDoiACoAX2F1dGhHcm91cHMiO2E6Mjp7aTowO2k6MTtpOjE7aTo4O31zOjE0OiIAKgBfYXV0aExldmVscyI7YTo1OntpOjA7aToxO2k6MTtpOjE7aToyO2k6MjtpOjM7aTozO2k6NDtpOjY7fXM6MTU6IgAqAF9hdXRoQWN0aW9ucyI7TjtzOjEyOiIAKgBfZXJyb3JNc2ciO047czoxMzoiACoAdXNlckhlbHBlciI7TzoxODoiSlVzZXJXcmFwcGVySGVscGVyIjowOnt9czoxMDoiACoAX2Vycm9ycyI7YTowOnt9czozOiJhaWQiO2k6MDtzOjY6Im90cEtleSI7czowOiIiO3M6NDoib3RlcCI7czowOiIiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7Tjt9czoyMzoiZmZfZWRpdGFibGVNb2Q5NkNvbnRhdG8iO2k6MDtzOjMyOiJmZl9lZGl0YWJsZV9vdmVycmlkZU1vZDk2Q29udGF0byI7aTowO3M6MTY6InZpcnR1ZW1hcnRfYmZfaWQiO3M6MToiMSI7czoyMzoiZmZfZWRpdGFibGVNb2QwZmZfZm9ybTEiO2k6MDtzOjMyOiJmZl9lZGl0YWJsZV9vdmVycmlkZU1vZDBmZl9mb3JtMSI7aTowO319czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";virtuemart_bf_id|s:1:"1";', 564, 'admin');
/*!40000 ALTER TABLE `qtdpv_session` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_tags
CREATE TABLE IF NOT EXISTS `qtdpv_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_alias` (`alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_tags: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_tags` DISABLE KEYS */;
INSERT INTO `qtdpv_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
	(1, 0, 0, 19, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(2, 1, 1, 2, 1, 'faculdades', 'Faculdades', 'faculdades', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info"}', ' ', ' ', '{"author":"","robots":""}', 564, '2016-02-10 23:26:21', '', 0, '2016-02-10 23:26:21', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{}', 0, '*', 1, '2016-02-10 23:26:21', '2016-02-10 23:26:21'),
	(3, 1, 3, 4, 1, 'shopping', 'Shopping', 'shopping', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info"}', ' ', ' ', '{"author":"","robots":""}', 564, '2016-02-10 23:26:40', '', 0, '2016-02-10 23:26:40', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{}', 0, '*', 1, '2016-02-10 23:26:40', '2016-02-10 23:26:40'),
	(4, 1, 5, 6, 1, 'supermercado', 'Supermercado', 'supermercado', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"tag_layout":"","tag_link_class":"label label-info"}', ' ', ' ', '{"author":"","robots":""}', 564, '2016-02-10 23:26:53', '', 0, '2016-02-10 23:26:53', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{}', 0, '*', 1, '2016-02-10 23:26:53', '2016-02-10 23:26:53'),
	(5, 1, 7, 8, 1, 'entrada-para-ar-condicionado', 'Entrada para ar condicionado', 'entrada-para-ar-condicionado', '', '', 1, 0, '2016-04-03 23:02:55', 1, '{"tag_layout":"","tag_link_class":"label label-info"}', ' ', ' ', '{"author":"","robots":""}', 564, '2016-04-03 23:02:55', '', 0, '2016-04-03 23:02:55', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{}', 0, '*', 1, '2016-04-03 23:02:55', '2016-04-03 23:02:55'),
	(6, 1, 9, 10, 1, 'sistema-de-seguraca', 'Sistema de seguraça', 'sistema-de-seguraca', '', '', 1, 0, '2016-04-03 23:04:37', 1, '{"tag_layout":"","tag_link_class":"label label-info"}', ' ', ' ', '{"author":"","robots":""}', 564, '2016-04-03 23:04:37', '', 0, '2016-04-03 23:04:37', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{}', 0, '*', 1, '2016-04-03 23:04:37', '2016-04-03 23:04:37'),
	(7, 1, 11, 12, 1, 'escaninho', 'Escaninho', 'escaninho', '', '', 1, 0, '2016-04-03 23:05:02', 1, '{"tag_layout":"","tag_link_class":"label label-info"}', ' ', ' ', '{"author":"","robots":""}', 564, '2016-04-03 23:05:02', '', 0, '2016-04-03 23:05:02', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{}', 0, '*', 1, '2016-04-03 23:05:02', '2016-04-03 23:05:02'),
	(8, 1, 13, 14, 1, 'varanda-gourmet', 'Varanda Gourmet', 'varanda-gourmet', '', '', 1, 0, '2016-04-03 23:05:22', 1, '{"tag_layout":"","tag_link_class":"label label-info"}', ' ', ' ', '{"author":"","robots":""}', 564, '2016-04-03 23:05:22', '', 0, '2016-04-03 23:05:22', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{}', 0, '*', 1, '2016-04-03 23:05:22', '2016-04-03 23:05:22'),
	(9, 1, 15, 16, 1, 'laje-tecnica', 'Laje Técnica', 'laje-tecnica', '', '', 1, 0, '2016-04-03 23:05:57', 1, '{"tag_layout":"","tag_link_class":"label label-info"}', ' ', ' ', '{"author":"","robots":""}', 564, '2016-04-03 23:05:57', '', 0, '2016-04-03 23:05:57', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{}', 0, '*', 1, '2016-04-03 23:05:57', '2016-04-03 23:05:57'),
	(10, 1, 17, 18, 1, 'area-de-lazer', 'Área de lazer', 'area-de-lazer', '', '', 1, 0, '2016-04-03 23:09:40', 1, '{"tag_layout":"","tag_link_class":"label label-info"}', ' ', ' ', '{"author":"","robots":""}', 564, '2016-04-03 23:09:40', '', 0, '2016-04-03 23:09:40', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{}', 0, '*', 1, '2016-04-03 23:09:40', '2016-04-03 23:09:40');
/*!40000 ALTER TABLE `qtdpv_tags` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_template_styles
CREATE TABLE IF NOT EXISTS `qtdpv_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_template_styles: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_template_styles` DISABLE KEYS */;
INSERT INTO `qtdpv_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
	(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
	(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
	(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
	(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"#34736f","headerColor":"#1f9993","sidebarColor":"#ef7e4e","linkColor":"#34736f","loginBackgroundColor":"#1f9993","logoFile":"images\\/logo_branca.png","loginLogoFile":"images\\/logotipo.png","admin_menus":1,"displayHeader":1,"statusFixed":1,"stickyToolbar":1}'),
	(9, 'frontend', 0, '0', 'frontend - PadrÃ£o', '{"runless":"1"}');
/*!40000 ALTER TABLE `qtdpv_template_styles` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_ucm_base
CREATE TABLE IF NOT EXISTS `qtdpv_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_ucm_base: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_ucm_base` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_ucm_content
CREATE TABLE IF NOT EXISTS `qtdpv_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_language` (`core_language`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_content_type` (`core_type_alias`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- Copiando dados para a tabela localize.qtdpv_ucm_content: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_ucm_content` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_ucm_history
CREATE TABLE IF NOT EXISTS `qtdpv_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_ucm_history: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_ucm_history` DISABLE KEYS */;
INSERT INTO `qtdpv_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
	(1, 2, 8, '', '2016-02-10 23:26:21', 564, 858, '94ad70e1daad2b02ef653e895c62173cb383a758', '{"id":2,"parent_id":"1","lft":"1","rgt":2,"level":1,"path":null,"title":"Faculdades","alias":"faculdades","note":"","description":"","published":"1","checked_out":null,"checked_out_time":"2016-02-10 23:26:21","access":"1","params":"{\\"tag_layout\\":\\"\\",\\"tag_link_class\\":\\"label label-info\\"}","metadesc":" ","metakey":" ","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"564","created_time":"2016-02-10 23:26:21","created_by_alias":"","modified_user_id":null,"modified_time":"2016-02-10 23:26:21","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{}","hits":"0","language":"*","version":null,"publish_up":"2016-02-10 23:26:21","publish_down":"2016-02-10 23:26:21"}', 0),
	(2, 3, 8, '', '2016-02-10 23:26:40', 564, 854, '7bf63182d846499d71715ac1a965bd8c9f847f16', '{"id":3,"parent_id":"1","lft":"3","rgt":4,"level":1,"path":null,"title":"Shopping","alias":"shopping","note":"","description":"","published":"1","checked_out":null,"checked_out_time":"2016-02-10 23:26:40","access":"1","params":"{\\"tag_layout\\":\\"\\",\\"tag_link_class\\":\\"label label-info\\"}","metadesc":" ","metakey":" ","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"564","created_time":"2016-02-10 23:26:40","created_by_alias":"","modified_user_id":null,"modified_time":"2016-02-10 23:26:40","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{}","hits":"0","language":"*","version":null,"publish_up":"2016-02-10 23:26:40","publish_down":"2016-02-10 23:26:40"}', 0),
	(3, 4, 8, '', '2016-02-10 23:26:53', 564, 862, '6801fa36681c44775002a3caca93caea2d8e8d67', '{"id":4,"parent_id":"1","lft":"5","rgt":6,"level":1,"path":null,"title":"Supermercado","alias":"supermercado","note":"","description":"","published":"1","checked_out":null,"checked_out_time":"2016-02-10 23:26:53","access":"1","params":"{\\"tag_layout\\":\\"\\",\\"tag_link_class\\":\\"label label-info\\"}","metadesc":" ","metakey":" ","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"564","created_time":"2016-02-10 23:26:53","created_by_alias":"","modified_user_id":null,"modified_time":"2016-02-10 23:26:53","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{}","hits":"0","language":"*","version":null,"publish_up":"2016-02-10 23:26:53","publish_down":"2016-02-10 23:26:53"}', 0),
	(4, 5, 8, '', '2016-04-03 23:02:55', 564, 894, '59e6051cef579d49f941a6e25527c54ddc1170e1', '{"id":5,"parent_id":"1","lft":"7","rgt":8,"level":1,"path":null,"title":"Entrada para ar condicionado","alias":"entrada-para-ar-condicionado","note":"","description":"","published":"1","checked_out":null,"checked_out_time":"2016-04-03 23:02:55","access":"1","params":"{\\"tag_layout\\":\\"\\",\\"tag_link_class\\":\\"label label-info\\"}","metadesc":" ","metakey":" ","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"564","created_time":"2016-04-03 23:02:55","created_by_alias":"","modified_user_id":null,"modified_time":"2016-04-03 23:02:55","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{}","hits":"0","language":"*","version":null,"publish_up":"2016-04-03 23:02:55","publish_down":"2016-04-03 23:02:55"}', 0),
	(5, 6, 8, '', '2016-04-03 23:04:37', 564, 882, '0a5e16a0520d84c8a4c42814c876c3f5eba48e87', '{"id":6,"parent_id":"1","lft":"9","rgt":10,"level":1,"path":null,"title":"Sistema de segura\\u00e7a","alias":"sistema-de-seguraca","note":"","description":"","published":"1","checked_out":null,"checked_out_time":"2016-04-03 23:04:37","access":"1","params":"{\\"tag_layout\\":\\"\\",\\"tag_link_class\\":\\"label label-info\\"}","metadesc":" ","metakey":" ","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"564","created_time":"2016-04-03 23:04:37","created_by_alias":"","modified_user_id":null,"modified_time":"2016-04-03 23:04:37","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{}","hits":"0","language":"*","version":null,"publish_up":"2016-04-03 23:04:37","publish_down":"2016-04-03 23:04:37"}', 0),
	(6, 7, 8, '', '2016-04-03 23:05:02', 564, 858, 'db0e25edc4a98649e0fec5403e4cd4e9cd3edc37', '{"id":7,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"title":"Escaninho","alias":"escaninho","note":"","description":"","published":"1","checked_out":null,"checked_out_time":"2016-04-03 23:05:02","access":"1","params":"{\\"tag_layout\\":\\"\\",\\"tag_link_class\\":\\"label label-info\\"}","metadesc":" ","metakey":" ","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"564","created_time":"2016-04-03 23:05:02","created_by_alias":"","modified_user_id":null,"modified_time":"2016-04-03 23:05:02","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{}","hits":"0","language":"*","version":null,"publish_up":"2016-04-03 23:05:02","publish_down":"2016-04-03 23:05:02"}', 0),
	(7, 8, 8, '', '2016-04-03 23:05:22', 564, 870, '311fe190a5a6f907fe76da328ebb35d0dbb1ec11', '{"id":8,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"title":"Varanda Gourmet","alias":"varanda-gourmet","note":"","description":"","published":"1","checked_out":null,"checked_out_time":"2016-04-03 23:05:22","access":"1","params":"{\\"tag_layout\\":\\"\\",\\"tag_link_class\\":\\"label label-info\\"}","metadesc":" ","metakey":" ","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"564","created_time":"2016-04-03 23:05:22","created_by_alias":"","modified_user_id":null,"modified_time":"2016-04-03 23:05:22","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{}","hits":"0","language":"*","version":null,"publish_up":"2016-04-03 23:05:22","publish_down":"2016-04-03 23:05:22"}', 0),
	(8, 9, 8, '', '2016-04-03 23:05:57', 564, 869, 'ebfe9d1c2a64ae7c8a9192b386d456052e516922', '{"id":9,"parent_id":"1","lft":"15","rgt":16,"level":1,"path":null,"title":"Laje T\\u00e9cnica","alias":"laje-tecnica","note":"","description":"","published":"1","checked_out":null,"checked_out_time":"2016-04-03 23:05:57","access":"1","params":"{\\"tag_layout\\":\\"\\",\\"tag_link_class\\":\\"label label-info\\"}","metadesc":" ","metakey":" ","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"564","created_time":"2016-04-03 23:05:57","created_by_alias":"","modified_user_id":null,"modified_time":"2016-04-03 23:05:57","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{}","hits":"0","language":"*","version":null,"publish_up":"2016-04-03 23:05:57","publish_down":"2016-04-03 23:05:57"}', 0),
	(9, 10, 8, '', '2016-04-03 23:09:40', 564, 872, '1f545405f5cf8158cd5e828b30cdcd5700e4ba66', '{"id":10,"parent_id":"1","lft":"17","rgt":18,"level":1,"path":null,"title":"\\u00c1rea de lazer","alias":"area-de-lazer","note":"","description":"","published":"1","checked_out":null,"checked_out_time":"2016-04-03 23:09:40","access":"1","params":"{\\"tag_layout\\":\\"\\",\\"tag_link_class\\":\\"label label-info\\"}","metadesc":" ","metakey":" ","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"564","created_time":"2016-04-03 23:09:40","created_by_alias":"","modified_user_id":null,"modified_time":"2016-04-03 23:09:40","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{}","hits":"0","language":"*","version":null,"publish_up":"2016-04-03 23:09:40","publish_down":"2016-04-03 23:09:40"}', 0);
/*!40000 ALTER TABLE `qtdpv_ucm_history` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_updates
CREATE TABLE IF NOT EXISTS `qtdpv_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- Copiando dados para a tabela localize.qtdpv_updates: ~65 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_updates` DISABLE KEYS */;
INSERT INTO `qtdpv_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
	(1, 3, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
	(2, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
	(3, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
	(4, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
	(5, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
	(6, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
	(7, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
	(8, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
	(9, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
	(10, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
	(11, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
	(12, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
	(13, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
	(14, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
	(15, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
	(16, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
	(17, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
	(18, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
	(19, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
	(20, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
	(21, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
	(22, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
	(23, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
	(24, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
	(25, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
	(26, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
	(27, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.4.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
	(28, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
	(29, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
	(30, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
	(31, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
	(32, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
	(33, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
	(34, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.5.0.6', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
	(35, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
	(36, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
	(37, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
	(38, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
	(39, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
	(40, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
	(41, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
	(42, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
	(43, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
	(44, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
	(45, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
	(46, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
	(47, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
	(48, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
	(49, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.4.8.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
	(50, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
	(51, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
	(52, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
	(53, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
	(54, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
	(55, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
	(56, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
	(57, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.4.4.3', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
	(58, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
	(59, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
	(60, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
	(61, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
	(62, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
	(63, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
	(64, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
	(65, 7, 0, 'BlankModule', 'MODBLANK250', 'mod_blank250', 'module', '', 0, '6.0.0', '', 'http://updates.blackdale.com/update/modblank250/modblank250.xml', '', '');
/*!40000 ALTER TABLE `qtdpv_updates` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_update_sites
CREATE TABLE IF NOT EXISTS `qtdpv_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

-- Copiando dados para a tabela localize.qtdpv_update_sites: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_update_sites` DISABLE KEYS */;
INSERT INTO `qtdpv_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
	(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1462081262, ''),
	(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1462081262, ''),
	(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1462081260, ''),
	(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1462081260, ''),
	(5, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1462081260, ''),
	(6, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1&file=extension.xml', 1, 1462081260, ''),
	(7, 'Blackdale', 'extension', 'http://updates.blackdale.com/update/modblank250/modblank250.xml', 1, 1462081260, ''),
	(8, 'BreezingForms Lite', 'extension', 'https://crosstec.org/updates/breezingforms/breezingformslite_update.xml', 1, 1462081260, '');
/*!40000 ALTER TABLE `qtdpv_update_sites` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_update_sites_extensions
CREATE TABLE IF NOT EXISTS `qtdpv_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

-- Copiando dados para a tabela localize.qtdpv_update_sites_extensions: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `qtdpv_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
	(1, 700),
	(2, 700),
	(3, 600),
	(3, 704),
	(4, 28),
	(5, 705),
	(6, 708),
	(7, 712),
	(7, 713),
	(7, 714),
	(8, 717);
/*!40000 ALTER TABLE `qtdpv_update_sites_extensions` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_usergroups
CREATE TABLE IF NOT EXISTS `qtdpv_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_usergroups: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_usergroups` DISABLE KEYS */;
INSERT INTO `qtdpv_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
	(1, 0, 1, 18, 'Public'),
	(2, 1, 8, 15, 'Registered'),
	(3, 2, 9, 14, 'Author'),
	(4, 3, 10, 13, 'Editor'),
	(5, 4, 11, 12, 'Publisher'),
	(6, 1, 4, 7, 'Manager'),
	(7, 6, 5, 6, 'Administrator'),
	(8, 1, 16, 17, 'Super Users'),
	(9, 1, 2, 3, 'Guest');
/*!40000 ALTER TABLE `qtdpv_usergroups` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_users
CREATE TABLE IF NOT EXISTS `qtdpv_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `idx_name` (`name`(100))
) ENGINE=InnoDB AUTO_INCREMENT=566 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_users` DISABLE KEYS */;
INSERT INTO `qtdpv_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
	(564, 'Super User', 'admin', 'vgb.info@gmail.com', '$2y$10$ja037HSsadPN39Lbh1odMeNvmK/.bQHzjLxEXj2CxIYpOaYLeXpsq', 0, 1, '2015-11-23 11:47:17', '2016-05-01 05:40:57', '0', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
	(565, 'Usuário 1', 'usuario1', 'usuario1@localize.com', '$2y$10$cV4L9QTepumag3b49wTsl.RSDUZMC3uWeyeylk7NOzXohW3ggvR0S', 0, 0, '2016-04-23 17:26:13', '2016-04-30 19:49:58', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);
/*!40000 ALTER TABLE `qtdpv_users` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_user_keys
CREATE TABLE IF NOT EXISTS `qtdpv_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_user_keys: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_user_keys` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_user_notes
CREATE TABLE IF NOT EXISTS `qtdpv_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_user_notes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `qtdpv_user_notes` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_user_profiles
CREATE TABLE IF NOT EXISTS `qtdpv_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- Copiando dados para a tabela localize.qtdpv_user_profiles: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_user_profiles` DISABLE KEYS */;
INSERT INTO `qtdpv_user_profiles` (`user_id`, `profile_key`, `profile_value`, `ordering`) VALUES
	(565, 'profile.aboutme', '""', 10),
	(565, 'profile.address1', '""', 1),
	(565, 'profile.address2', '""', 2),
	(565, 'profile.city', '""', 3),
	(565, 'profile.country', '""', 5),
	(565, 'profile.dob', '""', 11),
	(565, 'profile.favoritebook', '""', 9),
	(565, 'profile.phone', '""', 7),
	(565, 'profile.postal_code', '""', 6),
	(565, 'profile.region', '""', 4),
	(565, 'profile.website', 'false', 8);
/*!40000 ALTER TABLE `qtdpv_user_profiles` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_user_usergroup_map
CREATE TABLE IF NOT EXISTS `qtdpv_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_user_usergroup_map: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `qtdpv_user_usergroup_map` (`user_id`, `group_id`) VALUES
	(564, 8),
	(565, 2);
/*!40000 ALTER TABLE `qtdpv_user_usergroup_map` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_utf8_conversion
CREATE TABLE IF NOT EXISTS `qtdpv_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_utf8_conversion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_utf8_conversion` DISABLE KEYS */;
INSERT INTO `qtdpv_utf8_conversion` (`converted`) VALUES
	(2);
/*!40000 ALTER TABLE `qtdpv_utf8_conversion` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_viewlevels
CREATE TABLE IF NOT EXISTS `qtdpv_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela localize.qtdpv_viewlevels: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_viewlevels` DISABLE KEYS */;
INSERT INTO `qtdpv_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
	(1, 'Public', 0, '[1]'),
	(2, 'Registered', 2, '[6,2,8]'),
	(3, 'Special', 3, '[6,3,8]'),
	(5, 'Guest', 1, '[9]'),
	(6, 'Super Users', 4, '[8]');
/*!40000 ALTER TABLE `qtdpv_viewlevels` ENABLE KEYS */;


-- Copiando estrutura para tabela localize.qtdpv_wf_profiles
CREATE TABLE IF NOT EXISTS `qtdpv_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela localize.qtdpv_wf_profiles: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `qtdpv_wf_profiles` DISABLE KEYS */;
INSERT INTO `qtdpv_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
	(1, 'Default', 'Default Profile for all users', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,fontselect,fontsizeselect,fontcolor,hr', 1, 1, 0, '0000-00-00 00:00:00', ''),
	(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,hr', 0, 2, 0, '0000-00-00 00:00:00', ''),
	(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}'),
	(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}');
/*!40000 ALTER TABLE `qtdpv_wf_profiles` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
