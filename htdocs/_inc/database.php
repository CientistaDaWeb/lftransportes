<?php
/**
 * Classe DataBase
 *
 */
class database extends mysqli{
	/**
	 * Método Construtor
	 * Cria um objeto de conex�o Mysqli
	 *
	 */
	public function __construct(){
		if($_SERVER['SERVER_ADDR'] == '189.38.90.52'){
			$host = "mysql.lftransportes.com.br";
			$dbname = "lftransportes";
			$usuario = "lftransportes";
			$senha = "r0r6r3";
		}else{
			$host = "localhost";
			$dbname = "lftransportes";
			$usuario = "root";
			$senha = "";
		}
		try {
			@$this->connect($host, $usuario, $senha, $dbname);
			if(mysqli_connect_errno() != 0) {
                throw new Exception(mysqli_connect_errno());
            }
		}catch(Exception $erro){
			$mensagem = $erro->getMessage();
            $codigo   = $erro->getCode();
            $arquivo  = $erro->getFile();
            $trace    = $erro->getTraceAsString();
		}
	}

	/**
	 * M�todo para execu��o de querys
	 *
	 * @param string $query
	 */
	public function executa($query){
		return $this->query($query);
	}

	/**
	 * M�todo destrutor
	 * Depois de Utilizado, o objeto de autodestr�i
	 * Fechando assim, o link com o banco de dados
	 *
	 */
	public function __destruct(){
		$this->close();
	}
}
?>