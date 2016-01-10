<?php

/**
 * @version    CVS: 1.0.0
 * @package    Com_Localize_imovel
 * @author     Victor Bento <vgb.info@gmail.com>
 * @copyright  Copyright (C) 2015. Todos os direitos reservados.
 * @license    GNU General Public License versão 2 ou posterior; consulte o arquivo License. txt
 */
defined('_JEXEC') or die;

jimport('joomla.application.component.modellist');

/**
 * Methods supporting a list of Localize_imovel records.
 *
 * @since  1.6
 */
class Localize_imovelModelImveis extends JModelList
{
/**
	* Constructor.
	*
	* @param   array  $config  An optional associative array of configuration settings.
	*
	* @see        JController
	* @since      1.6
	*/
	public function __construct($config = array())
	{
		if (empty($config['filter_fields']))
		{
			$config['filter_fields'] = array(
				'id', 'a.`id`',
				'ordering', 'a.`ordering`',
				'state', 'a.`state`',
				'created_by', 'a.`created_by`',
				'nome', 'a.`nome`',
				'valor', 'a.`valor`',
				'imagem1', 'a.`imagem1`',
				'legenda_img1', 'a.`legenda_img1`',
				'imagem2', 'a.`imagem2`',
				'legenda_img2', 'a.`legenda_img2`',
				'imagem3', 'a.`imagem3`',
				'legenda_img3', 'a.`legenda_img3`',
				'imagem4', 'a.`imagem4`',
				'legenda_img4', 'a.`legenda_img4`',
				'metragem', 'a.`metragem`',
				'num_quartos', 'a.`num_quartos`',
				'num_vagas', 'a.`num_vagas`',
				'etapa_obra', 'a.`etapa_obra`',
				'etapa_negocio', 'a.`etapa_negocio`',
				'data_lancamento', 'a.`data_lancamento`',
				'telefone', 'a.`telefone`',
				'descricao', 'a.`descricao`',
				'construtora', 'a.`construtora`',
				'imobiliaria', 'a.`imobiliaria`',
				'imobiliaria2', 'a.`imobiliaria2`',
				'caracteristicas', 'a.`caracteristicas`',
			);
		}

		parent::__construct($config);
	}

	/**
	 * Method to auto-populate the model state.
	 *
	 * Note. Calling getState in this method will result in recursion.
	 *
	 * @param   string  $ordering   Elements order
	 * @param   string  $direction  Order direction
	 *
	 * @return void
	 *
	 * @throws Exception
	 */
	protected function populateState($ordering = null, $direction = null)
	{
		// Initialise variables.
		$app = JFactory::getApplication('administrator');

		// Load the filter state.
		$search = $app->getUserStateFromRequest($this->context . '.filter.search', 'filter_search');
		$this->setState('filter.search', $search);

		$published = $app->getUserStateFromRequest($this->context . '.filter.state', 'filter_published', '', 'string');
		$this->setState('filter.state', $published);
		// Filtering num_quartos
		$this->setState('filter.num_quartos', $app->getUserStateFromRequest($this->context.'.filter.num_quartos', 'filter_num_quartos', '', 'string'));

		// Filtering num_vagas
		$this->setState('filter.num_vagas', $app->getUserStateFromRequest($this->context.'.filter.num_vagas', 'filter_num_vagas', '', 'string'));

		// Filtering etapa_obra
		$this->setState('filter.etapa_obra', $app->getUserStateFromRequest($this->context.'.filter.etapa_obra', 'filter_etapa_obra', '', 'string'));

		// Filtering etapa_negocio
		$this->setState('filter.etapa_negocio', $app->getUserStateFromRequest($this->context.'.filter.etapa_negocio', 'filter_etapa_negocio', '', 'string'));

		// Filtering data_lancamento
		$this->setState('filter.data_lancamento.from', $app->getUserStateFromRequest($this->context.'.filter.data_lancamento.from', 'filter_from_data_lancamento', '', 'string'));
		$this->setState('filter.data_lancamento.to', $app->getUserStateFromRequest($this->context.'.filter.data_lancamento.to', 'filter_to_data_lancamento', '', 'string'));

		// Filtering construtora
		$this->setState('filter.construtora', $app->getUserStateFromRequest($this->context.'.filter.construtora', 'filter_construtora', '', 'string'));

		// Filtering imobiliaria
		$this->setState('filter.imobiliaria', $app->getUserStateFromRequest($this->context.'.filter.imobiliaria', 'filter_imobiliaria', '', 'string'));

		// Filtering imobiliaria2
		$this->setState('filter.imobiliaria2', $app->getUserStateFromRequest($this->context.'.filter.imobiliaria2', 'filter_imobiliaria2', '', 'string'));


		// Load the parameters.
		$params = JComponentHelper::getParams('com_localize_imovel');
		$this->setState('params', $params);

		// List state information.
		parent::populateState('a.nome', 'asc');
	}

