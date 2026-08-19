import java.io.IOException;
import java.util.Scanner;
public class beecrowd4 {
 
    public static void main(String[] args) throws IOException {
 
        Scanner dado = new Scanner(System.in);
        
        double x1 = dado.nextDouble();
        double y1 = dado.nextDouble();
        double x2 = dado.nextDouble();
        double y2 = dado.nextDouble();
        
        double x2x1 = Math.pow(x2 - x1, 2);
        double y2y1 = Math.pow(y2 - y1, 2);
        
        System.out.printf("%.4f\n", Math.sqrt(x2x1 + y2y1));
        
    }
 
}