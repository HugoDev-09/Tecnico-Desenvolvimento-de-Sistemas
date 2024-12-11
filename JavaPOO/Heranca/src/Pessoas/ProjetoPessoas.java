package Pessoas;

public class ProjetoPessoas {
    
    public static void main(String[] args) {
     
        // Programa principal

        pessoas p1 = new pessoas();
        aluno p2 = new aluno();
        professor p3 = new professor();
        funcionaria p4 = new funcionaria();

        p1.setNome("Hugo");
        p2.setNome("Joao");
        p3.setNome("Helena");
        p4.setNome("Helloisy");

        p1.setIdade(17);
        p2.setIdade(8);
        p3.setIdade(17);
        p4.setIdade(5);

        p1.setSexo("Masculino");
        p2.setSexo("Masculino");
        p3.setSexo("Feminino");
        p4.setSexo("Feminino");

    System.out.println(p1.toString());
    System.out.println(p2.toString());
    System.out.println(p3.toString());
    System.out.println(p4.toString());
}



}
