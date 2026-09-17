import java.util.Arrays;

public class Agenda {

    private Pessoa[] vetorPessoas = new Pessoa[10];

    void armazenarPessoas(String nome, String dataNasc, double altura){

        for(int i = 0; i < 10; i++){
            
            if(this.vetorPessoas[i] == null){

                this.vetorPessoas[i] = new Pessoa(nome, dataNasc, altura);
                break;

            }

        }

    }

    void removePessoa(String nome){

        if(this.vetorPessoas != null){

            for(int i = 0; i < 10; i++){

                if(this.vetorPessoas[i] != null){

                    if(this.vetorPessoas[i].getNome().equals(nome)){

                        this.vetorPessoas[i] = null;

                    }
                }

            }

        }

    }

    Pessoa buscaPessoa(String nome){

        Pessoa retorno = new Pessoa("NÃO EXISTE.", "", 0);

        for(int i = 0; i < 10; i++){

            if(this.vetorPessoas[i] != null){

                if(this.vetorPessoas[i].getNome().equals(nome)){

                    retorno = this.vetorPessoas[i];

                }

            }

        }

        return retorno;

    }

    void imprimeAgenda(){

        System.out.println(Arrays.toString(this.vetorPessoas));

    }

    void imprimePessoa(int index){

        System.out.println(this.vetorPessoas[index]);

    }

}