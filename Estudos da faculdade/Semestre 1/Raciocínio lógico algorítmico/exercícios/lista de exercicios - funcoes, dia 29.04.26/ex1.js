function avaliarIMC(p, a) {

    if(p > 0 && a > 0){

        let imc = p / (a * a);

        return imc < 18.5 ? "Abaixo do peso" : 
        imc >= 18.5 && imc < 25 ? "Peso normal" :
        imc >= 25 && imc < 30 ? "Sobrepeso" :
        imc >= 30 ? "Obesidade" : "Dados inválidos";
        
    } else {

        return "Dados inválidos";

    }

}