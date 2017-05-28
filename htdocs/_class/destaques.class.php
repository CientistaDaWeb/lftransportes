<?php
class destaques{
	public $id_destaque, $titulo, $descricao, $data, $imagem;
	
	public function __construct(){
	}

	public static function ultimoDestaque(){
		$query = "SELECT * FROM destaques ORDER BY data DESC LIMIT 0,1"	;
		$con = new database();
		$rs = $con->executa($query);
		if($rs && mysqli_num_rows($rs)>0){
			$dados = mysqli_fetch_assoc($rs);
			return $dados;
		}
	}
	
	public function __destruct(){
	}
}
?>