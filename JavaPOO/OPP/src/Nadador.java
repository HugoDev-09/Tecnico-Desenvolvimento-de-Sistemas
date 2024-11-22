public class Nadador {
    //Atributos do nadador
    String idade;
    String nome;
    

    public static void main(String[] args) {
         Nadador nadador1 = new Nadador();
        nadador1.nome = "Iraildo";
        nadador1.idade = "25";

            System.out.println("O nadador é "+nadador1.nome+ " e tem "+nadador1.idade+" anos de idade." );

    }
    
}
