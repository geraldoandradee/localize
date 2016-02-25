<?php
/**
 *
 *
 * @package   mod_blank250
 * copyright Blackdale/Bob Galway
 * @license GPL3
 */
// no direct access
defined('_JEXEC') or die;
$doc = JFactory::getDocument();
include('params.php');
include('css.php');
?>
<?php if ($params->get('item_title')) : ?>

    <<?php echo $item_heading; ?> class="newsflash-title<?php echo $params->get('moduleclass_sfx'); ?>">
    <?php if ($params->get('link_titles') && $item->link != '') : ?>
        <a href="<?php echo $item->link; ?>">
            <?php echo $item->title; ?>
        </a>
    <?php else : ?>
        <?php echo $item->title; ?>
    <?php endif; ?>
    </<?php echo $item_heading; ?>>

<?php endif; ?>
<div class="col-md-12">
    <?php if ($list[0] != NULL): ?>
        <h2>Principais anúncios</h2>
    <?php endif; ?>
</div>
<?php
//setlocale(LC_MONETARY, 'it_IT');
?>
<?php foreach ($list as $l => $item): ?>
    <div class="col-md-3">
        <div class="recomendados_img">
            <img src="<?= JUri::base() . $item->imagem1; ?>" alt="<?= $item->nome; ?>" title="<?= $item->nome . " - " . JUri::base() . $item->legenda_img1; ?>"/>
        </div>
        <div class="recomendados_titulo">
            <h3><?= $item->nome; ?></h3>
        </div>
        <div class="recomendados_texto">
            <?= $item->descricao; ?>
        </div>
        <div class="row recomendados_info">
            <div class="col-md-6 preco"><?= 'R$' . number_format($item->valor, 2, ',', '.'); ?></div>
            <div class="col-md-6"><button type="button" class="btn btn-primary">Ver Detalhes</button></div>
        </div>
    </div>
<?php endforeach; ?>
<!--</div>-->

