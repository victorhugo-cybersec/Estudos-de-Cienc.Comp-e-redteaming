public class Elevador {

    private int andar;
    private int andares;
    private int capacidade;
    private int pessoas;

    public void constructor(int andares, int capacidade){

        this.andar = 0;
        this.pessoas = 0;

        this.andares = andares;
        this.capacidade = capacidade;

    }

    public void setAndares(int andares){

        this.andares = andares;

    }

    public void setCapacidade(int capacidade){
        

        this.capacidade = capacidade;

    }

    public void setAndar(int andar){

        this.andar = andar;

    }

    public void setPessoas(int pessoas){

        this.pessoas = pessoas;

    }

    public int getAndar(){

        return this.andar;

    }

    public int getPessoas(){

        return this.pessoas;

    }

    public int getAndares(){

        return this.andares;

    }

    public int getCapacidade(){

        return this.capacidade;

    }

    public void entra(){

        if(pessoas <= this.capacidade){

            pessoas++;

        }

    }

    public void sai(){

        if(pessoas > 0){

            pessoas--;

        }

    }

    public void sobe(){

        if(andar < andares){

            andar++;

        }

    }

    public void desce(){

        if(andar > 0){

            andar--;

        }

    }

}