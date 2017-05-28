<?php
require_once('_inc/database.php');
require_once('libs/Smarty.class.php');
require_once('_class/noticias.class.php');

$smarty = new Smarty;
$url = $_SERVER['REQUEST_URI'];
$var = explode('/', $url);

$id_noticia = $var[2];

$noticias = new noticias();

$noticia = $noticias->buscaNoticia($id_noticia);
$smarty->assign("noticia",$noticia);

$listadeNoticias = $noticias->outrasNoticias($id_noticia);
$smarty->assign("noticiaspassadas",$listadeNoticias);

$smarty->display('noticias.tpl');
?>