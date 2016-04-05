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
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
JHtml::_('formbehavior.chosen', 'select');
JHtml::_('behavior.keepalive');

// Import CSS
$document = JFactory::getDocument();
$document->addStyleSheet('media/com_localize_imovel/css/localize_imovel.css');
?>
<script type="text/javascript">
	js = jQuery.noConflict();
	js(document).ready(function () {
		
	js('input:hidden.construtora').each(function(){
		var name = js(this).attr('name');
		if(name.indexOf('construtorahidden')){
			js('#jform_construtora option[value="'+js(this).val()+'"]').attr('selected',true);
		}
	});
	js("#jform_construtora").trigger("liszt:updated");
	js('input:hidden.imobiliaria').each(function(){
		var name = js(this).attr('name');
		if(name.indexOf('imobiliariahidden')){
			js('#jform_imobiliaria option[value="'+js(this).val()+'"]').attr('selected',true);
		}
	});
	js("#jform_imobiliaria").trigger("liszt:updated");
	js('input:hidden.imobiliaria2').each(function(){
		var name = js(this).attr('name');
		if(name.indexOf('imobiliaria2hidden')){
			js('#jform_imobiliaria2 option[value="'+js(this).val()+'"]').attr('selected',true);
		}
	});
	js("#jform_imobiliaria2").trigger("liszt:updated");
	});

	Joomla.submitbutton = function (task) {
		if (task == 'imvel.cancel') {
			Joomla.submitform(task, document.getElementById('imvel-form'));
		}
		else {
			
			if (task != 'imvel.cancel' && document.formvalidator.isValid(document.id('imvel-form'))) {
				
	if(js('#jform_construtora option:selected').length == 0){
		js("#jform_construtora option[value=0]").attr('selected','selected');
	}
				Joomla.submitform(task, document.getElementById('imvel-form'));
			}
			else {
				alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED')); ?>');
			}
		}
	}
</script>

<form
	action="<?php echo JRoute::_('index.php?option=com_localize_imovel&layout=edit&id=' . (int) $this->item->id); ?>"
	method="post" enctype="multipart/form-data" name="adminForm" id="imvel-form" class="form-validate">

	<div class="form-horizontal">
		<?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'general')); ?>

		<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'general', JText::_('COM_LOCALIZE_IMOVEL_TITLE_IMVEL', true)); ?>
		<div class="row-fluid">
			<div class="span10 form-horizontal">
				<fieldset class="adminform">

									<input type="hidden" name="jform[id]" value="<?php echo $this->item->id; ?>" />
				<input type="hidden" name="jform[ordering]" value="<?php echo $this->item->ordering; ?>" />
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('state'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('state'); ?></div>
			</div>
				<input type="hidden" name="jform[checked_out]" value="<?php echo $this->item->checked_out; ?>" />
				<input type="hidden" name="jform[checked_out_time]" value="<?php echo $this->item->checked_out_time; ?>" />
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('created_by'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('created_by'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('nome'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('nome'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('valor'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('valor'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('imagem1'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('imagem1'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('legenda_img1'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('legenda_img1'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('imagem2'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('imagem2'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('legenda_img2'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('legenda_img2'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('imagem3'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('imagem3'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('legenda_img3'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('legenda_img3'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('imagem4'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('imagem4'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('legenda_img4'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('legenda_img4'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('metragem'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('metragem'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('num_quartos'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('num_quartos'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('num_banheiros'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('num_banheiros'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('num_vagas'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('num_vagas'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('etapa_obra'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('etapa_obra'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('etapa_negocio'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('etapa_negocio'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('data_lancamento'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('data_lancamento'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('telefone'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('telefone'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('descricao'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('descricao'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('construtora'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('construtora'); ?></div>
			</div>

			<?php
				foreach((array)$this->item->construtora as $value): 
					if(!is_array($value)):
						echo '<input type="hidden" class="construtora" name="jform[construtorahidden]['.$value.']" value="'.$value.'" />';
					endif;
				endforeach;
			?>			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('imobiliaria'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('imobiliaria'); ?></div>
			</div>

			<?php
				foreach((array)$this->item->imobiliaria as $value): 
					if(!is_array($value)):
						echo '<input type="hidden" class="imobiliaria" name="jform[imobiliariahidden]['.$value.']" value="'.$value.'" />';
					endif;
				endforeach;
			?>			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('imobiliaria2'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('imobiliaria2'); ?></div>
			</div>

			<?php
				foreach((array)$this->item->imobiliaria2 as $value): 
					if(!is_array($value)):
						echo '<input type="hidden" class="imobiliaria2" name="jform[imobiliaria2hidden]['.$value.']" value="'.$value.'" />';
					endif;
				endforeach;
			?>			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('caracteristicas'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('caracteristicas'); ?></div>
			</div>


				</fieldset>
			</div>
		</div>
		<?php echo JHtml::_('bootstrap.endTab'); ?>

		<?php if (JFactory::getUser()->authorise('core.admin','localize_imovel')) : ?>
	<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'permissions', JText::_('JGLOBAL_ACTION_PERMISSIONS_LABEL', true)); ?>
		<?php echo $this->form->getInput('rules'); ?>
	<?php echo JHtml::_('bootstrap.endTab'); ?>
<?php endif; ?>

		<?php echo JHtml::_('bootstrap.endTabSet'); ?>

		<input type="hidden" name="task" value=""/>
		<?php echo JHtml::_('form.token'); ?>

	</div>
</form>
