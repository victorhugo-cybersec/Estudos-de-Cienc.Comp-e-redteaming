public class zoologico {
    public static void main(String[] args) {
        
        animal leao = new animal();

        leao.setNome("Simba");
        leao.setEspecie("Leão");
        leao.setIdade(5);

        System.out.println(leao.getNome());
        System.out.println(leao.getEspecie());
        System.out.println(leao.getIdade());

        leao.comer();
        leao.dormir();

    }

}