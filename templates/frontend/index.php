<?php
/**
 * @package     Joomla.Site
 * @subpackage  Templates.protostar
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;

$app = JFactory::getApplication();
$doc = JFactory::getDocument();
$user = JFactory::getUser();
$this->language = $doc->language;
$this->direction = $doc->direction;

// Getting params from template
$params = $app->getTemplate(true)->params;

// Detecting Active Variables
$option = $app->input->getCmd('option', '');
$view = $app->input->getCmd('view', '');
$layout = $app->input->getCmd('layout', '');
$task = $app->input->getCmd('task', '');
$itemid = $app->input->getCmd('Itemid', '');
$sitename = $app->get('sitename');

if ($task == "edit" || $layout == "form") {
    $fullWidth = 1;
} else {
    $fullWidth = 0;
}

// Add JavaScript Frameworks
JHtml::_('bootstrap.framework');
$doc->addScript($this->baseurl . '/templates/' . $this->template . '/js/template.js');

// Add Stylesheets
$doc->addStyleSheet($this->baseurl . '/templates/' . $this->template . '/css/template.css');

// Load optional RTL Bootstrap CSS
JHtml::_('bootstrap.loadCss', false, $this->direction);


include_once JPATH_THEMES . '/' . $this->template . '/logic.php';
?><!doctype html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jdoc:include type="head" />
<?php // Use of Google Font ?>
<?php if ($this->params->get('googleFont')) : ?>
    <link href='//fonts.googleapis.com/css?family=<?php echo $this->params->get('googleFontName'); ?>' rel='stylesheet' type='text/css' />
    <style type="text/css">
        h1,h2,h3,h4,h5,h6,.site-title{
            font-family: '<?php echo str_replace('+', ' ', $this->params->get('googleFontName')); ?>', sans-serif;
        }
    </style>
<?php endif; ?>
<?php // Template color  ?>
<?php if ($this->params->get('templateColor')) : ?>
    <style type="text/css">
        body.site
        {
            border-top: 3px solid <?php echo $this->params->get('templateColor'); ?>;
            background-color: <?php echo $this->params->get('templateBackgroundColor'); ?>
        }
        a
        {
            color: <?php echo $this->params->get('templateColor'); ?>;
        }
        .navbar-inner, .nav-list > .active > a, .nav-list > .active > a:hover, .dropdown-menu li > a:hover, .dropdown-menu .active > a, .dropdown-menu .active > a:hover, .nav-pills > .active > a, .nav-pills > .active > a:hover,
        .btn-primary
        {
            background: <?php echo $this->params->get('templateColor'); ?>;
        }
        .navbar-inner
        {
            -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, .25), inset 0 -1px 0 rgba(0, 0, 0, .1), inset 0 30px 10px rgba(0, 0, 0, .2);
            -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, .25), inset 0 -1px 0 rgba(0, 0, 0, .1), inset 0 30px 10px rgba(0, 0, 0, .2);
            box-shadow: 0 1px 3px rgba(0, 0, 0, .25), inset 0 -1px 0 rgba(0, 0, 0, .1), inset 0 30px 10px rgba(0, 0, 0, .2);
        }
    </style>
<?php endif; ?>
<!--[if lt IE 9]>
        <script src="<?php echo JUri::root(true); ?>/media/jui/js/html5.js"></script>
<![endif]-->

<jdoc:include type="head" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<link rel="apple-touch-icon-precomposed" href="<?php echo $tpath; ?>/images/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo $tpath; ?>/images/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo $tpath; ?>/images/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo $tpath; ?>/images/apple-touch-icon-144x144-precomposed.png">
<!-- Le HTML5 shim and media query for IE8 support -->
<!--[if lt IE 9]>
<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
<script type="text/javascript" src="<?php echo $tpath; ?>/js/respond.min.js"></script>
<![endif]-->
</head>

<body class="<?php echo (($menu->getActive() == $menu->getDefault()) ? ('front') : ('site')) . ' ' . $active->alias . ' ' . $pageclass; ?>" role="document">

    <div class="container-fluid" id="barra-topo">
        <div class="container">
            <div class="row" id="topo">
                <div class="col-md-6"><jdoc:include type="modules" name="logotipo" style="none" /></div>
                <div class="col-md-6" id="menu"><jdoc:include type="modules" name="menu" style="none" /></div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12" id="mapa-home">
                <jdoc:include type="modules" name="mapa-home" style="none" />
                <div class="col-md-12" id="pesquisar"><jdoc:include type="modules" name="pesquisar" style="none" /></div>
            </div>

        </div>
    </div>
    <div class="container">
        <div class="row" id="recomendados">
            <div class="col-md-12">
                <h2>Recomendados para você!</h2>
            </div>
            <div class="col-md-3">
                <div class="recomendados_img">
                    <img src="images/anuncio.jpg"/>
                </div>
                <div class="recomendados_titulo">
                    <h3>Sobrado 300m² no Jd. Goiás</h3>
                </div>
                <div class="recomendados_texto">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac felis egestas, feugiat est ac, accumsan tellus.</p>
                </div>
                <div class="row recomendados_info">
                    <div class="col-md-6 preco">R$ 550.000,00</div>
                    <div class="col-md-6"><button type="button" class="btn btn-primary">Ver Detalhes</button></div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="recomendados_img">
                    <img src="images/anuncio.jpg"/>
                </div>
                <div class="recomendados_titulo">
                    <h3>Sobrado 300m² no Jd. Goiás</h3>
                </div>
                <div class="recomendados_texto">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac felis egestas, feugiat est ac, accumsan tellus.</p>
                </div>
                <div class="row recomendados_info">
                    <div class="col-md-6 preco">R$ 550.000,00</div>
                    <div class="col-md-6"><button type="button" class="btn btn-primary">Ver Detalhes</button></div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="recomendados_img">
                    <img src="images/anuncio.jpg"/>
                </div>
                <div class="recomendados_titulo">
                    <h3>Sobrado 300m² no Jd. Goiás</h3>
                </div>
                <div class="recomendados_texto">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac felis egestas, feugiat est ac, accumsan tellus.</p>
                </div>
                <div class="row recomendados_info">
                    <div class="col-md-6 preco">R$ 550.000,00</div>
                    <div class="col-md-6"><button type="button" class="btn btn-primary">Ver Detalhes</button></div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="recomendados_img">
                    <img src="images/anuncio.jpg"/>
                </div>
                <div class="recomendados_titulo">
                    <h3>Sobrado 300m² no Jd. Goiás</h3>
                </div>
                <div class="recomendados_texto">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac felis egestas, feugiat est ac, accumsan tellus.</p>
                </div>
                <div class="row recomendados_info">
                    <div class="col-md-6 preco">R$ 550.000,00</div>
                    <div class="col-md-6"><button type="button" class="btn btn-primary">Ver Detalhes</button></div>
                </div>
            </div>
        </div>
        <div class="row" id="anuncios">
            <jdoc:include type="modules" name="anuncios-home" style="none" />
        </div>
    </div>
    <div class="container-fluid">
        <div class="container">
            <div class="row" id="rodape">
                <div class="col-md-4">Rodapé 1</div>
                <div class="col-md-4">Rodapé 2</div>
                <div class="col-md-4">Rodapé 3</div>
            </div>
        </div>
    </div>

<jdoc:include type="modules" name="debug" />
</body>

</html>
