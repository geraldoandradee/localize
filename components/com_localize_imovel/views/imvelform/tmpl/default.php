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

JHtml::_('behavior.keepalive');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
JHtml::_('formbehavior.chosen', 'select');

// Load admin language file
$lang = JFactory::getLanguage();
$lang->load('com_localize_imovel', JPATH_SITE);
$doc = JFactory::getDocument();
$doc->addScript(JUri::base() . '/media/com_localize_imovel/js/form.js');

/*
if($this->item->state == 1){
	$state_string = 'Publish';
	$state_value = 1;
} else {
	$state_string = 'Unpublish';
	$state_value = 0;
}
if($this->item->id) {
	$canState = JFactory::getUser()->authorise('core.edit.state','com_localize_imovel.imvel');
} else {
	$canState = JFactory::getUser()->authorise('core.edit.state','com_localize_imovel.imvel.'.$this->item->id);
}*/
?>
<script type="text/javascript">
	if (jQuery === 'undefined') {
		document.addEventListener("DOMContentLoaded", function (event) {
			jQuery('#form-imvel').submit(function (event) {
				
			});

			
			jQuery('input:hidden.construtora').each(function(){
				var name = jQuery(this).attr('name');
				if(name.indexOf('construtorahidden')){
					jQuery('#jform_construtora option[value="' + jQuery(this).val() + '"]').attr('selected',true);
				}
			});
	jQuery('#jform_construtora').change(function(){
		if(jQuery('#jform_construtora option:selected').length == 0){
		jQuery("#jform_construtora option[value=0]").attr('selected', 'selected');
		}
	});
					jQuery("#jform_construtora").trigger("liszt:updated");
			jQuery('input:hidden.imobiliaria').each(function(){
				var name = jQuery(this).attr('name');
				if(name.indexOf('imobiliariahidden')){
					jQuery('#jform_imobiliaria option[value="' + jQuery(this).val() + '"]').attr('selected',true);
				}
			});
					jQuery("#jform_imobiliaria").trigger("liszt:updated");
			jQuery('input:hidden.imobiliaria2').each(function(){
				var name = jQuery(this).attr('name');
				if(name.indexOf('imobiliaria2hidden')){
					jQuery('#jform_imobiliaria2 option[value="' + jQuery(this).val() + '"]').attr('selected',true);
				}
			});
					jQuery("#jform_imobiliaria2").trigger("liszt:updated");
		});
	} else {
		jQuery(document).ready(function () {
			jQuery('#form-imvel').submit(function (event) {
				
			});

			
			jQuery('input:hidden.construtora').each(function(){
				var name = jQuery(this).attr('name');
				if(name.indexOf('construtorahidden')){
					jQuery('#jform_construtora option[value="' + jQuery(this).val() + '"]').attr('selected',true);
				}
			});
	jQuery('#jform_construtora').change(function(){
		if(jQuery('#jform_construtora option:selected').length == 0){
		jQuery("#jform_construtora option[value=0]").attr('selected', 'selected');
		}
	});
					jQuery("#jform_construtora").trigger("liszt:updated");
			jQuery('input:hidden.imobiliaria').each(function(){
				var name = jQuery(this).attr('name');
				if(name.indexOf('imobiliariahidden')){
					jQuery('#jform_imobiliaria option[value="' + jQuery(this).val() + '"]').attr('selected',true);
				}
			});
					jQuery("#jform_imobiliaria").trigger("liszt:updated");
			jQuery('input:hidden.imobiliaria2').each(function(){
				var name = jQuery(this).attr('name');
				if(name.indexOf('imobiliaria2hidden')){
					jQuery('#jform_imobiliaria2 option[value="' + jQuery(this).val() + '"]').attr('selected',true);
				}
			});
					jQuery("#jform_imobiliaria2").trigger("liszt:updated");
		});
	}
</script>

