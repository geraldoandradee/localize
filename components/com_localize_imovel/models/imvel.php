<?php

/**
 * @version    CVS: 1.0.0
 * @package    Com_Localize_imovel
 * @author     Victor Bento <vgb.info@gmail.com>
 * @copyright  Copyright (C) 2015. Todos os direitos reservados.
 * @license    GNU General Public License versão 2 ou posterior; consulte o arquivo License. txt
 */
// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.modelitem');
jimport('joomla.event.dispatcher');

use Joomla\Utilities\ArrayHelper;
/**
 * Localize_imovel model.
 *
 * @since  1.6
 */
class Localize_imovelModelImvel extends JModelItem
{
	/**
	 * Method to auto-populate the model state.
	 *
	 * Note. Calling getState in this method will result in recursion.
	 *
	 * @return void
	 *
	 * @since    1.6
	 *
	 */
	protected function populateState()
	{
		$app = JFactory::getApplication('com_localize_imovel');

		// Load state from the request userState on edit or from the passed variable on default
		if (JFactory::getApplication()->input->get('layout') == 'edit')
		{
			$id = JFactory::getApplication()->getUserState('com_localize_imovel.edit.imvel.id');
		}
		else
		{
			$id = JFactory::getApplication()->input->get('id');
			JFactory::getApplication()->setUserState('com_localize_imovel.edit.imvel.id', $id);
		}

		$this->setState('imvel.id', $id);

		// Load the parameters.
		$params       = $app->getParams();
		$params_array = $params->toArray();

		if (isset($params_array['item_id']))
		{
			$this->setState('imvel.id', $params_array['item_id']);
		}

		$this->setState('params', $params);
	}

	/**
	 * Method to get an object.
	 *
	 * @param   integer  $id  The id of the object to get.
	 *
	 * @return  mixed    Object on success, false on failure.
	 */
	public function &getData($id = null)
	{
		if ($this->_item === null)
		{
			$this->_item = false;

			if (empty($id))
			{
				$id = $this->getState('imvel.id');
			}

			// Get a level row instance.
			$table = $this->getTable();

			// Attempt to load the row.
			if ($table->load($id))
			{
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
				$this->_item = ArrayHelper::toObject($properties, 'JObject');
			}
		}

		if (isset($this->_item->created_by) )
		{
			$this->_item->created_by_name = JFactory::getUser($this->_item->created_by)->name;
		}
					$this->_item->num_quartos = JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_NUM_QUARTOS_OPTION_' . $this->_item->num_quartos);
					$this->_item->num_vagas = JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_NUM_VAGAS_OPTION_' . $this->_item->num_vagas);
					$this->_item->etapa_obra = JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_ETAPA_OBRA_OPTION_' . $this->_item->etapa_obra);
					$this->_item->etapa_negocio = JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_ETAPA_NEGOCIO_OPTION_' . $this->_item->etapa_negocio);

			if (isset($this->_item->construtora) && $this->_item->construtora != '') {
				if(is_object($this->_item->construtora)){
					$this->_item->construtora = JArrayHelper::fromObject($this->_item->construtora);
				}
				$values = (is_array($this->_item->construtora)) ? $this->_item->construtora : explode(',',$this->_item->construtora);

				$textValue = array();
				foreach ($values as $value){
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$query
							->select('nome')
							->from('`#__localize_empresa`')
							->where('id = ' . $db->quote($db->escape($value)));
					$db->setQuery($query);
					$results = $db->loadObject();
					if ($results) {
						$textValue[] = $results->nome;
					}
				}

			$this->_item->construtora = !empty($textValue) ? implode(', ', $textValue) : $this->_item->construtora;

			}

			if (isset($this->_item->imobiliaria) && $this->_item->imobiliaria != '') {
				if(is_object($this->_item->imobiliaria)){
					$this->_item->imobiliaria = JArrayHelper::fromObject($this->_item->imobiliaria);
				}
				$values = (is_array($this->_item->imobiliaria)) ? $this->_item->imobiliaria : explode(',',$this->_item->imobiliaria);

				$textValue = array();
				foreach ($values as $value){
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$query
							->select('nome')
							->from('`#__localize_empresa`')
							->where('id = ' . $db->quote($db->escape($value)));
					$db->setQuery($query);
					$results = $db->loadObject();
					if ($results) {
						$textValue[] = $results->nome;
					}
				}

			$this->_item->imobiliaria = !empty($textValue) ? implode(', ', $textValue) : $this->_item->imobiliaria;

			}

			if (isset($this->_item->imobiliaria2) && $this->_item->imobiliaria2 != '') {
				if(is_object($this->_item->imobiliaria2)){
					$this->_item->imobiliaria2 = JArrayHelper::fromObject($this->_item->imobiliaria2);
				}
				$values = (is_array($this->_item->imobiliaria2)) ? $this->_item->imobiliaria2 : explode(',',$this->_item->imobiliaria2);

				$textValue = array();
				foreach ($values as $value){
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$query
							->select('nome')
							->from('`#__localize_empresa`')
							->where('id = ' . $db->quote($db->escape($value)));
					$db->setQuery($query);
					$results = $db->loadObject();
					if ($results) {
						$textValue[] = $results->nome;
					}
				}

			$this->_item->imobiliaria2 = !empty($textValue) ? implode(', ', $textValue) : $this->_item->imobiliaria2;

			}

				if ( isset($this->_item->caracteristicas) ) {
					// Catch the item tags (string with ',' coma glue)
					$tags = explode(",",$this->_item->caracteristicas);

					$db = JFactory::getDbo();
					$namedTags = array(); // Cleaning and initalization of named tags array

					// Get the tag names of each tag id
					foreach ($tags as $tag) {

						$query = $db->getQuery(true);
						$query->select("title");
						$query->from('`#__tags`');
						$query->where( "id=" . intval($tag) );

						$db->setQuery($query);
						$row = $db->loadObjectList();

						// Read the row and get the tag name (title)
						if (!is_null($row)) {
							foreach ($row as $value) {
								if ( $value && isset($value->title) ) {
									$namedTags[] = trim($value->title);
								}
							}
						}

					}

					// Finally replace the data object with proper information
					if (!empty($namedTags)) {
						$this->_item->caracteristicas = implode(', ',$namedTags);
					} else {
						$this->_item->caracteristicas = !empty($this->_item->my_tags) ? ($this->_item->my_tags) : ("");
					}
		}

		return $this->_item;
	}

