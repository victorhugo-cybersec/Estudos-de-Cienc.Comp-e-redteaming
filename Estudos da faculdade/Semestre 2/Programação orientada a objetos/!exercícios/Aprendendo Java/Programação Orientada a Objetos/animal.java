public class animal {

    private String nome;
    private String especie;
    private int idade;

    //Getters

    String getNome() {

        return this.nome;

    }

    String getEspecie(){

        return this.especie;

    }

    int getIdade(){

        return this.idade;

    }

    //Setters

    void setEspecie(String especie){

        this.especie = especie;

    }

    void setIdade(int idade){
        
        if(idade >= 0){
            
            this.idade = idade;

        }

    }

    void setNome(String nome){

        this.nome = nome;

    }

    //Métodos

    void comer() {

        System.out.println(nome + " está comendo.");

    }

    void dormir() {

        System.out.println(nome + " está dormindo.");

    }

}