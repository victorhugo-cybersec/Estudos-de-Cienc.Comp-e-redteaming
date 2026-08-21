let matriz = [[1,2,3], [4,5,6], [7,8,9]];

let total = 0;

for(let i = 0; i < matriz.length; i++){

    total = 0;

    for(let j = 0; j < matriz[i].length; j++){

        total += matriz[i][j];

        if(j == matriz[i].length - 1){

            console.log("Soma Linha " + (i + 1) + " = " + total);

        }

    }

}