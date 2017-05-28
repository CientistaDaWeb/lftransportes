<?php
class rastreamento{
	public $id_encomenda, $fk_encomenda, $evento, $data;

	public function __construct(){
	}
	
	public static function listaeventos($nf, $cnpj){
		$query = "SELECT id_encomenda FROM encomendas WHERE nf = '$nf' AND cnpj = '$cnpj'";
		$con = new database();
		$rs = $con->executa($query);
		if($rs && mysqli_num_rows($rs)>0){
			$encomenda = mysqli_fetch_assoc($rs);
			$eventos = $con->executa("SELECT * FROM eventos WHERE id_encomenda = $encomenda[id_encomenda]");
			if($eventos && mysqli_num_rows($eventos)>0){
				while($evento = mysqli_fetch_assoc($eventos)){
					$lista[] = $evento;
				}
				return $lista;
			}
		}
	}
	
	public function __destruct(){
	}
}
?>