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

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
JHtml::_('bootstrap.tooltip');
JHtml::_('behavior.multiselect');
JHtml::_('formbehavior.chosen', 'select');

$user       = JFactory::getUser();
$userId     = $user->get('id');
$listOrder  = $this->state->get('list.ordering');
$listDirn   = $this->state->get('list.direction');
$canCreate  = $user->authorise('core.create', 'com_localize_imovel');
$canEdit    = $user->authorise('core.edit', 'com_localize_imovel');
$canCheckin = $user->authorise('core.manage', 'com_localize_imovel');
$canChange  = $user->authorise('core.edit.state', 'com_localize_imovel');
$canDelete  = $user->authorise('core.delete', 'com_localize_imovel');
?>

<form action="<?php echo JRoute::_('index.php?option=com_localize_imovel&view=imveis'); ?>" method="post"
      name="adminForm" id="adminForm">

	<?php echo JLayoutHelper::render('default_filter', array('view' => $this), dirname(__FILE__)); ?>
	<table class="table table-striped" id="imvelList">
		<thead>
		<tr>
			<?php if (isset($this->items[0]->state)): ?>
				<th width="5%">
	<?php echo JHtml::_('grid.sort', 'JPUBLISHED', 'a.state', $listDirn, $listOrder); ?>
</th>
			<?php endif; ?>

							<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_LOCALIZE_IMOVEL_IMVEIS_CREATED_BY', 'a.created_by', $listDirn, $listOrder); ?>
				</th>
				<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_LOCALIZE_IMOVEL_IMVEIS_NOME', 'a.nome', $listDirn, $listOrder); ?>
				</th>
				<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_LOCALIZE_IMOVEL_IMVEIS_VALOR', 'a.valor', $listDirn, $listOrder); ?>
				</th>
				<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_LOCALIZE_IMOVEL_IMVEIS_METRAGEM', 'a.metragem', $listDirn, $listOrder); ?>
				</th>
				<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_LOCALIZE_IMOVEL_IMVEIS_NUM_QUARTOS', 'a.num_quartos', $listDirn, $listOrder); ?>
				</th>
				<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_LOCALIZE_IMOVEL_IMVEIS_NUM_VAGAS', 'a.num_vagas', $listDirn, $listOrder); ?>
				</th>
				<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_LOCALIZE_IMOVEL_IMVEIS_ETAPA_OBRA', 'a.etapa_obra', $listDirn, $listOrder); ?>
				</th>
				<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_LOCALIZE_IMOVEL_IMVEIS_ETAPA_NEGOCIO', 'a.etapa_negocio', $listDirn, $listOrder); ?>
				</th>
				<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_LOCALIZE_IMOVEL_IMVEIS_DATA_LANCAMENTO', 'a.data_lancamento', $listDirn, $listOrder); ?>
				</th>
				<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_LOCALIZE_IMOVEL_IMVEIS_CONSTRUTORA', 'a.construtora', $listDirn, $listOrder); ?>
				</th>
				<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_LOCALIZE_IMOVEL_IMVEIS_IMOBILIARIA', 'a.imobiliaria', $listDirn, $listOrder); ?>
				</th>
				<th class=''>
				<?php echo JHtml::_('grid.sort',  'COM_LOCALIZE_IMOVEL_IMVEIS_IMOBILIARIA2', 'a.imobiliaria2', $listDirn, $listOrder); ?>
				</th>


			<?php if (isset($this->items[0]->id)): ?>
				<th width="1%" class="nowrap center hidden-phone">
					<?php echo JHtml::_('grid.sort', 'JGRID_HEADING_ID', 'a.id', $listDirn, $listOrder); ?>
				</th>
			<?php endif; ?>

							<?php if ($canEdit || $canDelete): ?>
					<th class="center">
				<?php echo JText::_('COM_LOCALIZE_IMOVEL_IMVEIS_ACTIONS'); ?>
				</th>
				<?php endif; ?>

		</tr>
		</thead>
		<tfoot>
		<tr>
			<td colspan="<?php echo isset($this->items[0]) ? count(get_object_vars($this->items[0])) : 10; ?>">
				<?php echo $this->pagination->getListFooter(); ?>
			</td>
		</tr>
		</tfoot>
		<tbody>
		<?php foreach ($this->items as $i => $item) : ?>
			<?php $canEdit = $user->authorise('core.edit', 'com_localize_imovel'); ?>

							<?php if (!$canEdit && $user->authorise('core.edit.own', 'com_localize_imovel')): ?>
					<?php $canEdit = JFactory::getUser()->id == $item->created_by; ?>
				<?php endif; ?>

			<tr class="row<?php echo $i % 2; ?>">

				<?php if (isset($this->items[0]->state)) : ?>
					<?php $class = ($canEdit || $canChange) ? 'active' : 'disabled'; ?>
					<td class="center">
	<a class="btn btn-micro <?php echo $class; ?>" href="<?php echo ($canEdit || $canChange) ? JRoute::_('index.php?option=com_localize_imovel&task=imvel.publish&id=' . $item->id . '&state=' . (($item->state + 1) % 2), false, 2) : '#'; ?>">
		<?php if ($item->state == 1): ?>
			<i class="icon-publish"></i>
		<?php else: ?>
			<i class="icon-unpublish"></i>
		<?php endif; ?>
	</a>