	/**
	 * Method to get a store id based on model configuration state.
	 *
	 * This is necessary because the model is used by the component and
	 * different modules that might need different sets of data or different
	 * ordering requirements.
	 *
	 * @param   string  $id  A prefix for the store id.
	 *
	 * @return   string A store id.
	 *
	 * @since    1.6
	 */
	protected function getStoreId($id = '')
	{
		// Compile the store id.
		$id .= ':' . $this->getState('filter.search');
		$id .= ':' . $this->getState('filter.state');

		return parent::getStoreId($id);
	}

	/**
	 * Build an SQL query to load the list data.
	 *
	 * @return   JDatabaseQuery
	 *
	 * @since    1.6
	 */
	protected function getListQuery()
	{
		// Create a new query object.
		$db    = $this->getDbo();
		$query = $db->getQuery(true);

		// Select the required fields from the table.
		$query->select(
			$this->getState(
				'list.select', 'DISTINCT a.*'
			)
		);
		$query->from('`#__localize_imovel` AS a');

		// Join over the users for the checked out user
		$query->select("uc.name AS editor");
		$query->join("LEFT", "#__users AS uc ON uc.id=a.checked_out");

		// Join over the user field 'created_by'
		$query->select('`created_by`.name AS `created_by`');
		$query->join('LEFT', '#__users AS `created_by` ON `created_by`.id = a.`created_by`');
		// Join over the foreign key 'construtora'
		$query->select('#__localize_imovel_2165642.`nome` AS imveis_nome_2165642');
		$query->join('LEFT', '#__localize_imovel AS #__localize_imovel_2165642 ON #__localize_imovel_2165642.`id` = a.`construtora`');
		// Join over the foreign key 'imobiliaria'
		$query->select('#__localize_imovel_2165643.`id` AS imveis_id_2165643');
		$query->join('LEFT', '#__localize_imovel AS #__localize_imovel_2165643 ON #__localize_imovel_2165643.`construtora` = a.`imobiliaria`');
		// Join over the foreign key 'imobiliaria2'
		$query->select('#__localize_imovel_2165644.`id` AS imveis_id_2165644');
		$query->join('LEFT', '#__localize_imovel AS #__localize_imovel_2165644 ON #__localize_imovel_2165644.`construtora` = a.`imobiliaria2`');

		// Filter by published state
		$published = $this->getState('filter.state');

		if (is_numeric($published))
		{
			$query->where('a.state = ' . (int) $published);
		}
		elseif ($published === '')
		{
			$query->where('(a.state IN (0, 1))');
		}

		// Filter by search in title
		$search = $this->getState('filter.search');

		if (!empty($search))
		{
			if (stripos($search, 'id:') === 0)
			{
				$query->where('a.id = ' . (int) substr($search, 3));
			}
			else
			{
				$search = $db->Quote('%' . $db->escape($search, true) . '%');
				$query->where('( a.`nome` LIKE ' . $search . '  OR  a.`valor` LIKE ' . $search . '  OR  a.`metragem` LIKE ' . $search . '  OR  a.`num_quartos` LIKE ' . $search . '  OR  a.`num_vagas` LIKE ' . $search . '  OR  a.`etapa_obra` LIKE ' . $search . '  OR  a.`data_lancamento` LIKE ' . $search . '  OR  a.`construtora` LIKE ' . $search . '  OR  a.`imobiliaria` LIKE ' . $search . '  OR  a.`imobiliaria2` LIKE ' . $search . ' )');
			}
		}


		//Filtering num_quartos
		$filter_num_quartos = $this->state->get("filter.num_quartos");
		if ($filter_num_quartos) {
			$query->where("a.`num_quartos` = '".$db->escape($filter_num_quartos)."'");
		}

		//Filtering num_vagas
		$filter_num_vagas = $this->state->get("filter.num_vagas");
		if ($filter_num_vagas) {
			$query->where("a.`num_vagas` = '".$db->escape($filter_num_vagas)."'");
		}

		//Filtering etapa_obra
		$filter_etapa_obra = $this->state->get("filter.etapa_obra");
		if ($filter_etapa_obra) {
			$query->where("a.`etapa_obra` = '".$db->escape($filter_etapa_obra)."'");
		}

		//Filtering etapa_negocio
		$filter_etapa_negocio = $this->state->get("filter.etapa_negocio");
		if ($filter_etapa_negocio) {
			$query->where("a.`etapa_negocio` = '".$db->escape($filter_etapa_negocio)."'");
		}

		//Filtering data_lancamento
		$filter_data_lancamento_from = $this->state->get("filter.data_lancamento.from");
		if ($filter_data_lancamento_from) {
			$query->where("a.`data_lancamento` >= '".$db->escape($filter_data_lancamento_from)."'");
		}
		$filter_data_lancamento_to = $this->state->get("filter.data_lancamento.to");
		if ($filter_data_lancamento_to) {
			$query->where("a.`data_lancamento` <= '".$db->escape($filter_data_lancamento_to)."'");
		}

		//Filtering construtora
		$filter_construtora = $this->state->get("filter.construtora");
		if ($filter_construtora) {
			$query->where("FIND_IN_SET('" . $db->escape($filter_construtora) . "',a.construtora)");
		}

		//Filtering imobiliaria
		$filter_imobiliaria = $this->state->get("filter.imobiliaria");
		if ($filter_imobiliaria) {
			$query->where("a.`imobiliaria` = '".$db->escape($filter_imobiliaria)."'");
		}

		//Filtering imobiliaria2
		$filter_imobiliaria2 = $this->state->get("filter.imobiliaria2");
		if ($filter_imobiliaria2) {
			$query->where("a.`imobiliaria2` = '".$db->escape($filter_imobiliaria2)."'");
		}
		// Add the list ordering clause.
		$orderCol  = $this->state->get('list.ordering');
		$orderDirn = $this->state->get('list.direction');

		if ($orderCol && $orderDirn)
		{
			$query->order($db->escape($orderCol . ' ' . $orderDirn));
		}

		return $query;
	}

