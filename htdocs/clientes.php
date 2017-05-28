<?php
require_once('_inc/database.php');
require_once('libs/Smarty.class.php');
require_once('_class/clientes.class.php');

$smarty = new Smarty;
$clientes = new clientes();

$listaclientes = $clientes->listaClientes();
$smarty->assign("clientes",$listaclientes);

$smarty->display('clientes.tpl');


?>