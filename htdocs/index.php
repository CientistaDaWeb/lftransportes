<?php
require_once('_inc/database.php');
require_once('libs/Smarty.class.php');
require_once('_class/noticias.class.php');
require_once('_class/destaques.class.php');

$smarty = new Smarty;

$noticias = new noticias();
$listadeNoticias = $noticias->listaNoticias();
$smarty->assign("noticias",$listadeNoticias);

$destaques = new destaques();
$destaque = $destaques->ultimoDestaque();
$smarty->assign("destaque",$destaque);	

$smarty->display('index.tpl');
?>