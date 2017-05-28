{include file="header.tpl"}
{include file="top.tpl"}
<div id="site">
	<div id="esquerda">
    	<h2>Entre em contato conosco</h2>
        <p>Contato<br /><a href="mailto:atendimento@lftransportes.com.br">atendimento@lftransportes.com.br</a></p> 
        <p>Gerência<br /><a href="mailto:gerencia@lftransportes.com.br">gerencia@lftransportes.com.br</a></p> 
        <p>Comercial<br /><a href="mailto:comercial@lftransportes.com.br">comercial@lftransportes.com.br</a></p> 
        <p>Expedição<br /><a href="mailto:expedicao@lftransportes.com.br">expedicao@lftransportes.com.br</a></p> 
        <p>Faturamento<br /><a href="mailto:faturamento@lftransportes.com.br">faturamento@lftransportes.com.br</a></p> 
        <p>Financeiro<br /><a href="mailto:financeiro@lftransportes.com.br">financeiro@lftransportes.com.br</a></p> 
        <p>Manutenção<br /><a href="mailto:manutencao@lftransportes.com.br">manutencao@lftransportes.com.br</a></p> 
        <p>Filial Fortaleza<br /><a href="mailto:fortalezafilial@lftransportes.com.br">fortalezafilial@lftransportes.com.br</a></p>
        <p>Filial São Luis<br /><a href="mailto:saoluisfilial@lftransportes.com.br">saoluisfilial@lftransportes.com.br</a></p> 
        <p>Filial Teresina<br /><a href="mailto:teresinafilial@lftransportes.com.br">teresinafilial@lftransportes.com.br</a></p>        
        <h2>LF Transportes Ltda.</h2>
        <p>RST 453 Km 109,8</p>
        <p>Terceiro Distrito Rio Buratti</p>
        <p>CEP:95.180-992</p>
        <p>Caixa Postal: 2213</p>
        <p>Farroupilha - Rio Grande do Sul</p>
        <p>Fones: (54) 3259.2144 / (54) 3259.2104 / (54) 3259.2030</p>
        <p>E-mail: <a href="mailto:atendimento@lftransportes.com.br">atendimento@lftransportes.com.br</a></p>
    </div>
    <div id="direita">
    	<div id="destaque">
	        <p>Preencha o formulário abaixo para entrar em contato conosco. </p>
            <form action="/_action/contato.php" method="post" onsubmit="return validaContato();">
        	<table border="0" cellpadding="0" cellspacing="5">
            	<tr>
                	<th colspan="3"><label for="contato">Contato</label></th>
                </tr>
                <tr>
                	<td colspan="3"><select name="contato" id="contato">
                    	<option value="atendimento">Contato</option>
                    	<option value="gerencia">Gerência</option>
                        <option value="comercial">Comercial</option>
                        <option value="expedicao">Expedição</option>
                        <option value="faturamento">Faturamento</option>
                        <option value="financeiro">Financeiro</option>
                        <option value="manutencao">Manutenção</option>
                        <option value="fortalezafilial">Filial Fortaleza</option>
                        <option value="saoluisfilial">Filial São Luis</option>
                        <option value="teresinafilial">Filial Teresina</option>
                    </select></td>
                </tr>
            	<tr>
                	<th colspan="3"><label for="nome">* Nome:</label></th>
                </tr>
                <tr>
                	<td colspan="3"><input type="text" name="nome" id="nome" class="inputeg" maxlength="255" /></td>
                </tr>
                <tr>
                	<th><label for="fone_comercial">Fone Comercial:</label></th>
                    <th><label for="fone_residencial">Fone Residencial:</label></th>
                    <th><label for="celular">Celular:</label></th>
                </tr>
                <tr>
                	<td><input type="text" name="fone_comercial" id="fone_comercial" class="inputep" maxlength="30" size="18" /></td>
                    <td><input type="text" name="fone_residencial" id="fone_residencial" class="inputep" maxlength="30" size="18" /></td>
                    <td><input type="text" name="celular" id="celular" class="inputep" maxlength="30" size="18" /></td>
                </tr>
                <tr>
                	<th colspan="3"><label for="email">* E-mail:</label></th>
                </tr>
                <tr>
                	<td colspan="3"><input type="text" name="email" id="email" class="inputeg" maxlength="255"/></td>
                </tr>
                <tr>
                	<th><label for="cidade">Cidade:</label></th>
                    <th><label for="cep">CEP:</label></th>
                    <th><label for="estado">Estado:</label></th>
                </tr>
                <tr>
                	<td><input type="text" name="cidade" id="cidade" class="inputep" maxlength="30" size="18" /></td>
                    <td><input type="text" name="cep" id="cep" class="inputep" maxlength="30" size="18" /></td>
                    <td><input type="text" name="estado" id="estado" class="inputep" maxlength="30" size="18" /></td>
                </tr>
                <tr>
                	<th colspan="3"><label for="msg"> *Mensagem:</label></th>
                </tr>
                <tr>
                	<td colspan="3"><textarea name="msg" cols="53" rows="5" class="inputeg" id="msg" ></textarea></td>
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