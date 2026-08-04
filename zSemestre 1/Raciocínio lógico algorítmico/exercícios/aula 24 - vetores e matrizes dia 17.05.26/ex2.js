let temp = [28, 32, 25, 30, 27, 35, 29];

let sum = 0;

let maisQuente = "indefinido";

let media = 0;

for(let i = 0; i < temp.length; i++){

    sum += temp[i];

    if(maisQuente == "indefinido" || temp[i] > temp[maisQuente]){

        maisQuente = i;

    }

}

media = sum / temp.length;

console.log("A média da temperatura é de " + media.toFixed(2) + " e a temperatura mais alta é a de " + temp[maisQuente] + "°C.");
