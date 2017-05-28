{include file="header.tpl"}
{include file="top.tpl"}
<div id="site">
	<div id="esquerda">
    	<h2>Hist&oacute;rico de Not&iacute;cias</h2>
        {foreach from=$noticiaspassadas item=item}
        <p><span class="data"><a href="/noticias/{$item.id_noticia}">{$item.data|date_format:"%d/%m/%Y"}</a></span><br />
        <span class="noticia"><a href="/noticias/{$item.id_noticia}">{$item.titulo}</a></span></p>
        {/foreach}
    </div>
    <div id="direita">
    	<div id="destaque">
        	{if $noticia.id_noticia != ''}
	        <p><span class="data">{$noticia.data|date_format:"%d/%m/%Y"}</span></p>
            <h2>{$noticia.titulo}</h2>
            <p>{$noticia.texto}</p>
				{if $noticia.imagem != ''}
	            <p><img src="/_img/noticias/{$noticia.imagem}" /></p>
            	{/if}
            {else}
            <p>Notícia não entontrada.</p>
            {/if}
    	</div>
    </div>
</div>
{include file="footer.tpl"}