let matrizEx = [[20, 40, 50], [60, 70, 80], [90, 100, 110]];

let matrizRes = [];

for(let i = 0; i < matrizEx.length; i++){

    matrizRes[i] = [];

    for(let j = 0; j < matrizEx[i].length; j++){

        matrizRes[i][j] = matrizEx[j][i];

        console.log(matrizRes[i][j] + " = linha: " + i + " coluna: " + j);

    }

}