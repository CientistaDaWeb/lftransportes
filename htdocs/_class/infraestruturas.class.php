<?php
class infraestruturas{
	public $id_infraestrutura, $imagem, $descricao;

	public function __construct(){
	}
	
	public static function buscainfra($id){
		$query = "SELECT * FROM infraestruturas WHERE id_infaestrutura = $id";
		$con = new database();
		$rs = $con->executa($query);
		if($rs && mysqli_num_rows($rs) > 0){
			$dados = mysqli_fetch_assoc($rs);
			return $dados;
		}
	}
	
	public static function listainfra(){
		$query = "SELECT * FROM infraestruturas";
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