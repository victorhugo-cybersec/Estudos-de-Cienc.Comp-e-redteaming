function bubbleSort(matriz) {

  for (let i = 0; i < matriz.length - 1; i++) {

    for (let j = 0; j < matriz.length - 1 - i; j++) {

      if (matriz[j] > matriz[j + 1]) {

        let temp = matriz[j];

        matriz[j] = matriz[j + 1];
        
        matriz[j + 1] = temp;

      }

    }
  }

  return matriz;
}

const numeros = [5, 3, 8, 4, 2];

console.log(bubbleSort(numeros));