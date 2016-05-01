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

//error_reporting(E_ALL);
//ini_set("display_errors", "On");
function retornaLike($idUser, $idImovel) {
    $db = JFactory::getDbo();
    $query = $db->getQuery(true);
//    $query = "SELECT ri.id FROM qtdpv_recomendacao_imovel ri WHERE ri.id_imovel = $idImovel AND ri.id_user = $idUser";

    $query
            ->select('*')
            ->from('#__recomendacao_imovel')
            ->where('id_imovel = ' . intval($idImovel))
            ->where('id_user = ' . intval($idUser));
    $db->setQuery($query);
    $obj = $db->loadObject();
    $like = "";
    $like->img = JUri::base() . "templates/protostar/images/like/like_off.png";
    $like->desc = "default";

    if ($obj->like > 0) {
        $like->img = JUri::base() . "templates/protostar/images/like/like.png";
        $like->desc = "gostei";
    } elseif ($obj->like < 0) {
        $like->img = JUri::base() . "templates/protostar/images/like/dislike.png";
        $like->desc = "ngostei";
    }

    return $like;
}

function retornaConstrutora($idImovel) {
    $query = "SELECT * "
            . " FROM #__localize_empresa"
            . " WHERE id = (select construtora from qtdpv_localize_imovel where id = " . $idImovel . ")";
    $db = JFactory::getDbo();
    $db->setQuery($query);
    $obj = $db->loadObject();
    return $obj;
}

function retornaImobiliaria($idImovel) {
    $query = "SELECT * "
            . " FROM #__localize_empresa"
            . " WHERE id = (select imobiliaria from qtdpv_localize_imovel where id = " . $idImovel . ")";
    $db = JFactory::getDbo();
    $db->setQuery($query);
    $obj = $db->loadObject();
    return $obj;
}