	/**
	 * Get an array of data items
	 *
	 * @return mixed Array of data items on success, false on failure.
	 */
	public function getItems()
	{
		$items = parent::getItems();

		foreach ($items as $oneItem) {
					$oneItem->num_quartos = JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_NUM_QUARTOS_OPTION_' . strtoupper($oneItem->num_quartos));
					$oneItem->num_vagas = JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_NUM_VAGAS_OPTION_' . strtoupper($oneItem->num_vagas));
					$oneItem->etapa_obra = JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_ETAPA_OBRA_OPTION_' . strtoupper($oneItem->etapa_obra));
					$oneItem->etapa_negocio = JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_ETAPA_NEGOCIO_OPTION_' . strtoupper($oneItem->etapa_negocio));

			if (isset($oneItem->construtora)) {
				$values = explode(',', $oneItem->construtora);

				$textValue = array();
				foreach ($values as $value){
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$query
							->select($db->quoteName('nome'))
							->from('`#__localize_imovel`')
							->where($db->quoteName('id') . ' = '. $db->quote($db->escape($value)));
					$db->setQuery($query);
					$results = $db->loadObject();
					if ($results) {
						$textValue[] = $results->nome;
					}
				}

			$oneItem->construtora = !empty($textValue) ? implode(', ', $textValue) : $oneItem->construtora;

			}

			if (isset($oneItem->imobiliaria)) {
				$values = explode(',', $oneItem->imobiliaria);

				$textValue = array();
				foreach ($values as $value){
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$query
							->select($db->quoteName('id'))
							->from('`#__localize_imovel`')
							->where($db->quoteName('construtora') . ' = '. $db->quote($db->escape($value)));
					$db->setQuery($query);
					$results = $db->loadObject();
					if ($results) {
						$textValue[] = $results->id;
					}
				}

			$oneItem->imobiliaria = !empty($textValue) ? implode(', ', $textValue) : $oneItem->imobiliaria;

			}

			if (isset($oneItem->imobiliaria2)) {
				$values = explode(',', $oneItem->imobiliaria2);

				$textValue = array();
				foreach ($values as $value){
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$query
							->select($db->quoteName('id'))
							->from('`#__localize_imovel`')
							->where($db->quoteName('construtora') . ' = '. $db->quote($db->escape($value)));
					$db->setQuery($query);
					$results = $db->loadObject();
					if ($results) {
						$textValue[] = $results->id;
					}
				}

			$oneItem->imobiliaria2 = !empty($textValue) ? implode(', ', $textValue) : $oneItem->imobiliaria2;

			}

			if ( isset($oneItem->caracteristicas) ) {
				// Catch the item tags (string with ',' coma glue)
				$tags = explode(",",$oneItem->caracteristicas);

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
					$oneItem->caracteristicas = !empty($namedTags) ? implode(', ',$namedTags) : $oneItem->caracteristicas;
				}
		}
		return $items;
	}
}
