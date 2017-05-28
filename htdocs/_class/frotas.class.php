<?php
class frotas{
	public $id_frota, $imagem, $descricao;

	public function __construct(){
	}
	
	public static function buscafrota($id){
		$query = "SELECT * FROM frotas WHERE id_frota = $id";
		$con = new database();
		$rs = $con->executa($query);
		if($rs && mysqli_num_rows($rs) > 0){
			$dados = mysqli_fetch_assoc($rs);
			return $dados;
		}
	}
	
	public static function listafrota(){
		$query = "SELECT * FROM frotas";
		$con = new database();
		$rs = $con->executa($query);
		if($rs && mysqli_num_rows($rs)>0){
			while($dados = mysqli_fetch_assoc($rs)){
				$lista[] = $dados;	
			}
		return $lista;
		}
	}
	
	public function __destruct(){
	}
}
?>