<div class="imvel-edit front-end-edit">
	<?php if (!empty($this->item->id)): ?>
		<h1>Edit <?php echo $this->item->id; ?></h1>
	<?php else: ?>
		<h1>Add</h1>
	<?php endif; ?>

	<form id="form-imvel"
		  action="<?php echo JRoute::_('index.php?option=com_localize_imovel&task=imvel.save'); ?>"
		  method="post" class="form-validate form-horizontal" enctype="multipart/form-data">
		
	<input type="hidden" name="jform[id]" value="<?php echo $this->item->id; ?>" />

	<input type="hidden" name="jform[ordering]" value="<?php echo $this->item->ordering; ?>" />

	<div class="control-group">
		<?php if(!$canState): ?>
			<div class="control-label"><?php echo $this->form->getLabel('state'); ?></div>
			<div class="controls"><?php echo $state_string; ?></div>
			<input type="hidden" name="jform[state]" value="<?php echo $state_value; ?>" />
		<?php else: ?>
			<div class="control-label"><?php echo $this->form->getLabel('state'); ?></div>
			<div class="controls"><?php echo $this->form->getInput('state'); ?></div>
		<?php endif; ?>
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
	<?php foreach((array)$this->item->construtora as $value): ?>
		<?php if(!is_array($value)): ?>
			<input type="hidden" class="construtora" name="jform[construtorahidden][<?php echo $value; ?>]" value="<?php echo $value; ?>" />
		<?php endif; ?>
	<?php endforeach; ?>
	<div class="control-group">
		<div class="control-label"><?php echo $this->form->getLabel('imobiliaria'); ?></div>
		<div class="controls"><?php echo $this->form->getInput('imobiliaria'); ?></div>
	</div>
	<?php foreach((array)$this->item->imobiliaria as $value): ?>
		<?php if(!is_array($value)): ?>
			<input type="hidden" class="imobiliaria" name="jform[imobiliariahidden][<?php echo $value; ?>]" value="<?php echo $value; ?>" />
		<?php endif; ?>
	<?php endforeach; ?>
	<div class="control-group">
		<div class="control-label"><?php echo $this->form->getLabel('imobiliaria2'); ?></div>
		<div class="controls"><?php echo $this->form->getInput('imobiliaria2'); ?></div>
	</div>
	<?php foreach((array)$this->item->imobiliaria2 as $value): ?>
		<?php if(!is_array($value)): ?>
			<input type="hidden" class="imobiliaria2" name="jform[imobiliaria2hidden][<?php echo $value; ?>]" value="<?php echo $value; ?>" />
		<?php endif; ?>
	<?php endforeach; ?>
	<div class="control-group">
		<div class="control-label"><?php echo $this->form->getLabel('caracteristicas'); ?></div>
		<div class="controls"><?php echo $this->form->getInput('caracteristicas'); ?></div>
	</div>				<div class="fltlft" <?php if (!JFactory::getUser()->authorise('core.admin','localize_imovel')): ?> style="display:none;" <?php endif; ?> >
                <?php echo JHtml::_('sliders.start', 'permissions-sliders-'.$this->item->id, array('useCookie'=>1)); ?>
                <?php echo JHtml::_('sliders.panel', JText::_('ACL Configuration'), 'access-rules'); ?>
                <fieldset class="panelform">
                    <?php echo $this->form->getLabel('rules'); ?>
                    <?php echo $this->form->getInput('rules'); ?>
                </fieldset>
                <?php echo JHtml::_('sliders.end'); ?>
            </div>
				<?php if (!JFactory::getUser()->authorise('core.admin','localize_imovel')): ?>
                <script type="text/javascript">
                    jQuery.noConflict();
                    jQuery('.tab-pane select').each(function(){
                       var option_selected = jQuery(this).find(':selected');
                       var input = document.createElement("input");
                       input.setAttribute("type", "hidden");
                       input.setAttribute("name", jQuery(this).attr('name'));
                       input.setAttribute("value", option_selected.val());
                       document.getElementById("form-imvel").appendChild(input);
                    });
                </script>
             <?php endif; ?>
		<div class="control-group">
			<div class="controls">

				<?php if ($this->canSave): ?>
					<button type="submit" class="validate btn btn-primary">
						<?php echo JText::_('JSUBMIT'); ?>
					</button>
				<?php endif; ?>
				<a class="btn"
				   href="<?php echo JRoute::_('index.php?option=com_localize_imovel&task=imvelform.cancel'); ?>"
				   title="<?php echo JText::_('JCANCEL'); ?>">
					<?php echo JText::_('JCANCEL'); ?>
				</a>
			</div>
		</div>

		<input type="hidden" name="option" value="com_localize_imovel"/>
		<input type="hidden" name="task"
			   value="imvelform.save"/>
		<?php echo JHtml::_('form.token'); ?>
	</form>
</div>