</td>
				<?php endif; ?>

								<td>

							<?php echo JFactory::getUser($item->created_by)->name; ?>				</td>
				<td>
				<?php if (isset($item->checked_out) && $item->checked_out) : ?>
					<?php echo JHtml::_('jgrid.checkedout', $i, $item->editor, $item->checked_out_time, 'imveis.', $canCheckin); ?>
				<?php endif; ?>
				<a href="<?php echo JRoute::_('index.php?option=com_localize_imovel&view=imvel&id='.(int) $item->id); ?>">
				<?php echo $this->escape($item->nome); ?></a>
				</td>
				<td>

					<?php echo $item->valor; ?>
				</td>
				<td>

					<?php echo $item->metragem; ?>
				</td>
				<td>

					<?php echo $item->num_quartos; ?>
				</td>
				<td>

					<?php echo $item->num_vagas; ?>
				</td>
				<td>

					<?php echo $item->etapa_obra; ?>
				</td>
				<td>

					<?php echo $item->etapa_negocio; ?>
				</td>
				<td>

					<?php echo $item->data_lancamento; ?>
				</td>
				<td>

					<?php echo $item->construtora; ?>
				</td>
				<td>

					<?php echo $item->imobiliaria; ?>
				</td>
				<td>

					<?php echo $item->imobiliaria2; ?>
				</td>


				<?php if (isset($this->items[0]->id)): ?>
					<td class="center hidden-phone">
						<?php echo (int) $item->id; ?>
					</td>
				<?php endif; ?>

								<?php if ($canEdit || $canDelete): ?>
					<td class="center">
						<?php if ($canEdit): ?>
							<a href="<?php echo JRoute::_('index.php?option=com_localize_imovel&task=imvelform.edit&id=' . $item->id, false, 2); ?>" class="btn btn-mini" type="button"><i class="icon-edit" ></i></a>
						<?php endif; ?>
						<?php if ($canDelete): ?>
							<button data-item-id="<?php echo $item->id; ?>" class="btn btn-mini delete-button" type="button"><i class="icon-trash" ></i></button>
						<?php endif; ?>
					</td>
				<?php endif; ?>

			</tr>
		<?php endforeach; ?>
		</tbody>
	</table>

	<?php if ($canCreate) : ?>
		<a href="<?php echo JRoute::_('index.php?option=com_localize_imovel&task=imvelform.edit&id=0', false, 2); ?>"
		   class="btn btn-success btn-small"><i
				class="icon-plus"></i>
			<?php echo JText::_('COM_LOCALIZE_IMOVEL_ADD_ITEM'); ?></a>
	<?php endif; ?>

	<input type="hidden" name="task" value=""/>
	<input type="hidden" name="boxchecked" value="0"/>
	<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>"/>
	<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>"/>
	<?php echo JHtml::_('form.token'); ?>
</form>

<script type="text/javascript">

	jQuery(document).ready(function () {
		jQuery('.delete-button').click(deleteItem);
	});

	function deleteItem() {
		var item_id = jQuery(this).attr('data-item-id');
		<?php if($canDelete) : ?>
		if (confirm("<?php echo JText::_('COM_LOCALIZE_IMOVEL_DELETE_MESSAGE'); ?>")) {
			window.location.href = '<?php echo JRoute::_('index.php?option=com_localize_imovel&task=imvelform.remove&id=', false, 2) ?>' + item_id;
		}
		<?php endif; ?>
	}
</script>


