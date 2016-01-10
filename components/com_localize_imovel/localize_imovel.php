<?php
/**
 * @version    CVS: 1.0.0
 * @package    Com_Localize_imovel
 * @author     Victor Bento <vgb.info@gmail.com>
 * @copyright  Copyright (C) 2015. Todos os direitos reservados.
 * @license    GNU General Public License versão 2 ou posterior; consulte o arquivo License. txt
 */

defined('_JEXEC') or die;

// Include dependancies
jimport('joomla.application.component.controller');

JLoader::register('Localize_imovelFrontendHelper', JPATH_COMPONENT . '/helpers/localize_imovel.php');

// Execute the task.
$controller = JControllerLegacy::getInstance('Localize_imovel');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
