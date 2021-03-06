<?php
/**
 * @version     1.0.0
 * @package     com_localize_empresa
 * @copyright   Copyright (C) 2015. Todos os direitos reservados.
 * @license     GNU General Public License versão 2 ou posterior; consulte o arquivo License. txt
 * @author      Victor Bento <vgb.info@gmail.com> - http://victorbento.com.br
 */

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.modelform');
jimport('joomla.event.dispatcher');

/**
 * Localize_empresa model.
 */
class Localize_empresaModelCadastrodeempresaForm extends JModelForm
{

	var $_item = null;

	/**
	 * Method to auto-populate the model state.
	 *
	 * Note. Calling getState in this method will result in recursion.
	 *
	 * @since    1.6
	 */
	protected function populateState()
	{
		$app = JFactory::getApplication('com_localize_empresa');

		// Load state from the request userState on edit or from the passed variable on default
		if (JFactory::getApplication()->input->get('layout') == 'edit')
		{
			$id = JFactory::getApplication()->getUserState('com_localize_empresa.edit.cadastrodeempresa.id');
		}
		else
		{
			$id = JFactory::getApplication()->input->get('id');
			JFactory::getApplication()->setUserState('com_localize_empresa.edit.cadastrodeempresa.id', $id);
		}
		$this->setState('cadastrodeempresa.id', $id);

		// Load the parameters.
		$params       = $app->getParams();
		$params_array = $params->toArray();
		if (isset($params_array['item_id']))
		{
			$this->setState('cadastrodeempresa.id', $params_array['item_id']);
		}
		$this->setState('params', $params);

	}

	/**
	 * Method to get an ojbect.
	 *
	 * @param    integer    The id of the object to get.
	 *
	 * @return    mixed    Object on success, false on failure.
	 */
	public function &getData($id = null)
	{
		if ($this->_item === null)
		{
			$this->_item = false;

			if (empty($id))
			{
				$id = $this->getState('cadastrodeempresa.id');
			}

			// Get a level row instance.
			$table = $this->getTable();

			// Attempt to load the row.
			if ($table !== false && $table->load($id))
			{

				$user = JFactory::getUser();
				$id   = $table->id;
				if($id){
	$canEdit = $user->authorise('core.edit', 'com_localize_empresa.cadastrodeempresa.'.$id) || $user->authorise('core.create', 'com_localize_empresa.cadastrodeempresa.'.$id);
}
else{
	$canEdit = $user->authorise('core.edit', 'com_localize_empresa') || $user->authorise('core.create', 'com_localize_empresa');
}
				if (!$canEdit && $user->authorise('core.edit.own', 'com_localize_empresa.cadastrodeempresa.'.$id))
				{
					$canEdit = $user->id == $table->created_by;
				}

				if (!$canEdit)
				{
					throw new Exception(JText::_('JERROR_ALERTNOAUTHOR'), 500);
				}

				// Check published state.
				if ($published = $this->getState('filter.published'))
				{
					if ($table->state != $published)
					{
						return $this->_item;
					}
				}

				// Convert the JTable to a clean JObject.
				$properties  = $table->getProperties(1);
				$this->_item = JArrayHelper::toObject($properties, 'JObject');
			}
		}

		return $this->_item;
	}

	public function getTable($type = 'Cadastrodeempresa', $prefix = 'Localize_empresaTable', $config = array())
	{
		$this->addTablePath(JPATH_ADMINISTRATOR . '/components/com_localize_empresa/tables');

		return JTable::getInstance($type, $prefix, $config);
	}

	public function getItemIdByAlias($alias)
	{
		$table = $this->getTable();

		$table->load(array( 'alias' => $alias ));

		return $table->id;
	}

	/**
	 * Method to check in an item.
	 *
	 * @param    integer        The id of the row to check out.
	 *
	 * @return    boolean        True on success, false on failure.
	 * @since    1.6
	 */
	public function checkin($id = null)
	{
		// Get the id.
		$id = (!empty($id)) ? $id : (int) $this->getState('cadastrodeempresa.id');

		if ($id)
		{

			// Initialise the table
			$table = $this->getTable();

			// Attempt to check the row in.
			if (method_exists($table, 'checkin'))
			{
				if (!$table->checkin($id))
				{
					return false;
				}
			}
		}

		return true;
	}

