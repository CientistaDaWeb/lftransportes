<?php
function limpadados($dados){
	$dados = addslashes($dados);
	return $dados;
}
function ajustadata($data, $tipo){
	switch($tipo){
		case 'site':
			$dataF = split("-", $data);		
			$data = $dataF[2].'/'.$dataF[1].'/'.$dataF[0];
		break;
		case 'banco':
			$dataF = split('/', $data);			
			$data = $dataF[2].'-'.$dataF[1].'-'.$dataF[0];
		break;
		case 'calculo':		
			$dlist=explode('/',$data);
			$data = mktime($dlist[1],$dlist[0],$dlist[2]);
		break;
		case 'aniversario':		
			$dataF = split("-", $data);		
			$data = $dataF[2].'/'.$dataF[1];
		break;
	}
	return $data;	
}
?>