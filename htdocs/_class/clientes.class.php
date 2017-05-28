<?php
class clientes{
	public $id_cliente, $titulo, $data, $resumo_texto, $texto;

	public function __construct(){
	}
	
	public static function listaClientes(){
		$query = "SELECT * FROM clientes ORDER BY cliente";
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