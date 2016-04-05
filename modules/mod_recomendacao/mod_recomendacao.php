<?php
/**
 *
 *
 * @package   mod_blank250
 * copyright Bob Galway
 * @license GPL3
 */

// no direct access
defined('_JEXEC') or die;
require_once dirname(__FILE__).'/helper.php';
$list      = modrecomendacaoHelper::getListImoveis();
var_dump($list);
require JModuleHelper::getLayoutPath('mod_recomendacao', $params->get('layout', 'default'));
