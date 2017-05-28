<?php
require_once('_inc/database.php');
require_once('libs/Smarty.class.php');
require_once('_class/frotas.class.php');

$smarty = new Smarty;

$frota = new frotas();
$frotas = $frota->listafrota();

$smarty->assign("frotas", $frotas);

$smarty->display('frota.tpl');
?>