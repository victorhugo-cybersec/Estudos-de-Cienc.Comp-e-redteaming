public class main {

    public static void main(String[] args){

        Pessoa homem = new Pessoa();
        homem.setAltura(1.80);
        homem.setDataNasc("02/11/2007");
        homem.setNome("Victor");
        System.out.println(homem.calculoIdade());

        Televisao tvacabodasilva = new Televisao();
        ControleRemoto meu_controle = new ControleRemoto();
        meu_controle.aumentaVolume(tvacabodasilva);
        meu_controle.trocaCanal(tvacabodasilva, 20.09);
        meu_controle.getCanal(tvacabodasilva);
        meu_controle.getVolume(tvacabodasilva);
        meu_controle.diminuiVolume(tvacabodasilva);

    }

}