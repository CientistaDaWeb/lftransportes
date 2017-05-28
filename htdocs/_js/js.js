function fechabaner(){
	var baner = document.getElementById("baner");
	baner.style.display = "none";
}
function mostra(id){
	var mostra = document.getElementById(id);
	if (mostra.style.display == "none"){
		mostra.style.display = "block";
	}else{
		mostra.style.display = "none";
	}
}

function ajax(estado){
	$.get(
		'/_action/pegaestado.php',
		{estado : estado},
		function(data){
			$('#filiais').html(data);
		}
	);	
}

$('document').ready(function(){
	$("#loader").ajaxStart(function(){
		$(this).show();
	});							
	$("#loader").ajaxStop(function(){
		$(this).hide();
	});							
});

function validaContato(){
	var nome = document.getElementById("nome");
	var email = document.getElementById("email");
	var msg = document.getElementById("msg");
	
	if(nome.value.replace(/[ ]+/g,"").replace(/\r\n/g, "")== ""){
		alert("Preencha o campo Nome!");
		nome.focus();
		return false;
	}
	if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email.value)){
	}else{
		alert('O E-mail deve ser preenchido corretamente!');
		email.focus();
		return false;
	}
	if(msg.value.replace(/[ ]+/g,"").replace(/\r\n/g, "")== ""){
		alert("Preencha o campo Mensagem!");
		msg.focus();
		return false;
	}
}
function validaColeta(){
	var nome = document.getElementById("nome");
	var telefone = document.getElementById("telefone");

	if(nome.value.replace(/[ ]+/g,"").replace(/\r\n/g, "")== ""){
		alert("Preencha o campo Nome!");
		nome.focus();
		return false;
	}
	if(telefone.value.replace(/[ ]+/g,"").replace(/\r\n/g, "")== ""){
		alert("Preencha o campo Telefone!");
		telefone.focus();
		return false;
	}
}
$(document).ready(function(){
	$('.galeria a').lightBox({
		imageLoading: '/_img/loadingAnimation.gif',
		imageBtnClose: '/_img/lightbox-btn-close.gif',
		imageBtnPrev: '/_img/lightbox-btn-prev.gif',
		imageBtnNext: '/_img/lightbox-btn-next.gif',
		txtImage: 'Imagem',
		txtOf: 'de'
	});
});