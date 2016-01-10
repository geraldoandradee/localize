<?php

/**
 * @version    CVS: 1.0.0
 * @package    Com_Localize_imovel
 * @author     Victor Bento <vgb.info@gmail.com>
 * @copyright  Copyright (C) 2015. Todos os direitos reservados.
 * @license    GNU General Public License versão 2 ou posterior; consulte o arquivo License. txt
 */
// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.view');

/**
 * View class for a list of Localize_imovel.
 *
 * @since  1.6
 */
class Localize_imovelViewImveis extends JViewLegacy
{
	protected $items;

	protected $pagination;

	protected $state;

	/**
	 * Display the view
	 *
	 * @param   string  $tpl  Template name
	 *
	 * @return void
	 *
	 * @throws Exception
	 */
	public function display($tpl = null)
	{
		$this->state = $this->get('State');
		$this->items = $this->get('Items');
		$this->pagination = $this->get('Pagination');

		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			throw new Exception(implode("\n", $errors));
		}

		Localize_imovelHelper::addSubmenu('imveis');

		$this->addToolbar();

		$this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
	}

	/**
	 * Add the page title and toolbar.
	 *
	 * @return void
	 *
	 * @since    1.6
	 */
	protected function addToolbar()
	{
		require_once JPATH_COMPONENT . '/helpers/localize_imovel.php';

		$state = $this->get('State');
		$canDo = Localize_imovelHelper::getActions($state->get('filter.category_id'));

		JToolBarHelper::title(JText::_('COM_LOCALIZE_IMOVEL_TITLE_IMVEIS'), 'imveis.png');

		// Check if the form exists before showing the add/edit buttons
		$formPath = JPATH_COMPONENT_ADMINISTRATOR . '/views/imvel';

		if (file_exists($formPath))
		{
			if ($canDo->get('core.create'))
			{
				JToolBarHelper::addNew('imvel.add', 'JTOOLBAR_NEW');
				JToolbarHelper::custom('imveis.duplicate', 'copy.png', 'copy_f2.png', 'JTOOLBAR_DUPLICATE', true);
			}

			if ($canDo->get('core.edit') && isset($this->items[0]))
			{
				JToolBarHelper::editList('imvel.edit', 'JTOOLBAR_EDIT');
			}
		}

		if ($canDo->get('core.edit.state'))
		{
			if (isset($this->items[0]->state))
			{
				JToolBarHelper::divider();
				JToolBarHelper::custom('imveis.publish', 'publish.png', 'publish_f2.png', 'JTOOLBAR_PUBLISH', true);
				JToolBarHelper::custom('imveis.unpublish', 'unpublish.png', 'unpublish_f2.png', 'JTOOLBAR_UNPUBLISH', true);
			}
			elseif (isset($this->items[0]))
			{
				// If this component does not use state then show a direct delete button as we can not trash
				JToolBarHelper::deleteList('', 'imveis.delete', 'JTOOLBAR_DELETE');
			}

			if (isset($this->items[0]->state))
			{
				JToolBarHelper::divider();
				JToolBarHelper::archiveList('imveis.archive', 'JTOOLBAR_ARCHIVE');
			}

			if (isset($this->items[0]->checked_out))
			{
				JToolBarHelper::custom('imveis.checkin', 'checkin.png', 'checkin_f2.png', 'JTOOLBAR_CHECKIN', true);
			}
		}

		// Show trash and delete for components that uses the state field
		if (isset($this->items[0]->state))
		{
			if ($state->get('filter.state') == -2 && $canDo->get('core.delete'))
			{
				JToolBarHelper::deleteList('', 'imveis.delete', 'JTOOLBAR_EMPTY_TRASH');
				JToolBarHelper::divider();
			}
			elseif ($canDo->get('core.edit.state'))
			{
				JToolBarHelper::trash('imveis.trash', 'JTOOLBAR_TRASH');
				JToolBarHelper::divider();
			}
		}

		if ($canDo->get('core.admin'))
		{
			JToolBarHelper::preferences('com_localize_imovel');
		}

		// Set sidebar action - New in 3.0
		JHtmlSidebar::setAction('index.php?option=com_localize_imovel&view=imveis');

		$this->extra_sidebar = '';
		JHtmlSidebar::addFilter(

			JText::_('JOPTION_SELECT_PUBLISHED'),

			'filter_published',

			JHtml::_('select.options', JHtml::_('jgrid.publishedOptions'), "value", "text", $this->state->get('filter.state'), true)

		);
		//Filter for the field num_quartos
		$select_label = JText::sprintf('COM_LOCALIZE_IMOVEL_FILTER_SELECT_LABEL', 'Número de quartos');
		$options = array();
		$options[0] = new stdClass();
		$options[0]->value = "1";
		$options[0]->text = "1";
		$options[1] = new stdClass();
		$options[1]->value = "2";
		$options[1]->text = "2";
		$options[2] = new stdClass();
		$options[2]->value = "3";
		$options[2]->text = "3";
		$options[3] = new stdClass();
		$options[3]->value = "4";
		$options[3]->text = "4";
		$options[4] = new stdClass();
		$options[4]->value = "5";
		$options[4]->text = "5";
		JHtmlSidebar::addFilter(
			$select_label,
			'filter_num_quartos',
			JHtml::_('select.options', $options , "value", "text", $this->state->get('filter.num_quartos'), true)
		);

		//Filter for the field num_vagas
		$select_label = JText::sprintf('COM_LOCALIZE_IMOVEL_FILTER_SELECT_LABEL', 'Número de vagas');
		$options = array();
		$options[0] = new stdClass();
		$options[0]->value = "1";
		$options[0]->text = "1";
		$options[1] = new stdClass();
		$options[1]->value = "2";
		$options[1]->text = "2";
		$options[2] = new stdClass();
		$options[2]->value = "3";
		$options[2]->text = "3";
		$options[3] = new stdClass();
		$options[3]->value = "4";
		$options[3]->text = "4";
		$options[4] = new stdClass();
		$options[4]->value = "5";
		$options[4]->text = "5";
		JHtmlSidebar::addFilter(
			$select_label,
			'filter_num_vagas',
			JHtml::_('select.options', $options , "value", "text", $this->state->get('filter.num_vagas'), true)
		);

		//Filter for the field etapa_obra
		$select_label = JText::sprintf('COM_LOCALIZE_IMOVEL_FILTER_SELECT_LABEL', 'Etapa da obra');
		$options = array();
		$options[0] = new stdClass();
		$options[0]->value = "1";
		$options[0]->text = "Planta";
		$options[1] = new stdClass();
		$options[1]->value = "2";
		$options[1]->text = "Em construção";
		$options[2] = new stdClass();
		$options[2]->value = "3";
		$options[2]->text = "Finalizado";
		$options[3] = new stdClass();
		$options[3]->value = "4";
		$options[3]->text = "Entregue";
		JHtmlSidebar::addFilter(
			$select_label,
			'filter_etapa_obra',
			JHtml::_('select.options', $options , "value", "text", $this->state->get('filter.etapa_obra'), true)
		);

		//Filter for the field etapa_negocio
		$select_label = JText::sprintf('COM_LOCALIZE_IMOVEL_FILTER_SELECT_LABEL', 'Negociar');
		$options = array();
		$options[0] = new stdClass();
		$options[0]->value = "1";
		$options[0]->text = "Comprar";
		$options[1] = new stdClass();
		$options[1]->value = "2";
		$options[1]->text = "Alugar";
		JHtmlSidebar::addFilter(
			$select_label,
			'filter_etapa_negocio',
			JHtml::_('select.options', $options , "value", "text", $this->state->get('filter.etapa_negocio'), true)
		);

			//Filter for the field data_lancamento
		$this->extra_sidebar .= '<div class="other-filters">';
			$this->extra_sidebar .= '<small><label for="filter_from_data_lancamento">'. JText::sprintf('COM_LOCALIZE_IMOVEL_FROM_FILTER', 'Data de lançamento') .'</label></small>';
			$this->extra_sidebar .= JHtml::_('calendar', $this->state->get('filter.data_lancamento.from'), 'filter_from_data_lancamento', 'filter_from_data_lancamento', '%Y-%m-%d', array('style' => 'width:142px;', 'onchange' => 'this.form.submit();'));
			$this->extra_sidebar .= '<small><label for="filter_to_data_lancamento">'. JText::sprintf('COM_LOCALIZE_IMOVEL_TO_FILTER', 'Data de lançamento') .'</label></small>';
			$this->extra_sidebar .= JHtml::_('calendar', $this->state->get('filter.data_lancamento.to'), 'filter_to_data_lancamento', 'filter_to_data_lancamento', '%Y-%m-%d', array('style' => 'width:142px;', 'onchange'=> 'this.form.submit();'));
		$this->extra_sidebar .= '</div>';
			$this->extra_sidebar .= '<hr class="hr-condensed">';
                                                
        //Filter for the field construtora;
        jimport('joomla.form.form');
        $options = array();
        JForm::addFormPath(JPATH_COMPONENT . '/models/forms');
        $form = JForm::getInstance('com_localize_imovel.imvel', 'imvel');

        $field = $form->getField('construtora');

        $query = $form->getFieldAttribute('filter_construtora','query');
        $translate = $form->getFieldAttribute('filter_construtora','translate');
        $key = $form->getFieldAttribute('filter_construtora','key_field');
        $value = $form->getFieldAttribute('filter_construtora','value_field');

        // Get the database object.
        $db = JFactory::getDBO();

        // Set the query and get the result list.
        $db->setQuery($query);
        $items = $db->loadObjectlist();

        // Build the field options.
        if (!empty($items))
        {
            foreach ($items as $item)
            {
                if ($translate == true)
                {
                    $options[] = JHtml::_('select.option', $item->$key, JText::_($item->$value));
                }
                else
                {
                    $options[] = JHtml::_('select.option', $item->$key, $item->$value);
                }
            }
        }

        JHtmlSidebar::addFilter(
            '$Construtora',
            'filter_construtora',
            JHtml::_('select.options', $options, "value", "text", $this->state->get('filter.construtora')),
            true
        );                                                
        //Filter for the field imobiliaria;
        jimport('joomla.form.form');
        $options = array();
        JForm::addFormPath(JPATH_COMPONENT . '/models/forms');
        $form = JForm::getInstance('com_localize_imovel.imvel', 'imvel');

        $field = $form->getField('imobiliaria');

        $query = $form->getFieldAttribute('filter_imobiliaria','query');
        $translate = $form->getFieldAttribute('filter_imobiliaria','translate');
        $key = $form->getFieldAttribute('filter_imobiliaria','key_field');
        $value = $form->getFieldAttribute('filter_imobiliaria','value_field');

        // Get the database object.
        $db = JFactory::getDBO();

        // Set the query and get the result list.
        $db->setQuery($query);
        $items = $db->loadObjectlist();

        // Build the field options.
        if (!empty($items))
        {
            foreach ($items as $item)
            {
                if ($translate == true)
                {
                    $options[] = JHtml::_('select.option', $item->$key, JText::_($item->$value));
                }
                else
                {
                    $options[] = JHtml::_('select.option', $item->$key, $item->$value);
                }
            }
        }

        JHtmlSidebar::addFilter(
            '$Imobiliária',
            'filter_imobiliaria',
            JHtml::_('select.options', $options, "value", "text", $this->state->get('filter.imobiliaria')),
            true
        );                                                
        //Filter for the field imobiliaria2;
        jimport('joomla.form.form');
        $options = array();
        JForm::addFormPath(JPATH_COMPONENT . '/models/forms');
        $form = JForm::getInstance('com_localize_imovel.imvel', 'imvel');

        $field = $form->getField('imobiliaria2');

        $query = $form->getFieldAttribute('filter_imobiliaria2','query');
        $translate = $form->getFieldAttribute('filter_imobiliaria2','translate');
        $key = $form->getFieldAttribute('filter_imobiliaria2','key_field');
        $value = $form->getFieldAttribute('filter_imobiliaria2','value_field');

        // Get the database object.
        $db = JFactory::getDBO();

        // Set the query and get the result list.
        $db->setQuery($query);
        $items = $db->loadObjectlist();

        // Build the field options.
        if (!empty($items))
        {
            foreach ($items as $item)
            {
                if ($translate == true)
                {
                    $options[] = JHtml::_('select.option', $item->$key, JText::_($item->$value));
                }
                else
                {
                    $options[] = JHtml::_('select.option', $item->$key, $item->$value);
                }
            }
        }

        JHtmlSidebar::addFilter(
            '$Imobiliária 2',
            'filter_imobiliaria2',
            JHtml::_('select.options', $options, "value", "text", $this->state->get('filter.imobiliaria2')),
            true
        );
	}

	/**
	 * Method to order fields 
	 *
	 * @return void 
	 */
	protected function getSortFields()
	{
		return array(
			'a.`id`' => JText::_('JGRID_HEADING_ID'),
			'a.`ordering`' => JText::_('JGRID_HEADING_ORDERING'),
			'a.`state`' => JText::_('JSTATUS'),
			'a.`created_by`' => JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_CREATED_BY'),
			'a.`nome`' => JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_NOME'),
			'a.`valor`' => JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_VALOR'),
			'a.`metragem`' => JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_METRAGEM'),
			'a.`num_quartos`' => JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_NUM_QUARTOS'),
			'a.`num_vagas`' => JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_NUM_VAGAS'),
			'a.`etapa_obra`' => JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_ETAPA_OBRA'),
			'a.`etapa_negocio`' => JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_ETAPA_NEGOCIO'),
			'a.`data_lancamento`' => JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_DATA_LANCAMENTO'),
			'a.`construtora`' => JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_CONSTRUTORA'),
			'a.`imobiliaria`' => JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_IMOBILIARIA'),
			'a.`imobiliaria2`' => JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_IMOBILIARIA2'),
		);
	}
}
