const axios = require("axios");

async function getDadosFetch() {

    const resposta = fetch('https://api.open-meteo.com/v1/forecast?latitude=-23.55&longitude=-46.63&current_weather=true', {method: GET, headers: {"Content-type": application/json,},});

    if(!resposta.ok){

        throw new Error("Erro inesperado");

    }

    const dados = await resposta.json();

    console.log(dados);

}

async function getDadosAxios() {

    try{

        const resposta = await axios.get('https://catfact.ninja/fact');

        console.log(resposta);

    } catch (error) {

        console.log(error);

    }

}

//getDadosFetch();
//getDadosAxios();