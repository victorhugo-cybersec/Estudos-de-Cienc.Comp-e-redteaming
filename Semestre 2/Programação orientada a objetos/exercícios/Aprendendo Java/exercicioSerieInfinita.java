import java.util.Scanner;

public class exercicioSerieInfinita {

    public static int fatorial(int n) {
        int fator = 1;

        for (int i = 1; i <= n; i++) {
            fator = i * fator;
        }

        return fator;
    }


    public static void main(String[] args) {

        Scanner dado = new Scanner(System.in);
        System.out.print("Número de termos:");
        int n = dado.nextInt();
        System.out.print("Valor de x:");
        double x = dado.nextDouble();

        double termo;
        double s = 0;
        int i = 1;
        int sinal = 1;

        for (int j = 0; j < n; j++) {
            termo = Math.pow(x, i) / fatorial(i);
            s = s + sinal * termo;
            i = i + 2;
            sinal = -sinal;
        }

        System.out.printf("S = %.5f", s);

    }

}