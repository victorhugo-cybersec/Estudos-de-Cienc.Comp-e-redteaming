function calcularTempo(distancia, velocidade) {

    if(distancia >= 0 && velocidade >= 0) {

        let tempo = (distancia / velocidade);

        let horas = parseInt(tempo);
        let min = Math.round((tempo - horas) * 60);

        if(min == 60){

            horas++;
            min--;

        }

        return horas + " horas e " + min + " minutos";

    } else {return "Valores inválidos";}

}