{include file="header.tpl"}
{include file="top.tpl"}
<div id="site">
	<div id="esquerda">
    	<h2>Alguns de nossos Clientes</h2>
        <p>A LF Transportes tem como prioridade o atendimento, juntamente com o prazo de entrega e a segurança da mercadoria. Entre o cliente e a LF deve existir um elo de confiança e parceria, eliminando a burocracia e criando flexibilidade no trabalho prestado.</p>
        <p>Veja ao lado alguns de nossos principais clientes:</p>
    </div>
    <div id="direita">
    {foreach from=$clientes item=cliente}
       	{if ($cliente.link != "" && $cliente.link != "http://")}
    	<div class="cliente">
    	   	<a href="{$cliente.link}" target="_blank">{$cliente.cliente}<img src="_img/link.jpg" class="link" /></a>
    	</div>
        {else}
		<div class="cliente">
        	{$cliente.cliente}
	    </div>
		{/if}
	{/foreach}
    </div>
</div>
{include file="footer.tpl"}