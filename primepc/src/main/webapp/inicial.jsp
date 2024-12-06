<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            margin: 0;
            padding: 0;
        }

        header {
            color: #f4f4f4;
            padding: 10px;
            display: flex;
            justify-content: flex-end;
            align-items: center;
            margin-left: 2px;
            position: relative;
            top: 47px;
        }

        .container {
            max-width: 100%;
            margin: 0 auto;
            padding: 20px;
        }

        .text {
            font-size: 3rem;
            margin-right: 30px;
            margin-top: 30px;
            text-align: right;
            color: white;
            padding: 50px;
            font-family: Roboto;
        }

        .container_buttons {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .links {
            display: flex;
            font-size: 2rem;
        }

        a {
            color: white;
            margin-right: 5px;
            text-decoration: none;
        }

        .links a:first-child {
            margin-right: 20px;
            /* margin-left: 1300px; */
        }

        ::-webkit-scrollbar {
            width: 12px;
            background-color: #f1f1f1;
        }

        ::-webkit-scrollbar-thumb {
            background-color: #666;
            border-radius: 6px;
        }

        ::-webkit-scrollbar-track {
            background-color: #f1f1f1;
        }

        ::-webkit-scrollbar-button {
            display: none;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .pcgamer-container {
            display: flex;
        }

        .games {
            position: absolute;
            top: 280px;
            left: 80px;
            z-index: 1;
        }

        .texto {
            position: absolute;
            top: 250px;
            left: 1205px;
            color: white;
            padding: 0;
            text-align: right;
            font-family: "Roboto", bold;
            font-size: 95px;
        }

        .texto2 {
            position: absolute;
            top: 600px;
            left: 1225px;
            color: white;
            padding: 0;
            text-align: left;
            font-family: "Roboto", bold;
            font-size: 30px;
        }

        .tipoPC {
            position: absolute;
            top: 145px;
            left: 205px;
            color: white;
            font-family: "Arial", sans-serif;
            font-size: 25px;
            letter-spacing: 3px;
        }

        .logo {
            position: absolute;
            top: -68px;
            left: 20px;
            z-index: 1;
        }
        .buttonLogin{
            position: absolute;
            top: -20px;
            left: 1570px;
            border-radius: 20px;
            background-color: #f8f8ff;
            color: black;
            padding: 10px 40px;
            transition: background-color 0.3s ease;
        }
        .buttonLogin2{
            position: absolute;
            top: -20px;
            left: 1700px;
            border-radius: 20px;
            background-color: #191970;
            color: white;
            padding: 10px 40px;
            transition: background-color 0.3s ease;
        }
    </style>
</head>

<body class="container">
    <header class="container_head">
        <a>
            <img src="imgs/logo.svg" class="logo" alt="Logo"
                style="width: 350px; height: 150px; position: absolute; z-index: 1">
        </a>
        <a href="/login.jsp" class="buttonLogin">Login</a>
        <a href="/cadastro.jsp" class="buttonLogin2">Cadastro</a>
    </header>
    <div class="tipoPC">
        | PC Gamer | PC Profissional |
    </div>
    <div class="texto">
        Monte o seu<br>computador<br>dos sonhos!
    </div>
    <div class="texto2">
        Com apenas um clique voce pode definir<br>as configuracoes para o seu PC, de acordo<br>com as suas
        necessidades!
    </div>
    <div class="pcgamer-container">
        <img src="imgs/games.svg" class="games" alt="Opções de computadores"
            style="bottom: 15%; left: 16px; width:60%; height: 650px; position: absolute; z-index: 1">
    </div>
</body>

</html>