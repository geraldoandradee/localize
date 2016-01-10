<?php

/**
 * @version    CVS: 1.0.0
 * @package    Com_Localize_imovel
 * @author     Victor Bento <vgb.info@gmail.com>
 * @copyright  Copyright (C) 2015. Todos os direitos reservados.
 * @license    GNU General Public License versão 2 ou posterior; consulte o arquivo License. txt
 */
defined('_JEXEC') or die;

/**
 * Class Localize_imovelFrontendHelper
 *
 * @since  1.6
 */
class Localize_imovelFrontendHelper
{
	/**
	 * Get an instance of the named model
	 *
	 * @param   string  $name  Model name
	 *
	 * @return null|object
	 */
	public static function getModel($name)
	{
		$model = null;

		// If the file exists, let's
		if (file_exists(JPATH_SITE . '/components/com_localize_imovel/models/' . strtolower($name) . '.php'))
		{
			require_once JPATH_SITE . '/components/com_localize_imovel/models/' . strtolower($name) . '.php';
			$model = JModelLegacy::getInstance($name, 'Localize_imovelModel');
		}

		return $model;
	}
}
