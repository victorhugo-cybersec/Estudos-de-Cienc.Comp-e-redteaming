const axios = require("axios");

async function getDados() {

    try{

        const resposta = await axios.get('http://jsonplaceholder.typicode.com/users/1');

        console.log(resposta.data);

    } catch (error) {

        console.log(error);

    }

}

getDados();