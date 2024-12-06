<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PrimePC</title>
    <style>
        body {
            font-size: 16px;
            margin: 0;
            padding: 0;
            background-image: url('imgs/background.svg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 95vh;
        }
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: black;
            color: white;
            padding: 10px 20px;
        }
        .categoria {
            font-size: 3rem;
            margin-left: 185px;
            text-align: initial;
            color: white;
            padding: 50px;
            font-family: Roboto;
        }

        .logo {
            position: absolute;
            top: -10px;
            left: 30px;
            z-index: 1;
        }
        .container_buttons {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .buttons_games {
            flex: 1;
            height: 52px;
            background: white;
            border-radius: 37.50px;
            font-size: 1.2rem;
            color: #000FA6;
            font-family: Bahnschrift;
            margin: 0 20px 0 20px;
        }

        .links {
            display: flex;
            font-size: 2rem;
        }

        a {
            color: white;
            margin-right: 20px;
            text-decoration: none;
        }

        .card {
            width: 100%;
            max-width: 480px;
            max-height: 480px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            text-align: center;
            cursor: pointer;
            margin: 5px;
            transition: transform 0.2s;
            margin-right: 150px;
            position: relative;
        }
        .card img {
            width: 450px;
            height: 450px;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .text_games {
            text-align: initial;
            color: white;
            font-weight: bold;
            margin-left: 40px;
        }
        .catalog {
            margin-top: 100px;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            grid-gap: 300px;
            grid-auto-flow: column;
            overflow-x: auto;
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
        }
    </style>
</head>

<body class="container">
<<<<<<< HEAD:primepc/src/main/webapp/profissional.jsp
    <header class="container_head">
        <h3 class="logo">PrimePC</h3>
        <div class="links">
            <a href="/home">Home</a>
            <a href="/usuario">Usuario</a>
        </div>
    </header>
    <div>
        <div>
            <h1 class="categoria">
                Categorias
            </h1>
=======
<header class="container_head">
    <a href="/home.jsp">
        <img src="imgs/logo.svg" class="logo" alt="Logo" style="width: 350px; height: 150px; position: top; z-index: 1">
    </a>
    <div class="links">
        <a href="/home.jsp">Home</a>
        <a href="/usuario.jsp">Usuario</a>
    </div>
</header>
<div>
        <h1 class="categoria">
            Computadores para uso profissional
        </h1>
    </div>

    <div class="catalog">
        <div class="card" onclick="window.location.href='/especificacao.jsp'">
            <img src="imgs/computer.jpg" alt="League Of Legends">
            <p class="text_games">Pacote Office</p>
        </div>

        <div class="container_buttons">
            <button class="buttons_games" onclick="filterComputers('all')">TODOS</button>
            <button class="buttons_games" onclick="filterComputers('edicao-video')">EDICAO DE VIDEO</button>
            <button class="buttons_games" onclick="filterComputers('design-grafico')">DESIGN GRAFICO</button>
            <button class="buttons_games" onclick="filterComputers('desenvolvimento-software')">DESENVOLVIMENTO DE SOFTWARE</button>
            <button class="buttons_games" onclick="filterComputers('renderizacao-3d')">RENDERIZACAO 3D</button>
            <button class="buttons_games" onclick="filterComputers('engenharia')">ENGENHARIA</button>
            <button class="buttons_games" onclick="filterComputers('desenvolvimento-jogos')">DESENVOLVIMENTO DE JOGOS</button>
            <button class="buttons_games" onclick="filterComputers('analise-financeira')">ANALISE FINANCEIRA</button>
        </div>

        <div class="catalog">
            <!-- Adicione os cards para as novas categorias de computadores profissionais -->
            <div class="card mini-pc" onclick="window.location.href='/especificacao.jsp'">
                <img src="imgs/lolsvg.svg" alt="League Of Legends" style="position: relative; z-index: 1">
                <p class="text_games">League Of Legends</p>
            </div>

            <div class="card fps" onclick="window.location.href='/especificacao.jsp'">
                <img src="imgs/warzonesvg.svg" alt="Warzone" style="position: relative; z-index: 1">
                <p class="text_games">Warzone</p>
            </div>

            <div class="card esportes" onclick="window.location.href='/especificacao.jsp'">
                <img src="imgs/fifasvg.svg" alt="Fifa" style="position: relative; z-index: 1;">
                <p class="text_games">Fifa 2023</p>
            </div>
            <div class="card rpg" onclick="window.location.href='/especificacao.jsp'">
                <img src="imgs/witcher.svg" alt="The Witcher 3" style="position: relative; z-index: 1;">
                <p class="text_games">Fifa 2023</p>
            </div>
        </div>
    </div>
    <script>
        function filterComputers(category) {
            const cards = document.querySelectorAll('.card');

            cards.forEach(card => {
                if (category === 'all' || card.classList.contains(category)) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });
        }
    </script>
</body>
</html>
