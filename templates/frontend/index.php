<?php defined( '_JEXEC' ) or die; 

include_once JPATH_THEMES.'/'.$this->template.'/logic.php';

?><!doctype html>

<html lang="<?php echo $this->language; ?>">

<head>
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
  
<body class="<?php echo (($menu->getActive() == $menu->getDefault()) ? ('front') : ('site')).' '.$active->alias.' '.$pageclass; ?>" role="document">

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
			<div class="col-md-12">
				<h2>Principais anúncios</h2>
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
