import java.io.IOException;
import java.util.Scanner;
public class beecrowd2 {
 
    public static void main(String[] args) throws IOException {
 
        Scanner dado = new Scanner(System.in);
        double a = dado.nextDouble();
        double b = dado.nextDouble();
        
        System.out.printf("MEDIA = %.5f\n", ((a * 3.5) + (b * 7.5)) / 11);
 
    }
 
}