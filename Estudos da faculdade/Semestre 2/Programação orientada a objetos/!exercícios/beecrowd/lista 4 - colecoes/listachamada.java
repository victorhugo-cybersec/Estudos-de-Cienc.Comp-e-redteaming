import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

class ListaSorteio {

    protected int num;
    protected ArrayList<String> lista = new ArrayList<>();

    public ListaSorteio(int num, ArrayList<String> lista){

        this.num = num;
        Collections.sort(lista);
        this.lista = lista;

    }

    public int getNum(){

        return this.num;

    }

    

    public void setNum(int num){

        this.num = num;

    }

}

class Resultado extends ListaSorteio {
    
    protected int selecionado;

    public Resultado(int num, int selecionado, ArrayList<String> lista){

        super(num, lista);
        this.selecionado = selecionado;

    }

    public int getSelecionado(){

        return this.selecionado;

    }

    public void setSelecionado(int selecionado){

        this.selecionado = selecionado;

    }

    public String obterResultado(){

        return lista.get(this.selecionado - 1);

    }

}

class ListaNomes {

    protected ArrayList<String> lista = new ArrayList<>();

    public static ArrayList<String> pegarNomes(int num, Scanner dados) {

        ArrayList<String> novaLista = new ArrayList();

        for(int i = 0; i < num; i++){

            novaLista.add(dados.next());

        }

        return novaLista;

    }

}

public class listachamada {

    public static void main(String[] args) throws IOException {

        Scanner dados = new Scanner(System.in);
        int numPessoas = dados.nextInt();
        Resultado sorteio = new Resultado(numPessoas, dados.nextInt(), ListaNomes.pegarNomes(numPessoas, dados));

        System.out.println(sorteio.obterResultado());

    }

}