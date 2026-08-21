function calcularContaEnergia(consumo) {

    let custo = consumo <= 100 ? consumo * 0.50 :
    consumo >= 101 && consumo <= 200 ? consumo * 0.75 :
    consumo > 200 ? consumo : "Valor inválido";

    if(custo > 150) {

        return custo * 1.10;

    }

    return custo;

}