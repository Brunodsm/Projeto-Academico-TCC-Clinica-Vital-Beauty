<%-- 
    Document   : cliExcluidoSucesso
    Created on : 29/05/2018, 14:02:45
    Author     : bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    <link rel="stylesheet" href="css/cadastro.css">
    <link rel="stylesheet" href="css/cliExcluidoSucess.css">
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
            <div class="div-main">
            <img class="img" src="img/deleteUser.png">
            <h1 class="titulo-form">O cliente foi excluido com sucesso!</h1>

                <div class="div-a">
                <a class="botao-a" href="ControleCliente?acao=Listar">Voltar</a>
                <a class="botao-a" href="pedidoRealizar.html?id=1">Ir para home</a>
                 </div>
            </div>


        </div>
    </main>

    <footer class="rodape">
        <p> Copyright &copy; Vital Beauty | Todos os direitos reservados</p>
    </footer>
    <script src="js/botao.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>

</body>

</html>