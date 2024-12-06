<!DOCTYPE html>
<html>
<head>

    <style>

        html, body {

            overflow: hidden;

        }


        body {

            font-family: Arial, sans-serif;

            background-color: #f4f4f4;

            background-image: url('imgs/background.png');

            background-size: cover;

            background-position: center;

            background-repeat: no-repeat;

            text-align: center;

            align-items: center;

            height: 95vh;

            margin: 0;

            padding: 0;

        }


        .container {

            display: flex;

            flex-direction: column;

            align-items: center;

            justify-content: center;

            height: 70vh;

        }


        .buttons {

            display: flex;

        }


        .button {

            background: transparent;

            color: #0074D9;

            border: none;

            padding: 10px;

            margin: 10px;

            border-radius: 5px;

            text-align: center;

            text-decoration: none;

            display: flex;

            flex-direction: column;

            align-items: center;

        }


        .button img {

            max-width: 200px;

            height: auto;

        }


        h1, p {

            color: #f4f4f4;

            margin-right: 30px;

        }


        header {

            display: flex;

            justify-content: flex-end;

            align-items: center;

            background-color: black;

            color: white;

            padding: 10px 20px;

        }


        h2 {

            color: #f4f4f4;

            text-decoration: none;

        }


        a {

            font-size: 26px;

            color: white;

            text-decoration: none;

        }


        .links {

            display: flex;

            font-size: 2rem;

            justify-content: space-between;

        }

        .logo {

            position: absolute;

            top: 0;

            left: 30px;

            z-index: 1;

        }

        .buttonCadastrarPC {

            position: absolute;

            top: 100px;

            left: 1650px;

            border-radius: 25px;

            background-color: #00af73;

            color: white;

            padding: 10px 35px;

            transition: background-color 0.3s ease;

        }


        .btnCadastro {

            display: flex;

            justify-content: flex-end;

            align-items: center;

            border-radius: 20px;

            background-color: #191970;

            color: white;

            padding: 2px 8px;

        }


        .btnSair {

            display: flex;

            justify-content: flex-end;

            align-items: center;

            border-radius: 20px;

            background-color: #191970;

            color: white;

            padding: 2px 8px;

            left: 40px;

        }
        .logo {
            position: absolute;
            top: 0;
            left: 30px;
            z-index: 1;
        }


    </style>


<%
    String username = (String) session.getAttribute("username");
%>

<body>


<div>


    <header class="header">


        <a href="/home.jsp">
            <img src="imgs/logo.svg" class="logo" alt="Logo" style="width: 350px; height: 150px; position: absolute; z-index: 1">
        </a>

        <h1 class="header">Bem-vindo, <%= username %>
        </h1>

        <a class="" href="/login.jsp">Sair</a>

    </header>
</div>
<div class="container">

    <h1>Monte seu PC</h1>

    <p>Qual a finalidade?</p>

    <div class="buttons">

        <button class="button" type="type1">

            <h2>Para Jogos</h2>

            <a href="/jogos.jsp"><img class="button img" src="imgs/jogos.svg" alt="Imagem 1"></a>

        </button>

        <button class="button" type="type2">

            <h2>Para Trabalho</h2>

            <a href="/profissional.jsp"><img class="button img" src="imgs/trabalho.svg" alt="Imagem 2"></a>

        </button>

    </div>

</div>
</body>

<script>

</script>

</html>