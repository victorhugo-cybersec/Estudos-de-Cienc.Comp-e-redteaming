import java.io.IOException;
import java.util.Scanner;

abstract class Jogador {
    
    private int num;

    public Jogador(int num){

        this.num = num;

    }

    public int getNum(){

        return this.num;

    }

    public void setNum(int num){

        this.num = num;

    }
    
}

class JogadorN1 extends Jogador {
    
    private boolean par;
    private boolean roubou;

    public JogadorN1(boolean par, int num, boolean roubou){

        super(num);
        this.par = par;
        this.roubou = roubou;

    }

    public boolean getPar(){

        return this.par;

    }

    public boolean getRoubou(){

        return this.roubou;

    }

    public void setPar(boolean par){

        this.par = par;

    }

    public void setRoubou(boolean roubou){

        this.roubou = roubou;

    }
    
}

class JogadorN2 extends Jogador {

    private boolean acusou;

    public JogadorN2(int num, boolean acusou){

        super(num);
        this.acusou = acusou;

    }

    public boolean getAcusou(){

        return this.acusou;

    }

    public void setAcusou(boolean acusou){

        this.acusou = acusou;

    }

}

class Jogo {
    
    private JogadorN1 jn1;
    private JogadorN2 jn2;

    public Jogo(JogadorN1 jn1, JogadorN2 jn2){

        this.jn1 = jn1;
        this.jn2 = jn2;

    }

    public void partida(){

        int soma = jn1.getNum() + jn2.getNum();

        if(jn1.getPar()){

            if(soma % 2 == 0){

                if(jn1.getRoubou()){

                    if(jn2.getAcusou()){

                        System.out.printf("Jogador 2 ganha!\n");

                    } else {

                        System.out.printf("Jogador 1 ganha!\n");

                    }

                } else {

                    System.out.printf("Jogador 1 ganha!\n");

                }

            } else {

                if(jn1.getRoubou()){

                    if(jn2.getAcusou()){

                        System.out.printf("Jogador 2 ganha!\n");

                    } else {

                        System.out.printf("Jogador 1 ganha!\n");

                    }

                } else {

                    if(jn2.getAcusou()){

                        System.out.printf("Jogador 1 ganha!\n");

                    } else {

                        System.out.printf("Jogador 2 ganha!\n");

                    }

                }

            }

        } else {

            if(soma % 2 != 0){

                if(jn1.getRoubou()){

                    if(jn2.getAcusou()){

                        System.out.printf("Jogador 2 ganha!\n");

                    } else {

                        System.out.printf("Jogador 1 ganha!\n");

                    }

                } else {

                    System.out.printf("Jogador 1 ganha!\n");

                }

            } else {

                if(jn1.getRoubou()){

                    if(jn2.getAcusou()){

                        System.out.printf("Jogador 2 ganha!\n");

                    } else {

                        System.out.printf("Jogador 1 ganha!\n");

                    }

                } else {

                    if(jn2.getAcusou()){

                        System.out.printf("Jogador 1 ganha!\n");

                    } else {
                        
                        System.out.printf("Jogador 2 ganha!\n");

                    }

                }

            }

        }

    }

    public JogadorN2 getJn2() {
        return jn2;
    }

    public void setJn2(JogadorN2 jn2) {
        this.jn2 = jn2;
    }

    public JogadorN1 getJn1() {
        return jn1;
    }

    public void setJn1(JogadorN1 jn1) {
        this.jn1 = jn1;
    }
    
}

public class imparpar {
 
    public static void main(String[] args) throws IOException {
 
        Scanner dados = new Scanner(System.in);
        boolean p = dados.nextInt() == 1;
        int j1 = dados.nextInt();
        int j2 = dados.nextInt();
        boolean r = dados.nextInt() == 1;
        boolean a = dados.nextInt() == 1;

        JogadorN1 carlos = new JogadorN1(p, j1, r);
        JogadorN2 joao = new JogadorN2(j2, a);

        Jogo campeonato = new Jogo(carlos, joao);

        campeonato.partida();
 
    }
 
}