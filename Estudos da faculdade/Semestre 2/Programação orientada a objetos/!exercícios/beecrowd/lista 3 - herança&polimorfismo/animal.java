import java.io.IOException;
import java.util.Scanner;

// 1. CLASSE BASE ABSTRATA
abstract class Animal {
    // Método polimórfico que cada animal concreto vai implementar
    public abstract String identificar();
}

// 2. SUBCLASSES (HERANÇA E POLIMORFISMO)

// Vertebrados - Aves
class Aguia extends Animal {
    @Override
    public String identificar() { return "aguia"; }
}

class Pomba extends Animal {
    @Override
    public String identificar() { return "pomba"; }
}

// Vertebrados - Mamíferos
class Homem extends Animal {
    @Override
    public String identificar() { return "homem"; }
}

class Vaca extends Animal {
    @Override
    public String identificar() { return "vaca"; }
}

// Invertebrados - Insetos
class Pulga extends Animal {
    @Override
    public String identificar() { return "pulga"; }
}

class Lagarta extends Animal {
    @Override
    public String identificar() { return "lagarta"; }
}

// Invertebrados - Anelídeos
class Sanguessuga extends Animal {
    @Override
    public String identificar() { return "sanguessuga"; }
}

class Minhoca extends Animal {
    @Override
    public String identificar() { return "minhoca"; }
}

// 3. FÁBRICA (FACTORY) - Mapeia as palavras e instancia o animal correto
class AnimalFactory {
    public static Animal criarAnimal(String tipo, String classe, String alimentacao) {
        if (tipo.equals("vertebrado")) {
            if (classe.equals("ave")) {
                return alimentacao.equals("carnivoro") ? new Aguia() : new Pomba();
            } else if (classe.equals("mamifero")) {
                return alimentacao.equals("onivoro") ? new Homem() : new Vaca();
            }
        } else if (tipo.equals("invertebrado")) {
            if (classe.equals("inseto")) {
                return alimentacao.equals("hematofago") ? new Pulga() : new Lagarta();
            } else if (classe.equals("anelideo")) {
                return alimentacao.equals("hematofago") ? new Sanguessuga() : new Minhoca();
            }
        }
        return null;
    }
}

// 4. CLASSE PRINCIPAL
public class animal {
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);

        // Lendo os três parâmetros da entrada[cite: 1]
        String tipo = sc.nextLine();
        String classe = sc.nextLine();
        String alimentacao = sc.nextLine();

        // Herança + Polimorfismo na prática:
        // A referência é do tipo genérico 'Animal', mas a instância é do tipo específico.
        Animal animal = AnimalFactory.criarAnimal(tipo, classe, alimentacao);

        if (animal != null) {
            // Chamada polimórfica: o Java sabe exatamente qual método executar de acordo com a classe criada
            System.out.println(animal.identificar());
        }

        sc.close();
    }
}