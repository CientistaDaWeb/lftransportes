<?php
extract($_POST);
$mensagem = "<p><strong>Nome:</strong> $nome</p><p><strong>Volumes:</strong> $volumes</p><p><strong>Peso:</strong> $peso</p><p><strong>Cubagem:</strong> $cubagem</p><p><strong>Remetente:</strong> $remetente</p><p><strong>Destinat&aacute;rio:</strong> $destinatario</p><p><strong>Telefone:</strong> $telefone</p><p><strong>Data:</strong> $data</p><p><strong>Hora:</strong> $hora</p><p><strong>E-mail:</strong> $email</p>";
$cabecalho  = "MIME-Version: 1.0\r\n";
$cabecalho .= "Content-type: text/html; charset=utf-8\r\n";
$cabecalho .= "From: Coleta <atendimento@lftransportes.com.br>\n";
$mail = mail("atendimento@lftransportes.com.br", "Coleta enviada pelo site", $mensagem, $cabecalho);
if ($mail){
?>
<script type="text/javascript">
	alert("E-mail enviado com sucesso! Em breve entraremos em contato.");
	window.location="../coleta.php";
</script>
<?php
}else{
?>
<script type="text/javascript">
	alert("Falha ao enviar o e-mail!");
	window.location="/coleta/";
</script>
<?php
}
?>