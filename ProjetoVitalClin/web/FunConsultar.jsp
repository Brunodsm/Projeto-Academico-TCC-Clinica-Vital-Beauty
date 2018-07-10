<%-- 
    Document   : FunConsultar
    Created on : 03/06/2018, 00:12:23
    Author     : bruno
--%>

<%@page import="modelo.Funcionario"%>
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
        <link rel="stylesheet" href="css/consultaFuncionario.css">
        <link rel="stylesheet" href="css/tabela.css">
        <!-- Fontes  -->
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    </head>

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
                <h1 class="titulo-form">Consultar dados dos funcionários</h1>
                <%        //recuperar a lista
                    ArrayList<Funcionario> listaFuncionario = (ArrayList<Funcionario>) request.getAttribute("listaFuncionario");
                %>
                <form class="formulario" action="ControleFuncionario" method="POST">
                    <fieldset class="field">


                        <label for="buscaNome">Buscar por nome</label>
                        <input type="text" id="buscaNome" size="5" name="txtBuscaNome" placeholder="Digite o nome do cliente" title="Preencha com o nome do cliente" autofocus>


                        <label for="buscaCargo">Buscar por Cargo</label>
                        <input type="text" id="buscaCargo" size="5" name="txtBuscaCargo" placeholder="Digite o cargo do funcionário" title="Informe o cargo do funcionário ">

                    </fieldset>

                    <input type="submit" name="acao" class="botao" value="Listar" title="Clique para buscar o cliente">
                </form>

                <div class="container-table">
                    <table class="table-fill">
                        <thead class="cabecalho-table">
                            <tr>
                                <th class="text-left">Nome</th>
                                <th class="text-left">Cargo</th>
                                <th class="text-left">Telefone</th>
                                <th class="text-left">Ações</th>
                            </tr>
                        </thead>
                        <tbody class="table-hover">
                            <%
                                for (Funcionario f : listaFuncionario) {
                            %>

                            <tr>
                                <td class="text-left"><%= f.getNome()%></td>
                                <td class="text-left"><%= f.getCargo().getDescricao() %></td>
                                <td class="text-left"><%= f.getCpf()%></td>
                                <td class="text-left">
                                    <a href="ControleFuncionario?acao=alterar&id=<%= f.getId()%>">
                                        <input type="submit" name="acao" class="botao-table-e" value="alterar" title="Clique para editar dados do cliente">
                                    </a>
                                    <a href="ControleFuncionario?acao=excluir&id=<%= f.getId()%>">
                                        <input type="submit" name="acao" class="botao-table-d" value="Excluir" title="Clique para excluir cliente">
                                    </a>
                                    <a href="ControleFuncionario?acao=alterar&id=<%= f.getId()%>">
                                        <input type="submit" name="acao" class="botao-table-m" value="Mais..." title="Clique para editar dados do cliente">
                                    </a>
                                </td>
                            </tr>
                             <%
                                }
                            %>

                        </tbody>
                    </table>
                </div>

            </div>
        </main>

        <footer class="rodape">
            <p> Copyright &copy; Vital Beauty | Todos os direitos reservados</p>
        </footer>
        <script src="js/botao.js"></script>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/mascara.js"></script>

    </body>

</html>