$user = JFactory::getUser();
setlocale(LC_MONETARY, 'pt_BR');
$imovel = $this->item->id;
$canEdit = JFactory::getUser()->authorise('core.edit', 'com_localize_imovel.' . $this->item->id);
if (!$canEdit && JFactory::getUser()->authorise('core.edit.own', 'com_localize_imovel' . $this->item->id)) {
    $canEdit = JFactory::getUser()->id == $this->item->created_by;
}
?>
<?php if ($this->item) : ?>
    <?php $verifLike = retornaLike($user->id, $imovel) ?>
    <div class="item_like">
        <a href="#" id="gostei" class="<?= $this->item->id; ?>" like="<?= $verifLike->desc ?>">                
            <img src="<?= $verifLike->img; ?>" alt="Gostou deste imóvel? Curta!" title="Gostou deste imóvel? Curta!" />
        </a>
    </div>
    <div class="header">
        <h2><?php echo $this->item->nome; ?></h2>    
    </div>
    <div class="item_fields">
        <div class="esq-fields">
            <div class="galeria_imovel">
                <div class="gallery">                
                    <div class="big">
                        <div class="big-img">
                            <a href="<?= $this->item->imagem1; ?>" class="">                
                                <img src="<?= $this->item->imagem1; ?>" alt="<?= $this->item->legenda_img1; ?>" title="<?= $this->item->legenda_img1; ?>"/>
                            </a>
                        </div>
                    </div>
                    <div class="mini">
                        <a href="<?= $this->item->imagem1; ?>" class="">
                            <img src="<?= $this->item->imagem1; ?>" alt="<?= $this->item->legenda_img1; ?>" title="<?= $this->item->legenda_img1; ?>"/>
                        </a>
                    </div>
                    <div class="mini">
                        <a href="<?= $this->item->imagem1; ?>" class="">
                            <img src="<?= $this->item->imagem1; ?>" alt="<?= $this->item->legenda_img1; ?>" title="<?= $this->item->legenda_img1; ?>"/>
                        </a>
                    </div>
                    <div class="mini">
                        <a href="<?= $this->item->imagem1; ?>" class="">
                            <img src="<?= $this->item->imagem1; ?>" alt="<?= $this->item->legenda_img1; ?>" title="<?= $this->item->legenda_img1; ?>"/>
                        </a>
                    </div>
                    <!--<div class="clear"></div>-->

                </div>
            </div>
            <div class="info-imovel">
                <div class="construtora">
                    <div class="nome">Construtora</div>
                    <div class="logo">
                        <a href="<?= "http://".retornaConstrutora($this->item->id)->link; ?>" target="_blank">
                            <img src="<?= retornaConstrutora($this->item->id)->logo; ?>" alt="<?= retornaConstrutora($this->item->id)->nome; ?>" title="<?= retornaConstrutora($this->item->id)->nome; ?>" />
                        </a>
                    </div>
                </div>
                <div class="construtora">
                    <div class="nome">Imobiliária</div>
                    <div class="logo">
                        <a href="<?= retornaImobiliaria($this->item->id)->link; ?>" target="_blank">
                            <img src="<?= retornaImobiliaria($this->item->id)->logo; ?>" alt="<?= retornaImobiliaria($this->item->id)->nome; ?>" title="<?= retornaImobiliaria($this->item->id)->nome; ?>" />
                        </a>
                    </div>
                </div>
                <div class="valor-imovel">
    <?php echo 'R$ ' . number_format($this->item->valor, 2, ',', '.') . " - " . $this->item->metragem . " m²"; ?>                    
                </div>
            </div>
        </div>
        <div class="formulario_imovel">
            <h3>Fale com o vendedor</h3>
            <?php
            $document = &JFactory::getDocument();
            $renderer = $document->loadRenderer('modules');
            $position = 'formulario-imovel';
            $options = array('style' => 'raw');
            echo $renderer->render($position, $options, null);
            ?>
        </div>
    </div>
    <link href='http://fonts.googleapis.com/css?family=Slabo+27px' rel='stylesheet' type='text/css'>
    <link href='<?= JUri::base() ?>templates/protostar/css/dist/simplelightbox.min.css' rel='stylesheet' type='text/css'>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script type="text/javascript" src="<?= JUri::base() ?>templates/protostar/css/dist/simple-lightbox.js"></script>
    <script>
        jQuery(function () {
            var $gallery = jQuery('.gallery a').simpleLightbox();

            $gallery.on('show.simplelightbox', function () {
                console.log('Requested for showing');
            })
                    .on('shown.simplelightbox', function () {
                        console.log('Shown');
                    })
                    .on('close.simplelightbox', function () {
                        console.log('Requested for closing');
                    })
                    .on('closed.simplelightbox', function () {
                        console.log('Closed');
                    })
                    .on('change.simplelightbox', function () {
                        console.log('Requested for change');
                    })
                    .on('next.simplelightbox', function () {
                        console.log('Requested for next');
                    })
                    .on('prev.simplelightbox', function () {
                        console.log('Requested for prev');
                    })
                    .on('nextImageLoaded.simplelightbox', function () {
                        console.log('Next image loaded');
                    })
                    .on('prevImageLoaded.simplelightbox', function () {
                        console.log('Prev image loaded');
                    })
                    .on('changed.simplelightbox', function () {
                        console.log('Image changed');
                    })
                    .on('nextDone.simplelightbox', function () {
                        console.log('Image changed to next');
                    })
                    .on('prevDone.simplelightbox', function () {
                        console.log('Image changed to prev');
                    })
                    .on('error.simplelightbox', function (e) {
                        console.log('No image found, go to the next/prev');
                        console.log(e);
                    });
        });
    </script>
    <div class="item_fields">
        <table class="table">
            <tr>
                <th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_NUM_QUARTOS'); ?></th>
                <td><?php echo $this->item->num_quartos; ?></td>
            </tr>
            <tr>
                <th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_NUM_BANHEIROS'); ?></th>
                <td><?php echo $this->item->num_banheiros; ?></td>
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
                <td>
                    <?php
                    echo $this->item->imobiliaria;
                    if (!empty($this->item->imobiliaria2)) {
                        echo "," . $this->item->imobiliaria2;
                    }
                    ?>
                </td>
            </tr>
            <tr>
                <th><?php echo JText::_('COM_LOCALIZE_IMOVEL_FORM_LBL_IMVEL_CARACTERISTICAS'); ?></th>
                <td><?php echo $this->item->caracteristicas; ?></td>
            </tr>

        </table>
    </div>
    <?php if ($canEdit && $this->item->checked_out == 0): ?>
        <a class="btn" href="<?php echo JRoute::_('index.php?option=com_localize_imovel&task=imvel.edit&id=' . $this->item->id); ?>"><?php echo JText::_("COM_LOCALIZE_IMOVEL_EDIT_ITEM"); ?></a>
    <?php endif; ?>
    <?php if (JFactory::getUser()->authorise('core.delete', 'com_localize_imovel.imvel.' . $this->item->id)): ?>
        <a class="btn" href="<?php echo JRoute::_('index.php?option=com_localize_imovel&task=imvel.remove&id=' . $this->item->id, false, 2); ?>"><?php echo JText::_("COM_LOCALIZE_IMOVEL_DELETE_ITEM"); ?></a>
    <?php endif; ?>
    <?php
