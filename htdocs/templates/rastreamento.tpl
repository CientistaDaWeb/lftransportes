{include file="header.tpl"}
{include file="top.tpl"}
<div id="site">
	<div id="esquerda">
    	<h2>Rastreamento de encomenda</h2>
        <p>Para dar mais credibilidade e segurança ao cliente, a LF Transportes disponibilizou um sistema de rastreamento de mercadorias, através dele você poderá saber onde está sua mercadoria.</p>
    </div>
    <div id="direita">
        <h1>Em manutenção</h1>
    	<!--
        <div id="destaque">
        	<div id="rastreamento">
            	<form action="/rastreamento/" method="post">
                <h2 class="rastramento">Número da Nota Fiscal</h2>
                <p><input type="text" name="nf" id="nf" class="inpute" /></p>
                <h2 class="rastreamento">CNPJ</h2>
                <p><input type="text" name="cnpj" id="cnpj" class="inpute" />&nbsp;<input type="submit" id="bt_ok" /></p>
                </form>
                <div class="filial">
                    <h3 style="margin-bottom:10px;">Nota Fiscal N&ordm;: {$notafiscal}</h3>
                    <h3 style="margin-bottom:10px;">CNPJ: {$cnpj}</h3>
                    {if $tem != ""}
                        {foreach from=$eventos item=evento}
                    <p><span class="data">{$evento.data|date_format:"%d/%m/%Y"}</span> - {$evento.evento}</p>
                        {/foreach}
                    {else}
                    <p>Nota fiscal não encontrada.</p>
                    {/if}
                </div>
           	</div>
    	</div>
     -->
    </div>
</div>
{include file="footer.tpl"}