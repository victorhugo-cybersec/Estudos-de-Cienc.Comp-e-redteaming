import java.io.IOException;
import java.util.Scanner;
public class beecrowd3 {
 
    public static void main(String[] args) throws IOException {
 
        Scanner dado = new Scanner(System.in);
        
        double temp = 0;
        
        for(int i = 0; i < 2; i++){
            
            int code = dado.nextInt();
            int quant = dado.nextInt();
            double price = dado.nextDouble();
            
            temp += quant * price;
            
        }
        
        System.out.printf("VALOR A PAGAR: R$ %.2f\n", temp);
 
    }
 
}