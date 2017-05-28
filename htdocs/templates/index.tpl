{include file="header.tpl"}
{include file="top.tpl"}
<div id="site">
	<div id="esquerda">
    	<h2>Sobre a LF Transportes...</h2>
        <p>Partindo de geração de pai para filho, surgiu a idéia de constituir uma sociedade, juntando-se os irmãos Ladair e Flávio. Nasceu em Setembro de 1999 a LF Transportes LTDA, voltada para atender principalmente a região Norte do País, em virtude das necessidades dos Estados desta região.</p>
        <p>Com o passar dos tempos fomos acompanhando as tendências do mercado. A empresa vem se empenhando e investindo em veículos, equipamentos e tecnologia, e com isso tornar mais seguro, viável e ágil nosso trabalho e atendimento.</p>
        <p>A LF Transportes está preparada para atender seu mercado.</p>
    </div>
    <div id="direita">
    	{if $destaque}
    	<div id="destaque">
        	<h2>{$destaque.titulo}</h2>
            {if $destaque.imagem != ''}
            <img src="/_img/destaques/{$destaque.imagem}"/>
            {/if}
            <p class="destaque">{$destaque.descricao}</p>
        </div>
        {/if}
        <div id="noticias_capa">
        	<h2>Not&iacute;cias</h2>
	        {foreach from=$noticias item=noticia}
            <h3><span class=class="data">{$noticia.data|date_format:"%d/%m/%Y"}</span> - {$noticia.titulo}</h3>
            <p>{$noticia.texto|truncate:70}</p>
            	{if $noticia.imagem != ''}
            	<p><img src="/_img/noticias/thumbs/{$noticia.imagem}" /></p>
            	{/if}
            <p><a href="/noticias/{$noticia.id_noticia}">Leia mais</a></p>
            {/foreach}
    	</div>
    </div>
</div>
{include file="footer.tpl"}