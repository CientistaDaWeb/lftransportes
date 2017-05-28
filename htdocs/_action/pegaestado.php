<?php
	require_once('../_inc/database.php');
	$estado = $_GET['estado'];
	
	$con = new database();
	$query = "SELECT id_estado, uf FROM estados WHERE uf = '$estado'";
	$rs = $con->executa($query);
	$dados = mysqli_fetch_assoc($rs);
	$id_estado = $dados['id_estado'];
	
	$query = "SELECT * FROM filiais WHERE fk_estado = $id_estado";
	$rs = $con->executa($query);
	
	if(mysqli_num_rows($rs) > 0){
		while($dados = mysqli_fetch_assoc($rs)){
	?>
    <div class="filial">
        <h2><?=$dados['nome']?></h2>
        <p><strong>Endereço:</strong> <?=$dados['endereco']?></p>
        <p><strong>CEP:</strong> <?=$dados['cep']?></p>
        <p><strong>Cidade:</strong> <?=$dados['cidade']?></p>
        <p><strong>Fone/Fax:</strong> <?=$dados['fone']?></p>
        <p><strong>Celular:</strong> <?=$dados['celular']?></p>
        <p><strong>Contato:</strong> <?=$dados['contato']?></p>
        <p><strong>E-mail:</strong> <a href="mailto:<?=$dados['email']?>"><?=$dados['email']?></a></p>
    </div>
	<?php
		}
	}else{
		print "<p>Nenhuma filial registrada nesse estado.</p>";
	}
?>