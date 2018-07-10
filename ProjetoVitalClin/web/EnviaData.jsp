<%-- 
    Document   : EnviaData
    Created on : 06/06/2018, 02:02:26
    Author     : bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <form action="ControleAgendamento" method="POST">
            <label for="DtEscolhida">Data Nasc.</label>
            <input type="date" id="DtEscolhida" size="5" name="txtDtEscolhida" placeholder="Digite sua data de nascmiento" title="Preencha com sua data de nascmiento ex: 03/05/1989">
            <input type="submit" name="acao" class="botao" value="Salvar" title="Clique para enviar os dados do formulário">

        </form>
    </body>
</html>