else:
    echo JText::_('COM_LOCALIZE_IMOVEL_ITEM_NOT_LOADED');
endif;
?>
<script>
//    jQuery(document).ready(function (e) {   
    jQuery("#bfSubmitButton").addClass("btn btn-success");
    jQuery(".bfCancelButton").addClass("btn btn-danger");
    jQuery.ajax({
        type: 'post',
        url: '<?= JUri::base() . 'ajaximovel.php' ?>',
        data: {
            imovel: <?= $imovel; ?>,
            user: <?= $user->id; ?>,
            acesso: 1
        }
    });
//    });
    jQuery("#bfSubmitButton").click(function (e) {
        e.stopPropagation();
        jQuery.ajax({
            type: 'post',
            url: '<?= JUri::base() . 'ajaximovel.php' ?>',
            data: {
                imovel: <?= $imovel; ?>,
                user: <?= $user->id; ?>,
                formulario: 1
            }
        });
    });
    jQuery("#gostei").click(function () {
        if (jQuery(this).attr("like") == "default") {
            jQuery.ajax({
                type: 'post',
                url: '<?= JUri::base() . 'ajaximovel.php' ?>',
                data: {
                    imovel: <?= $imovel; ?>,
                    user: <?= $user->id; ?>,
                    like: 1
                }
            });
            jQuery("#gostei img").attr("src", "<?= JUri::base() . "templates/protostar/images/like/like.png" ?>");
            jQuery(this).attr("like", "gostei");
        } else if (jQuery(this).attr("like") == "gostei") {
            jQuery.ajax({
                type: 'post',
                url: '<?= JUri::base() . 'ajaximovel.php' ?>',
                data: {
                    imovel: <?= $imovel; ?>,
                    user: <?= $user->id; ?>,
                    like: -1
                }
            });
            jQuery("#gostei img").attr("src", "<?= JUri::base() . "templates/protostar/images/like/dislike.png" ?>");
            jQuery(this).attr("like", "ngostei");
        } else if (jQuery(this).attr("like") == "ngostei") {
            jQuery.ajax({
                type: 'post',
                url: '<?= JUri::base() . 'ajaximovel.php' ?>',
                data: {
                    imovel: <?= $imovel; ?>,
                    user: <?= $user->id; ?>,
                    like: 0
                }
            });
            jQuery("#gostei img").attr("src", "<?= JUri::base() . "templates/protostar/images/like/like_off.png" ?>");
            jQuery(this).attr("like", "default");
        }
//        alert(jQuery(".form-imovel").attr("id"));
    });
</script>
