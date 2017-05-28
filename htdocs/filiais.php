<?php
require_once('libs/Smarty.class.php');

$smarty = new Smarty;

$url = $_SERVER['REQUEST_URI'];
$var = explode('/', $url);

$id_estado = $var[2];
$smarty->assign("estado", $id_estado);
$smarty->display('filiais.tpl');
?>