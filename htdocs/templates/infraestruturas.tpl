{include file="header.tpl"}
{include file="top.tpl"}
<div id="site">
	<div id="esquerda">
    	<h2>Frota especializada</h2>
        <p>Operando com uma frota de veículos especializados em cargas fracionadas, transportadas por baús fechados e bi-trens graneleiros, a LF Transportes garante a segurança da carga para seus clientes. Contando com motoristas treinados e experientes, a mercadoria chega mais rápido no destino e com responsabilidade. Todos os veículos possuem rastreamento via satélite.</p>
        <p>Além de possuir em todas as suas filiais galpões de armazenamento muito bem estruturados e uma equipe de profissionais altamente treinada, protegendo assim sua mercadoria no transporte e na armazenagem.</p>
        <p>Clique nas imagens ao lado para amplia-las.</p>        
    </div>
    <div id="direita">
    	<div id="destaque" class="galeria">
        {foreach from=$infraestruturas item=infra}
            <a href="/_img/infraestruturas/{$infra.imagem}"><img src="/_img/infraestruturas/thumbs/{$infra.imagem}" /></a>
		{/foreach}
    	</div>
    </div>
</div>
{include file="footer.tpl"}