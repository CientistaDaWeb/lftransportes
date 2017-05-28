{include file="header.tpl"}
{include file="top.tpl"}
<div id="site">
    <div id="filiais">
    	<p>Selecione o estado para visualizar a lista de filiais</p>
    </div>
    <div id="loader">
    	<img src="_img/ajax-loader.gif" />
    </div> 
    <div id="mapa_filiais">
        <h2>Nossas Filiais</h2>
        <p>Clique nos estados marcados no mapa para conhecer nossas filiais:</p>
        <div id="mapa">
        <script type="text/javascript">
            var mapa = new Flash("/_swf/mapa.swf", "Mapa", "410", "400", "false", "transparent");
            mapa.write();
        </script>
        </div>    
    </div>
</div>
		{if $estado != ""}
		{literal}
        <script type="text/javascript">
			$(document).ready(function(){
				ajax('{/literal}{$estado}{literal}');
			});
		</script>
		{/literal}
        {/if}
{include file="footer.tpl"}