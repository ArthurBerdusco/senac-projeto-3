<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        }
        form {
            max-width: 400px;
            margin: 100px auto;
            padding: 50px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .input_div {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: black;
            font-weight: bold;
        }
        .input_name {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .button_div {
            margin-top: 20px;
            text-align: center;
        }
        .button--submit {
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .button--cancel {
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            background-color: red;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
        }
        .button--submit:hover {
            background-color: #45a049;
        }
        h2{
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 50px;
        }
        * {
            margin: 0;
            padding: 0;
        }
        select {
            width: 100%;
            height: 40px;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            background-color: #fff;
        }

        select option {
            color: #000;
            font-size: 16px;
        }

        select option:hover {
            background-color: #eee;
        }

        select option:focus {
            outline: none;
        }

        p{
            color: black;
            font-weight: bold;
            font-family: Roboto;
        }
        h2{
            color: white;
        }
        /*outline: 1px solid blue;

</style>
</head>
<body>
<title>PrimePC</title>
<h2>Adicione uma maquina</h2>

<form action="/create-computer" method="post" onsubmit="return validateInputs()">
    <div class="input_div">
        <label >Nome da Maquina</label>
        <input class="input_name" type="text" name="computer-name" id="computer-name" value="${param.name}">
        <input type="hidden" name="id" id="id" value="${param.id}">
    </div>
    <div class="input_div">
        <label >Processador</label>
        <input class="input_name" type="text" name="computer-cpu" id="computer-cpu">
    </div>
    <div class="input_div">
        <label >Placa de video</label>
        <input class="input_name" type="text" name="computer-gpu" id="computer-gpu">
    </div>
    <div class="input_div">
        <label>Memoria RAM</label>
        <input class="input_name" type="text" name="computer-ram" id="computer-ram">
    </div>
    <p>Tipo de uso</p>
    <input type="radio" name="computer-tipo" id="computer-tipo-gamer" value="gamer" class="radio_txt">Gamer</input>
    <input type="radio" name="computer-tipo" id="computer-tipo-profissional" value="profissional" class="radio_tx">Profissional</input>
    <p></p>
    <select name="uso" id="uso">
        <option value="league-of-legends">League Of Legends</option>
        <option value="warzone">Call of Duty</option>
        <option value="fifa">Fifa</option>
        <option value="the-witcher">The Witcher</option>
        <option value="the-sims">The Sims</option>
        <option value="it-take-two">It Takes Two</option>
        <option value="edicao-de-video">Edicao de vídeo</option>
        <option value="design-grafico">Design grafico</option>
        <option value="desenvolvimento-de-software">Desenvolvimento de software</option>
        <option value="3d">Renderizacao</option>
        <option value="engenharia">Engenharia</option>
        <option value="desenvolvimento-de-jogos">Desenvolvimento de jogos</option>
        <option value="analise-financeira">Analise financeira</option>
    </select>
    <p>Requisitos</p>
    <select name="computer-desempenho" id="computer-desempenho">
        <option value="maximo">Maximo</option>
        <option value="minimo">Minimo</option>
    </select>
    <div class="button_div">
        <button CLASS="button--submit" type="submit">Salvar</button>
        <a class="button--cancel" href="find-all-computers">Cancelar</a>
    </div>
</form>

<script>
    function validateInputs() {
        const inputs = document.querySelectorAll('.input_name');
        let allInputsFilled = true;

        for (const input of inputs) {
            if (!input.value.trim()) {
                allInputsFilled = false;
                break;
            }
        }

        if (!allInputsFilled) {
            alert('Por favor, preencha todos os campos obrigatorios.');
            return false;
        }

        return true;
    }
</script>

