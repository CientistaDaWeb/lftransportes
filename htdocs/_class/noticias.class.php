<?php
class noticias{
	public $id_noticia, $titulo, $data, $resumo_texto, $texto;

	public function __construct(){
	}
	
	public static function buscaNoticia($id){
		$query = "SELECT * FROM noticias WHERE id_noticia = $id";
		$con = new database();
		$rs = $con->executa($query);
		if($rs && mysqli_num_rows($rs) > 0){
			$dados = mysqli_fetch_assoc($rs);
			return $dados;
		}
	}
	
	public static function listaNoticias(){
		$query = "SELECT data, imagem, titulo, texto, id_noticia FROM noticias ORDER BY data DESC LIMIT 0,5";
		$con = new database();
		$rs = $con->executa($query);
		if($rs && mysqli_num_rows($rs)>0){
			while($dados = mysqli_fetch_assoc($rs)){
				$lista[] = $dados;	
			}
		return $lista;
		}
	}
	
	public static function outrasNoticias($id){
		$query = "SELECT data, titulo, id_noticia FROM noticias WHERE id_noticia NOT IN($id) ORDER BY data DESC";
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