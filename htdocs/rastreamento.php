<?php
require_once('_inc/database.php');
require_once('libs/Smarty.class.php');
require_once('_class/rastreamento.class.php');

$smarty = new Smarty;

$nf =  $_POST['nf'];
$cnpj =  $_POST['cnpj'];

$rastreamento = new rastreamento();
$eventos = $rastreamento->listaeventos($nf, $cnpj);
if($eventos){
	$smarty->assign("tem", 1);	
}
$smarty->assign("notafiscal", $nf);
$smarty->assign("cnpj", $cnpj);
$smarty->assign("eventos", $eventos);

$smarty->display('rastreamento.tpl');
?>