	/**
	 * Method to check out an item for editing.
	 *
	 * @param    integer        The id of the row to check out.
	 *
	 * @return    boolean        True on success, false on failure.
	 * @since    1.6
	 */
	public function checkout($id = null)
	{
		// Get the user id.
		$id = (!empty($id)) ? $id : (int) $this->getState('cadastrodeempresa.id');

		if ($id)
		{

			// Initialise the table
			$table = $this->getTable();

			// Get the current user object.
			$user = JFactory::getUser();

			// Attempt to check the row out.
			if (method_exists($table, 'checkout'))
			{
				if (!$table->checkout($user->get('id'), $id))
				{
					return false;
				}
			}
		}

		return true;
	}

	/**
	 * Method to get the profile form.
	 *
	 * The base form is loaded from XML
	 *
	 * @param    array   $data     An optional array of data for the form to interogate.
	 * @param    boolean $loadData True if the form is to load its own data (default case), false if not.
	 *
	 * @return    JForm    A JForm object on success, false on failure
	 * @since    1.6
	 */
	public function getForm($data = array(), $loadData = true)
	{
		// Get the form.
		$form = $this->loadForm('com_localize_empresa.cadastrodeempresa', 'cadastrodeempresaform', array(
			'control'   => 'jform',
			'load_data' => $loadData
		));
		if (empty($form))
		{
			return false;
		}

		return $form;
	}

	/**
	 * Method to get the data that should be injected in the form.
	 *
	 * @return    mixed    The data for the form.
	 * @since    1.6
	 */
	protected function loadFormData()
	{
		$data = JFactory::getApplication()->getUserState('com_localize_empresa.edit.cadastrodeempresa.data', array());
		if (empty($data))
		{
			$data = $this->getData();
		}
		

		return $data;
	}

	/**
	 * Method to save the form data.
	 *
	 * @param    array        The form data.
	 *
	 * @return    mixed        The user id on success, false on failure.
	 * @since    1.6
	 */
	public function save($data)
	{
		$id    = (!empty($data['id'])) ? $data['id'] : (int) $this->getState('cadastrodeempresa.id');
		$state = (!empty($data['state'])) ? 1 : 0;
		$user  = JFactory::getUser();

		if ($id)
		{
			//Check the user can edit this item
			$authorised = $user->authorise('core.edit', 'com_localize_empresa.cadastrodeempresa.'.$id) || $authorised = $user->authorise('core.edit.own', 'com_localize_empresa.cadastrodeempresa.'.$id);
			if ($user->authorise('core.edit.state', 'com_localize_empresa.cadastrodeempresa.'.$id) !== true && $state == 1)
			{ //The user cannot edit the state of the item.
				$data['state'] = 0;
			}
		}
		else
		{
			//Check the user can create new items in this section
			$authorised = $user->authorise('core.create', 'com_localize_empresa');
			if ($user->authorise('core.edit.state', 'com_localize_empresa.cadastrodeempresa.'.$id) !== true && $state == 1)
			{ //The user cannot edit the state of the item.
				$data['state'] = 0;
			}
		}

		if ($authorised !== true)
		{
			throw new Exception(JText::_('JERROR_ALERTNOAUTHOR'), 403);
		}

		$table = $this->getTable();
		if ($table->save($data) === true)
		{
			return $table->id;
		}
		else
		{
			return false;
		}

	}

	public function delete($data)
	{
		$id = (!empty($data['id'])) ? $data['id'] : (int) $this->getState('cadastrodeempresa.id');
		if (JFactory::getUser()->authorise('core.delete', 'com_localize_empresa.cadastrodeempresa.'.$id) !== true)
		{
			throw new Exception(403, JText::_('JERROR_ALERTNOAUTHOR'));
		}
		$table = $this->getTable();
		if ($table->delete($data['id']) === true)
		{
			return $id;
		}
		else
		{
			return false;
		}
	}

	public function getCanSave()
	{
		$table = $this->getTable();

		return $table !== false;
	}

	

}