<?php
require_once('_inc/database.php');
require_once('libs/Smarty.class.php');
require_once('_class/infraestruturas.class.php');

$smarty = new Smarty;

$infras = new infraestruturas();
$infra = $infras->listainfra();

$smarty->assign("infraestruturas", $infra);

$smarty->display('infraestruturas.tpl');
?>