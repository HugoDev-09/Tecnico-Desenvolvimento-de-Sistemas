public class Nadador1 {

    
    int idade;
    String nome;

        public  Nadador1 (String nome, int idade){


    // Atribui o valor do parametro nome a instancia  do atributo nome
    this.nome = nome;
    this.idade = idade;
    }

    //Metodos Getters
    //Método getter público que retorna o valor do atributo nome
    public String getNome(){
    return nome;
    }
    //Método getter público que retorna o valor do atributo idade
    public int getIdade(){
    return idade;
    }

    public static void main(String[]args){

        Nadador1 nadador1 = new Nadador1("Hugo",17);
        System.out.println("Nome:"+ nadador1.getNome());
        System.out.println("Idade: "+ nadador1.getIdade());
    }

    }
