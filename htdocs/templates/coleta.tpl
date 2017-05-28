{include file="header.tpl"}
{include file="top.tpl"}
<div id="site">
	<div id="esquerda">
    	<h2>Agende a coleta de sua entrega.</h2>
        <p>Para facilitar ainda mais o seu agendamento, a LF Transportes disponibilisou o agendamento por e-mail, preencha os campos do formulário e tenha sua mercadoria coletada no momento que desejar.</p>
    </div>
    <div id="direita">
    	<div id="destaque">
	        <p>Preencha o formulário abaixo para agendar sua coleta.</p>
            <form action="/_action/coleta.php" method="post" onsubmit="return validaColeta();">
        	<table border="0" cellpadding="0" cellspacing="5">
            	<tr>
                	<th colspan="3"><label for="nome">* Nome:</label></th>
                </tr>
                <tr>
                	<td colspan="3"><input type="text" name="nome" id="nome" class="inputeg" maxlength="255" /></td>
                </tr>
                <tr>
                	<th><label for="volumes">Volumes: (qte)</label></th>
                    <th><label for="peso">Peso: (kg)</label></th>
                    <th><label for="cubagem">Cubagem: (m³)</label></th>
                </tr>
                <tr>
                	<td><input type="text" name="volumes" id="volumes" class="inputep" maxlength="30" size="18" /></td>
                    <td><input type="text" name="peso" id="peso" class="inputep" maxlength="30" size="18" /></td>
                    <td><input type="text" name="cubagem" id="cubagem" class="inputep" maxlength="30" size="18" /></td>
                </tr>
                <tr>
                	<th colspan="3"><label for="remetente">Remetente:</label></th>
                </tr>
                <tr>
                	<td colspan="3"><input type="text" name="remetente" id="remetente" class="inputeg" maxlength="255" /></td>
                </tr>
                <tr>
                	<th colspan="3"><label for="destinatario">Destinatário:</label></th>
                </tr>
                <tr>
                	<td colspan="3"><input type="text" name="destinatario" id="destinatario" class="inputeg" maxlength="255" /></td>
                </tr>
                <tr>
                	<th><label for="telefone">* Telefone:</label></th>
                    <th><label for="data">Data:</label></th>
                    <th><label for="hora">Hora:</label></th>
                </tr>
                <tr>
                	<td><input type="text" name="telefone" id="telefone" class="inputep" maxlength="30" size="18" /></td>
                	<td><input type="text" name="data" id="data" class="inputep" maxlength="30" size="18" /></td>
                    <td><input type="text" name="hora" id="hora" class="inputep" maxlength="30" size="18" /></td>
               </tr>
               <tr>
                	<th colspan="3"><label for="email">E-mail:</label></th>
                </tr>
                <tr>
                	<td colspan="3"><input type="text" name="email" id="email" class="inputeg" maxlength="255"/></td>
                </tr>
                <tr>
                	<td colspan="3"><input type="submit" id="bt_enviar" /></td>
                </tr>
            </table>
            </form>
            <p>* Campos obrigatórios.</p>
    	</div>
    </div>
</div>
{include file="footer.tpl"}