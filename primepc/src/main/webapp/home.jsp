<%
    String username = (String) session.getAttribute("username");
%>

<!DOCTYPE html>
    <html lang="pt-br">
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
            padding: 40px;
            font-family: Roboto;
        }

        .container_buttons {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .container2 {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #FFF;
        }

        .card, .card2 {
            background-image: linear-gradient(#333, #333);
            overflow: hidden;
            border-radius: 16px;
            max-width: 360px;
            width: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all .5s;
            margin-right: 20px;
            margin-top: -190px;
        }

        .card:last-child, .card2:last-child {
            margin-right: 0;
        }

        .card:hover {
            background-image: linear-gradient(#1919e6, #2424a8);
        }

        .card .img1,
        .card2 .img1 {
            background-image: url("imgs/lol.jpg");
            background-position: center;
            background-size: cover;
            width: 360px;
            height: 200px;
            display: flex;
            align-items: center;
            justify-content: center;
            opacity: 0.7;
            transition: all 0.8s;
            z-index: 2;
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        }

        .card .img2,
        .card2 .img2 {
            background-image: url("imgs/img2.jpg");
            background-position: center;
            background-size: cover;
            width: 360px;
            height: 200px;
            display: flex;
            align-items: center;
            justify-content: center;
            opacity: 0.7;
            transition: all 0.8s;
            z-index: 2;
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        }

        .card:hover .img1,
        .card2:hover .img1,
        .card:hover .img2,
        .card2:hover .img2 {
            opacity: 1;
            width: 440px;
        }

        .card .img span {
            font-size: 24px;
            font-style: italic;
            font-weight: 100;
            text-transform: uppercase;
        }

        .card .content {
            padding: 0 20px;
            overflow: hidden;
            height: 0;
            transition: all .8s;
            transform: translateY(30px);
            opacity: 0;
        }

        .card:hover .content {
            padding: 20px;
            height: 260px;
            transform: translateY(0);
            opacity: 1;
        }

        .card .content p {
            margin-bottom: 0;
        }

        .card .content .title {
            font-size: 20px;
            font-weight: bold;
        }

        .card .content .desc {
            font-size: 14px;
            font-weight: 100;
            opacity: .7;
        }

        .card .arrow {
            padding: 15px;
            font-size: 28px;
            transform: rotate(-180deg);
        }

        .card:hover .arrow {
            transform: rotate(0);
        }

        .links {
            display: flex;
            font-size: 2rem;
        }

        h1, p {
            color: #f4f4f4;
            margin-right: 30px;
        }

        a {
            font-size: 26px;
            color: white;
            text-decoration: none;

        }

        .links a:first-child {
            margin-right: 20px;
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
        nav {
            position: absolute;
            top: 20px;
            left: 800px;
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            background-color: #191970;
            border-radius: 20px;
            padding: 10px;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
        }
        .texto {
            position: absolute;
            top: 200px;
            left: 650px;
            color: white;
            padding: 0;
            text-align: right;
            font-family: "Roboto", bold;
            font-size: 50px;
        }

    </style>
</head>

<body class="container">
    <nav>
        <a href="/home.jsp" style="color: #696969;">Home</a>
        <a href="/jogos.jsp">Jogos</a>
        <a href="/profissional.jsp">Profissional</a>
        <a href="/inicial.jsp">Sair</a>
    </nav>

    <header class="header">
        <a href="/home.jsp">
            <img src="imgs/logo.svg" class="logo" alt="Logo" style="width: 350px; height: 150px; position: absolute; z-index: 1">
        </a>
        <h1>Ola, <%= username %></h1>
    </header>
    <div class="texto">
            Ultimas novidades do mercado
        </div>
    <div class="container2">
        <div class="card">
            <div class="img img1">
                <span>Mundo dos games</span>
            </div>
            <div class="content">
                <span class="title">Worlds 2023: T1 atropela Weibo e e tetracampea mundial de LoL</span>
                <p class="desc">
                    A T1 e a grande campea do Worlds 2023, o Mundial de League of Legends. A equipe, que atropelou a Weibo Gaming neste domingo (19) por 3x0, cravou seu quarto titulo e se isolou como a maior vencedora da historia. O midlaner sul-coreano Lee "Faker" Sang-hyeok, agora e oficialmente o maior vencedor de mundiais na historia da modalidade.
                </p>
            </div>
            <div class="arrow">
                <span>&#8673;</span>
            </div>
        </div>
        <div class="card" href="/jogos.jsp">
            <div class="img img2">
                <span>Computadores</span>
            </div>
            <div class="content">
                <span class="title">Quanto pagar em placa de vídeo na Black Friday? Veja um guia</span>
                <p class="desc">
                    Muitos aproveitam para montar seus PCs ou dar upgrades nos seus computadores durante a Black Friday, inclusive suas placas de video. No entanto, com muitas opcoes para escolher, e bom ter um guia para saber se as promocoes valem a pena ou nao.

                    Acompanhe a tabela completa montada pela tecmundo brasil como guia de promocoes: https://www.tecmundo.com.br/produto/274025-pagar-placa-video-black-friday-veja-guia-precos.htm.
                </p>
            </div>
            <div class="arrow">
                <span>&#8673;</span>
            </div>
        </div>
    </div>
</body>
</html>
