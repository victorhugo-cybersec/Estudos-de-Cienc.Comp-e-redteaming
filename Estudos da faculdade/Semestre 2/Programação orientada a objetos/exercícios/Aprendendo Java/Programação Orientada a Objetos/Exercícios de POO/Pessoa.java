import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

public class Pessoa {

    private String nome;
    private String dataNasc;
    private double altura;

    public void constructor(String nome, String dataNasc, double altura){

        this.nome = nome;
        this.dataNasc = dataNasc;
        this.altura = altura;

    }

    public void setNome(String nome) {

        this.nome = nome;

    }

    public void setDataNasc(String dataNasc){

        this.dataNasc = dataNasc;

    }

    public void setAltura(double altura){

        this.altura = altura;

    }

    public String getNome(){

        return this.nome;

    }

    public String getDataNasc(){

        return this.dataNasc;

    }

    public double getAltura(){

        return this.altura;

    }

    public long calculoIdade(){

        DateTimeFormatter formatador = DateTimeFormatter.ofPattern("dd/MM/yyyy");

        LocalDate data = LocalDate.parse(this.dataNasc, formatador);

        return ChronoUnit.YEARS.between(data, LocalDate.now());

    }

}