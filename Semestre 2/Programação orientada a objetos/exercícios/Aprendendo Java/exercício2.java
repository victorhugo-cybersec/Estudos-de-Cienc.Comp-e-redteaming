import java.util.Scanner;

class Main 
{

    public static void main(String[] args) {

        Scanner dado = new Scanner(System.in);

        System.out.print("Número de notas");
        double n = dado.nextDouble();
        double nota;
        double contagem = 0;
        int i = 0;

        while (i < n) {
            i = i + 1;

            System.out.print("Nota do aluno:");
            nota = dado.nextDouble();

            if (nota >= 50) {
                contagem = contagem + 1;
            }
        }

        System.out.print("Número de aprovações: " + contagem);
    
    }

}