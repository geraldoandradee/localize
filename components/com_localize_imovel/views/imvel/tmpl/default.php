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

$canEdit = JFactory::getUser()->authorise('core.edit', 'com_localize_imovel.' . $this->item->id);
if (!$canEdit && JFactory::getUser()->authorise('core.edit.own', 'com_localize_imovel' . $this->item->id)) {
	$canEdit = JFactory::getUser()->id == $this->item->created_by;
}
?>
<?php if ($this->item) : ?>

	<div class="item_fields">
		<table class="table">
			<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_ID'); ?></th>
			<td><?php echo $this->item->id; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_STATE'); ?></th>
			<td>
			<i class="icon-<?php echo ($this->item->state == 1) ? 'publish' : 'unpublish'; ?>"></i></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_CREATED_BY'); ?></th>
			<td><?php echo $this->item->created_by_name; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_NOME'); ?></th>
			<td><?php echo $this->item->nome; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_VALOR'); ?></th>
			<td><?php echo $this->item->valor; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_IMAGEM1'); ?></th>
			<td><?php echo $this->item->imagem1; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_LEGENDA_IMG1'); ?></th>
			<td><?php echo $this->item->legenda_img1; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_IMAGEM2'); ?></th>
			<td><?php echo $this->item->imagem2; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_LEGENDA_IMG2'); ?></th>
			<td><?php echo $this->item->legenda_img2; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_IMAGEM3'); ?></th>
			<td><?php echo $this->item->imagem3; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_LEGENDA_IMG3'); ?></th>
			<td><?php echo $this->item->legenda_img3; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_IMAGEM4'); ?></th>
			<td><?php echo $this->item->imagem4; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_LEGENDA_IMG4'); ?></th>
			<td><?php echo $this->item->legenda_img4; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_METRAGEM'); ?></th>
			<td><?php echo $this->item->metragem; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_NUM_QUARTOS'); ?></th>
			<td><?php echo $this->item->num_quartos; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_NUM_VAGAS'); ?></th>
			<td><?php echo $this->item->num_vagas; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_ETAPA_OBRA'); ?></th>
			<td><?php echo $this->item->etapa_obra; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_ETAPA_NEGOCIO'); ?></th>
			<td><?php echo $this->item->etapa_negocio; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_DATA_LANCAMENTO'); ?></th>
			<td><?php echo $this->item->data_lancamento; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_TELEFONE'); ?></th>
			<td><?php echo $this->item->telefone; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_DESCRICAO'); ?></th>
			<td><?php echo $this->item->descricao; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_CONSTRUTORA'); ?></th>
			<td><?php echo $this->item->construtora; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_IMOBILIARIA'); ?></th>
			<td><?php echo $this->item->imobiliaria; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_IMOBILIARIA2'); ?></th>
			<td><?php echo $this->item->imobiliaria2; ?></td>
</tr>
<tr>
			<th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_CARACTERISTICAS'); ?></th>
			<td><?php echo $this->item->caracteristicas; ?></td>
</tr>

		</table>
	</div>
	<?php if($canEdit && $this->item->checked_out == 0): ?>
		<a class="btn" href="<?php echo JRoute::_('index.php?option=com_localize_imovel&task=imvel.edit&id='.$this->item->id); ?>"><?php echo JText::_("COM_LOCALIZE_IMOVEL_EDIT_ITEM"); ?></a>
	<?php endif; ?>
								<?php if(JFactory::getUser()->authorise('core.delete','com_localize_imovel.imvel.'.$this->item->id)):?>
									<a class="btn" href="<?php echo JRoute::_('index.php?option=com_localize_imovel&task=imvel.remove&id=' . $this->item->id, false, 2); ?>"><?php echo JText::_("COM_LOCALIZE_IMOVEL_DELETE_ITEM"); ?></a>
								<?php endif; ?>
	<?php
else:
	echo JText::_('COM_LOCALIZE_IMOVEL_ITEM_NOT_LOADED');
endif;
