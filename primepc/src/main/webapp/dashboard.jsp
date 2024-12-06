<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>

    <style>
        body {
            font-size: 16px;
            margin: 0;
            padding: 0;
            background-image: url('imgs/background.svg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 90vh;
            background-color: black;
            font-family: Arial, sans-serif; /* Adicione uma fonte padrão para melhor legibilidade */
        }

        div {
            max-width: 90%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow-x: auto; /* Adicione rolagem horizontal para tabelas grandes */
        }

        h1 {
            color: #333;
            text-align: center; /* Centralize o título */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        form {
            display: flex; /* Use flex para alinhar os botões e links */
            align-items: center;
        }

        .botao-deletar {
            background-color: #d9534f;
            color: #fff;
            border: none;
            padding: 8px 12px;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 5px; /* Adicione espaço entre os botões */
        }

        .botao-atualizar {
            background-color: #228B22;
            color: #fff;
            border: none;
            padding: 8px 12px;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 5px;
            text-decoration: none;
        }



        button:hover {
            background-color: #c9302c;
        }

        a.button {
            display: inline-block;
            text-decoration: none;
            color: #fff;
            background-color: #337ab7;
            padding: 8px 12px;
            border-radius: 4px;
            margin-left: 5px;
            transition: background-color 0.3s ease; /* Adiciona uma transição suave na cor de fundo ao passar o mouse */
        }

        a.button:hover {
            background-color: #286090; /* Cor alterada ao passar o mouse */
        }
    </style>
</head>
<body>
<div>
    <h1>Computadores</h1>
    <a class="button" href="index.jsp">Cadastrar Novo Computador</a>

    <table>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Processador</th>
            <th>Placa de Video</th>
            <th>Memoria RAM</th>
            <th>Uso</th>
            <th>Jogo</th>
            <th>Desempenho</th>
            <th>Gerenciar</th>
        </tr>
        <c:forEach var="computer" items="${computers}">
            <tr>
                <td>${computer.id}</td>
                <td>${computer.name}</td>
                <td>${computer.cpu}</td>
                <td>${computer.gpu}</td>
                <td>${computer.ram}</td>
                <td>${computer.tipo}</td>
                <td>${computer.uso}</td>
                <td>${computer.desempenho}</td>
                <td>
                    <form action="/delete-computer" method="post">
                        <a class="botao-atualizar" href="index.jsp?id=${computer.id}&name=${computer.name}">Atualizar</a>
                        <input type="hidden" id="id" name="id" value="${computer.id}">
                        <button class="botao-deletar" type="submit">Deletar</button>
                    </form>

                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>