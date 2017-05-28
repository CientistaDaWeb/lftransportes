{include file="header.tpl"}
{include file="top.tpl"}
<div id="site">
	<div id="esquerda">
    	<h2>Frota especializada</h2>
        <p>Operando com uma frota de veículos especializados em cargas fracionadas, transportadas por baús fechados, a LF Transportes garante a segurança da carga para seus clientes. Contando com motoristas treinados e experientes, a mercadoria chega mais rápido no destino e com responsabilidade. Todos os veículos possuem rastreamento via satélite.</p>
        <p>Clique nas imagens ao lado para ampli&aacute;-las.</p>        
    </div>
    <div id="direita">
    	<div id="destaque" class="galeria">
		{foreach from=$frotas item=frota}
        	<a href="/_img/frotas/{$frota.imagem}" title="{$frota.descricao}"><img src="/_img/frotas/thumbs/{$frota.imagem}" /></a>
		{/foreach}
    	</div>
    </div>
</div>
{include file="footer.tpl"}