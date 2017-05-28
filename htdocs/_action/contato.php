<?php
extract($_POST);
$mensagem = "<p><strong>Nome:</strong> $nome</p><p><strong>Fone Comercial:</strong> $fone_comercial</p><p><strong>Fone Residencial:</strong> $fone_residencial</p><p><strong>Celular:</strong> $celular</p><p><strong>E-mail:</strong> $email</p><p><strong>Cidade/ CEP /Estado:</strong> $cidade / $cep / $estado</p><p><strong>Mensagem:</strong> $msg</p>";
$cabecalho  = "MIME-Version: 1.0\r\n";
$cabecalho .= "Content-type: text/html; charset=utf-8\r\n";
$cabecalho .= "From: $nome <$email>\n";
$mail = mail("$contato@lftransportes.com.br", "Contato enviado pelo site", $mensagem, $cabecalho);
if ($mail){
?>
<script type="text/javascript">
	alert("E-mail enviado com sucesso! Em breve entraremos em contato.");
	window.location="../contato.php";
</script>
<?php
}else{
?>
<script type="text/javascript">
	alert("Falha ao enviar o e-mail!");
	window.location="/faleconosco/";
</script>
<?php
}
?>