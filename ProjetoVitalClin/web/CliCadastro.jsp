<%-- 
    Document   : CliCadastro
    Created on : 22/05/2018, 15:23:48
    Author     : bruno
--%>

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
        <link rel="stylesheet" href="css/cadastro.css">
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
                        <a class="link-cadastro dropbtn" href="#">Cliente</a>
                        <div class="dropdown-content">
                            <a href="CliCadastro.jsp">Cadastrar</a>
                            <a href="ControleCliente?acao=Listar">Consultar</a>
                            
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
                <h1 class="titulo-form">Cadastro de Clientes</h1>
                <form class="formulario" action="ControleCliente" method="POST">
                    <fieldset class="field">
                        <legend class="legenda">Dados pessoais</legend>

                        <label for="nome">Nome</label>
                        <input type="text" id="nome" size="5" name="txtNome" placeholder="Informe seu nome" title="Preencha com seu nome completo" required autofocus >


                        <label for="CPF">CPF</label>
                        <input type="text" id="CPF" size="5" name="txtCpf" placeholder="Informe seu CPF" title="Informe um CPF válido ex: 44411122299 "  onkeydown="javascript: fMasc(this, mCPF);">


                        <label for="DtNasc">Data Nasc.</label>
                        <input type="date" id="DtNasc" size="5" name="txtDtNasc" placeholder="Digite sua data de nascmiento" title="Preencha com sua data de nascmiento ex: 03/05/1989">


                        <label>Sexo</label>
                        <input type="radio" id="masculino" name="btrSexo" value="M" title="Escolha uma das opções">
                        <label for="masculino">Masculino</label>
                        <input type="radio" id="feminino" name="btrSexo" value="F" title="Escolha uma das opções">
                        <label for="feminino">Feminino</label>  

                    </fieldset>
                    <fieldset>
                        <legend class="legenda">Localização</legend>


                        <label for="CEP">CEP</label>
                        <input type="text" id="CEP" size="5" name="txtCep" placeholder="Ex: 08777-650" title="Preencha com o CEP" required onkeydown="javascript: fMasc(this, mCEP);">


                        <label for="Endereco" class="txEnd">Endereço</label>
                        <input class="inpEnd" type="text" id="Endereco" size="5" name="txtEndereco" placeholder="Rua: José Macedo " title="Preencha com seu endereço, numero, bairro, cidade..." required>


                        <label for="numero">Nº</label>
                        <input class="inpNum" type="text" id="numero" size="5" name="txtNumero" placeholder="Ex: 132" title="Preencha com o numero de sua residência" required>


                        <label for="bairro">Bairro</label>
                        <input type="text" id="bairro" size="5" name="txtBairro" placeholder=" Ex: Bairro vila teste" title="Preencha com seu bairro" required>


                        <label for="cidade">Cidade</label>
                        <input type="text" id="cidade" size="5" name="txtCidade" placeholder="Ex: Mogi das Cruzes" title="Preencha com sua cidade..." required>


                        <label for="estado">Estado</label>
                        <input type="text" id="estado" size="5" name="txtEstado" placeholder="Ex: SP" title="Preencha com seu estado..." required>

                    </fieldset>
                    <fieldset>
                        <legend class="legenda">Contato</legend>

                        <label for="TelFixo">Tel Fixo</label>
                        <input type="text" id="TelFixo" size="5" name="txtTelFixo" placeholder="Informe seu telefone fixo ex: (11) 4444-44444" title="Preencha com seu telefone" required  onkeydown="javascript: fMasc(this, mTel);">

                        <label for="Cel">Cel</label>
                        <input type="text" id="Cel" size="5" name="txtCel" placeholder="Informe o numero de seu celular ex: (11) 95555-4444" title="Preencha com o numero de seu celular" required onkeydown="javascript: fMasc(this, mTel);">

                        <label for="email">E-mail</label>
                        <input type="email" id="email" size="5" name="txtEmail" placeholder="Informe seu email" title="Informe um endereço de email valido ex: exe.exemplo@gmail.com">

                    </fieldset>
                    <fieldset>
                        <legend class="legenda">Segurança</legend>

                        <label for="senha">Senha</label>
                        <input type="password" id="senha" size="5" name="txtSenha" placeholder="Digite sua senha" title="Preencha com sua senha" required>

                        <label for="confirmaSenha">Confirmar senha</label>
                        <input type="password" id="confirmaSenha" size="5" name="txtConfirmaSenha" placeholder="Digite novamente a sua senha" title="Preencha novamente com sua senha" required>

                    </fieldset>
                    <input type="submit" name="acao" class="botao" value="Salvar" title="Clique para enviar os dados do formulário">
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
        <script src="js/testeSenha.js"></script>
    </body>

</html>
