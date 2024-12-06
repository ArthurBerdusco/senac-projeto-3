<!DOCTYPE html>
<html>
<head>
    <title>PrimePC - Login</title>
    <style>


        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            background-image: url('imgs/background.svg'); /* Caminho relativo para a imagem */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            text-align: center;
            align-items: center;
            height: 95vh;
            margin: 0;
            padding: 0;
        }


        h2 {
            color: #fff;
        }

        form {
            background-color: #fff;
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        label {
            display: block;
            margin: 10px 0;
        }

        input[type="text"],
        input[type="password"] {
            width: 250px;
            padding: 10px;
            margin: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .error {
            color: red;
        }

        .logo {
            position: absolute;
            top: 0;
            left: 30px;
            z-index: 1;
        }
        .buttonLogin2{
            position: absolute;
            right: 100px;
            border-radius: 20px;
            background-color: #191970;
            color: white;
            padding: 10px 40px;
            transition: background-color 0.3s ease;

        }


    </style>
</head>
<header>
    <a>
        <img src="imgs/logo.svg" class="logo" alt="Logo" style="width: 350px; height: 150px; z-index: 1">
        <a href="/cadastro.jsp" class="buttonLogin2">Cadastro</a>
    </a>
</header>
<body class="container">
<h2>Login</h2>
<form action="/login" method="post">
    <label for="username">Usuario:</label>
    <input type="text" name="username" id="username">
    <br>
    <label for="password">Senha:</label>
    <input type="password" name="password" id="password">
    <br>
    <button type="submit">Login</button>
</form>
<script>
    function validateForm() {
        var username = document.getElementById("new-username").value;
        var password = document.getElementById("new-password").value;
        var errorMessage = document.getElementById("error-message");

        if (username.trim() === "" || password.trim() === "") {
            errorMessage.textContent = "Campos vazios. Preencha todos os campos.";
            return false;
        }
        errorMessage.textContent = "";

    }
</script>
</body>
</html>
