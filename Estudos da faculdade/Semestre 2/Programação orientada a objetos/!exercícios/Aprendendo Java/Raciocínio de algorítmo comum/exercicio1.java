import java.util.Scanner;

class Main 
{

    public static void main(String[] args) {

        Scanner dado = new Scanner(System.in);
        System.out.print("Digite o valor de A: ");
        double a = dado.nextDouble();
        System.out.print("Digite o valor de B: ");
        double b = dado.nextDouble();
        double aux;        

        aux = a;
        a = b;
        b = aux;

        System.out.println("Novo valor da variável A: " + a);
        System.out.print("Novo valor da variável B: " + b);

    }

}