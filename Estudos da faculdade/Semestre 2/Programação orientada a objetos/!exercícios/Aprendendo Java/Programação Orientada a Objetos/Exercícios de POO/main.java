import java.util.Scanner;

public class main {

    public static void main(String[] args){

        Scanner dados = new Scanner(System.in);

        Pessoa homem = new Pessoa("Victor", "02/11/2007", 1.80);
        System.out.println(homem.calculoIdade());

        Televisao tvacabodasilva = new Televisao();
        ControleRemoto meu_controle = new ControleRemoto();

        meu_controle.aumentaVolume(tvacabodasilva);
        meu_controle.trocaCanal(tvacabodasilva, 20.09);
        
        System.out.println(meu_controle.getCanal(tvacabodasilva));
        System.out.println(meu_controle.getVolume(tvacabodasilva));
        
        meu_controle.diminuiVolume(tvacabodasilva);

        System.out.println(meu_controle.getCanal(tvacabodasilva));
        System.out.println(meu_controle.getVolume(tvacabodasilva));
        
        Agenda agenda = new Agenda();
        agenda.armazenarPessoas("Victor", "02/11/2007", 1.80);
        agenda.armazenarPessoas("João", "01/01/2001", 1.40);
        agenda.armazenarPessoas("Pedro", "01/12/1984", 2.1);

        agenda.removePessoa("Pedro");

        System.out.println(agenda.buscaPessoa("Pedro"));

        System.out.println(agenda.buscaPessoa("Victor"));

        agenda.imprimeAgenda();
        agenda.imprimePessoa(1);

        double x1, y1, x2, y2;

        x1 = dados.nextDouble(); y1 = dados.nextDouble();
        x2 = dados.nextDouble(); y2 = dados.nextDouble();

        Ponto p1 = new Ponto(x1, y1);
        Ponto p2 = new Ponto(x2, y2);

        System.out.printf("%.4f\n", p1.calcDistancia(p2));

    }

}