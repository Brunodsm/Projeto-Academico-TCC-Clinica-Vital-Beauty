<%-- 
    Document   : AgendarHora
    Created on : 06/06/2018, 10:59:38
    Author     : bruno
--%>

<%@page import="modelo.Horario"%>
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
    <link rel="stylesheet" href="css/AgendarHorario.css">
    <!-- Fontes  -->
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
</head>
 <%
     
    ArrayList<Horario> listaHorarios = (ArrayList<Horario>) request.getAttribute("listaHorarios");
    String dtEscolhida = (String) request.getAttribute("dtEscolhida");
    int idTratamento = (int) request.getAttribute("idTratamento").hashCode();
    int idCliente = (int) request.getAttribute("idCliente").hashCode();
    
 
 
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
            <h1 class="titulo-form">Realizar Agendamento</h1>
           
            <form class="formulario" action="ControleAgendamento?idTrat=<%=idTratamento%>&dtEscolhida=<%=dtEscolhida%>&idCliente=<%=idCliente%>" method="POST">
            <fieldset>
                <legend class="legenda">Escolha um horário</legend>
                <label for="select" class="labelCargo">Horários disponíveis</label>
                <select class="combo" name="cmbHorario">
                     <%
                                for (Horario h : listaHorarios) {

                                    if (h.getStatus().equals("Disponível")) {
                            %>
                            

                            <option value="<%=h.getDescricao()%>"><%=h.getDescricao()%></option>

                            <%
                            } else {
                            %>

                            <%
                                    }

                                }
                            %> 
                </select>  </fieldset>
                <input type="submit" name="acao" class="botao" value="Escolher horário" title="Clique para enviar os dados do formulário">
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