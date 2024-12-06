
<html>

<head>
    <style>
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

        .container_buttons {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .buttons_games {

            flex: 1;
            max-width: 174px;
            height: 52px;
            background: white;
            border-radius: 37.50px;
            font-size: 1.2rem;
            color: #000FA6;
            font-family: Bahnschrift;
            margin: 0px 15px 0px 15px;
        }

        .links {
            margin-top: 20px;
            display: flex;
            font-size: 2rem;
        }

        a {
            color: white;
            margin-right: 20px;
            text-decoration: none;
            margin-top: 20px;
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

        .card.moba{
            display: block;
        }
        .card.esportes{
            display: block;
        }
        .card.fps{
            display: block;
        }
        .card.rpg{
            display: block;
        }
        .card.simulacao{
            display: block;
        }
        .card.puzzle{
            display: block;
        }


        .card img {
            width: 450px;
            height: 450px;

        }

        .card:hover {
            transform: scale(1.05);
        }
        .text_games{
            text-align: initial;
            color: white;
            font-weight: bold;
            margin-left: 40px;

        }
        .catalog{
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

        .logo {
            position: absolute;
            top: 0;
            left: 30px;
            z-index: 1;
        }
        .img{
            margin-right: 20px;
            text-decoration: none;
            margin-top: 10px;
        }
        .usuario {
            position: absolute;
            width: 80px;
            height: 80px;
            top: 30px;
            left: 1800px;
            z-index: 1;
        }

    </style>
</head>
<body class="container">
<header class="container_head">
    <a href="/usuario.jsp">
        <img src="imgs/logo.svg" class="logo" alt="Logo" style="width: 350px; height: 150px; position: absolute; z-index: 1">
    </a>
    <a href="/usuario.jsp">
        <img src="imgs/usuario.svg" class="usuario" alt="Logo">
    </a>
    </div>
</header>
<div>
    <div>
        <h1 class="categoria">
            Categorias
        </h1>
    </div>
        <div class="container_buttons">
            <button class="buttons_games" onclick="filterComputers('all')">TODOS</button>
            <button class="buttons_games" onclick="filterComputers('edicao')">EDICAO DE VIDEO</button>
            <button class="buttons_games" onclick="filterComputers('design')">DESIGN GRAFICO</button>
            <button class="buttons_games" onclick="filterComputers('software')">DESENVOLVIMENTO DE SOFTWARE</button>
            <button class="buttons_games" onclick="filterComputers('3d')">RENDERIZACAO 3D</button>
            <button class="buttons_games" onclick="filterComputers('engenharia')">ENGENHARIA</button>
            <button class="buttons_games" onclick="filterComputers('jogo')">DESENVOLVIMENTO DE JOGOS</button>
            <button class="buttons_games" onclick="filterComputers('financeira')">ANALISE FINANCEIRA</button>
        </div>
    <div class="catalog">

        <div class="card edicao" onclick="redirectToEspecificacao('video')">
        <img src="imgs/profissional/edicao.svg" alt="Edicao de Video" style="position: relative; z-index: 1">
        <p class="text_games">Edicao de Video</p>
        </div>

        <div class="card design" onclick="redirectToEspecificacao('design')">
        <img src="imgs/profissional/design.svg" alt="Design Grafico" style="position: relative; z-index: 1">
        <p class="text_games">Design Grafico</p>
        </div>

        <div class="card software" onclick="redirectToEspecificacao('software')">
            <img src="imgs/profissional/software.svg" alt="Desenvolvimento de Software" style="position: relative; z-index: 1;">
            <p class="text_games">Desenvolvimento de Software 2023</p>
        </div>

        <div class="card 3d" onclick="redirectToEspecificacao('3d')">
            <img src="imgs/profissional/3d.svg" alt="Reenderizacao 3D" style="position: relative; z-index: 1;">
            <p class="text_games">Reenderizacao 3D</p>
        </div>

        <div class="card engenharia" onclick="redirectToEspecificacao('engenharia')">
            <img src="imgs/profissional/engenharia.svg" alt="Engenharia" style="position: relative; z-index: 1;">
            <p class="text_games">Engenharia</p>
        </div>

        <div class="card jogo" onclick="redirectToEspecificacao('jogo')">
            <img src="imgs/profissional/jogo.svg" alt="Desenvolvimento de Jogos" style="position: relative; z-index: 1;">
            <p class="text_games">Desenvolvimento de Jogos</p>
        </div>

        <div class="card financeira" onclick="redirectToEspecificacao('financeira')">
            <img src="imgs/profissional/financeiro.svg" alt="Analise Financeira" style="position: relative; z-index: 1;">
            <p class="text_games">Analise Financeira</p>
        </div>

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

        function redirectToEspecificacao(gameName) {
            window.location.href = '/especificacao?nome=' + encodeURIComponent(gameName);
        }


</script>
</body>

</html>