	/**
	 * Get an instance of JTable class
	 *
	 * @param   string  $type    Name of the JTable class to get an instance of.
	 * @param   string  $prefix  Prefix for the table class name. Optional.
	 * @param   array   $config  Array of configuration values for the JTable object. Optional.
	 *
	 * @return  JTable|bool JTable if success, false on failure.
	 */
	public function getTable($type = 'Imvel', $prefix = 'Localize_imovelTable', $config = array())
	{
		$this->addTablePath(JPATH_ADMINISTRATOR . '/components/com_localize_imovel/tables');

		return JTable::getInstance($type, $prefix, $config);
	}

	/**
	 * Get the id of an item by alias
	 *
	 * @param   string  $alias  Item alias
	 *
	 * @return  mixed
	 */
	public function getItemIdByAlias($alias)
	{
		$table = $this->getTable();

		$table->load(array('alias' => $alias));

		return $table->id;
	}

	/**
	 * Method to check in an item.
	 *
	 * @param   integer  $id  The id of the row to check out.
	 *
	 * @return  boolean True on success, false on failure.
	 *
	 * @since    1.6
	 */
	public function checkin($id = null)
	{
		// Get the id.
		$id = (!empty($id)) ? $id : (int) $this->getState('imvel.id');

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
	 * @param   integer  $id  The id of the row to check out.
	 *
	 * @return  boolean True on success, false on failure.
	 *
	 * @since    1.6
	 */
	public function checkout($id = null)
	{
		// Get the user id.
		$id = (!empty($id)) ? $id : (int) $this->getState('imvel.id');

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
	 * Get the name of a category by id
	 *
	 * @param   int  $id  Category id
	 *
	 * @return  Object|null	Object if success, null in case of failure
	 */
	public function getCategoryName($id)
	{
		$db    = JFactory::getDbo();
		$query = $db->getQuery(true);
		$query
			->select('title')
			->from('#__categories')
			->where('id = ' . $id);
		$db->setQuery($query);

		return $db->loadObject();
	}

	/**
	 * Publish the element
	 *
	 * @param   int  $id     Item id
	 * @param   int  $state  Publish state
	 *
	 * @return  boolean
	 */
	public function publish($id, $state)
	{
		$table = $this->getTable();
		$table->load($id);
		$table->state = $state;

		return $table->store();
	}

	/**
	 * Method to delete an item
	 *
	 * @param   int  $id  Element id
	 *
	 * @return  bool
	 */
	public function delete($id)
	{
		$table = $this->getTable();

		return $table->delete($id);
	}

	
}
