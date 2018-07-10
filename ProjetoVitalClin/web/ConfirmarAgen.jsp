<%-- 
    Document   : ConfirmarAgen
    Created on : 06/06/2018, 11:08:39
    Author     : bruno
--%>

<%@page import="modelo.Horario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="descripion" content="Clínica de Estética Vital Beauty">
    <meta name="author" content="André, Bruno e André">
    <title>Dashbord - Vital Beauty</title>

    <link rel="icon" href="img/favicon.png">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/configuracao.css">
    <link rel="stylesheet" href="css/ConfirmarAgendamento.css">
    <!-- Fontes  -->
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
</head>
<%
     
    String horaEscolhida = (String)request.getAttribute("horarioEscolhido");
    String dtEscolhida = (String)request.getAttribute("dtEscolhida");
    int idTratamento = (int)request.getAttribute("idTratamento").hashCode();
    int idCliente = Integer.parseInt(request.getParameter("idCliente"));
    String descricaoTratamento = (String)request.getAttribute("descricaoTratamento");
 
 
 %>
<body>
    <header class="cabecalho">
        <div class="container">
            <h1 class="titulo-principal">Vital Beauty</h1>
            <nav class="navegacao-topo">
                <ul class="menu-topo">
                    <li>
                        <a class="login" href="login.html">Login</a>
                    </li>
                    <li>
                        <a class="cad-cli" href="#">Cadastre se</a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

    <aside class="menu-navegacao-dashbord">
        <nav class="nav-dashbord">
            <ul class="menu-left">
                <li>
                    <a class="link-home" href="#">Home</a>
                </li>
                <li class="dropdown">
                    <a class="link-agendamento" href="#">Agendamentos</a>
                    <div class="dropdown-content">
                        <a href="#">Consultar</a>
                        <a href="#">Cadastrar</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a class="link-cadastro dropbtn" href="#">Cadastros</a>
                    <div class="dropdown-content">
                        <a href="#">Cliente</a>
                        <a href="#">Questionário</a>
                        <a href="#">Ficha de Avaliação</a>
                    </div>
                </li>
                <li>
                    <a class="link-tratamento" href="#">Tratamentos</a>
                </li>
                <li>
                    <a class="link-estoque" href="#">estoque</a>
                </li>
                <li>
                    <a class="link-despesa" href="#">Despesas</a>
                </li>
            </ul>
        </nav>
    </aside>


    <main class="conteudo-principal">
        <div class="container-main">
            <h1 class="titulo-form">Agendamento</h1>

            <form class="formulario" action="ControleCliente" method="POST">
                <fieldset class="fil-main">
                    <legend class="legenda">Confira se os dados estão corretos</legend>
                    <div class="label-div">
                        <label class="labelTCliente">Cliente:</label>
                         <input type="text" disabled value="<">
                        <label class="labelConteudo"><%=idCliente%></label>
                    </div>
                    <div class="label-div">
                        <label class="label-all">Tratamento: </label>
                        <label class="labelConteudo"><%=descricaoTratamento%></label>
                    </div>
                    <div class="label-div">
                        <label class="label-all">Data e Hora: </label>
                        <label class="labelConteudo"><%= horaEscolhida%> <%=dtEscolhida%></label>

                    </div>

                </fieldset>
                <div class="div-botoes">
                <a class="botao-a" href="pedidoRealizar.html?id=1">Voltar</a>                
                <input type="submit" name="salvarItemPedido" class="botao" value="Confirmar Agendamento" title="Clique para enviar os dados do formulário">
                </div>
            </form>
        </div>
    </main>

    <footer class="rodape">
        <p> Copyright &copy; Vital Beauty | Todos os direitos reservados</p>
    </footer>
    <script src="js/botao.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/buscaCep.js"></script>
    <script src="js/mascara.js"></script>
</body>

</html>