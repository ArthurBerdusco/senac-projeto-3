<!DOCTYPE html>
<html lang="pt">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Melhores Computadores</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            background-image: url('imgs/background.svg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        header {
            justify-content: space-between;
            background-color: #333;
            color: white;
            text-align: center;
            position: fixed;
            top: 0;
            width: 100%;
        }

        main {
            margin-top: 120px; /* Aumentei a margem para evitar sobreposição com o cabeçalho fixo */
        }

        .computer-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
        }

        .computer-card {
            background-color: #ffffff;
            border: 1px solid #ccc;
            border-radius: 10px;
            margin: 20px;
            padding: 20px;
            max-width: 300px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s ease-in-out;
        }

        .computer-card:hover {
            transform: scale(1.05);
        }

        .computer-card h2 {
            font-size: 1.8rem;
            color: #007BFF;
            margin-bottom: 10px;
        }

        .computer-card p {
            margin: 10px 0;
            text-align: left;
        }

        .computer-card strong {
            color: #333;
        }

        .computer-card a {
            text-decoration: none;
            color: #007BFF;
            display: block;
            margin-top: 10px;
        }
        .buttonLogin2{

            position: absolute;
            top: 25px;
            left: 30px;
            z-index: 1;



            border-radius: 20px;
            background-color: #191970;
            color: white;
            padding: 10px 40px;
            transition: background-color 0.3s ease;

        }
    </style>
</head>
<body>
<header>
    <h1>Melhores Computadores</h1>
    <a href="#"  class="buttonLogin2" onclick="voltar()">Voltar</a>

</header>
<main>
    <div class="computer-container">
        <c:forEach var="computer" items="${computers}">
            <div class="computer-card">
                <p><strong>Nome do PC: </strong>${computer.name}</p>
                <p><strong>Processador: </strong>${computer.cpu}</p>
                <p><strong>Placa de Video: </strong>${computer.gpu}</p>
                <p><strong>Memoria RAM: </strong>${computer.ram}</p>
                <p><strong>Desempenho: </strong>${computer.desempenho}</p>
            </div>
        </c:forEach>
    </div>
</main>
<script>
    function voltar() {
        window.history.back();
    }
</script>
</body>
</html>