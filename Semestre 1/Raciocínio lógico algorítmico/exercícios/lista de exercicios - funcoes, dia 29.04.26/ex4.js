function avaliarAluno(nota, frequencia) {

    let minNota = nota >= 7 ? true : false;
    let minFreq = frequencia >= 75 ? true : false;

    return minNota == true && minFreq == true ? "Aprovado" :
    minNota == false && minFreq == true ? "Reprovado por nota" :
    minNota == true && minFreq == false ? "Reprovado por falta" :
    minNota == false && minFreq == false ? "Reprovado por ambos" :
    "Dados inválidos";

}