public class pessoa {
    private String nome;
    private int idade;


    public pessoa (String nome, int idade){
        this.nome = nome;
        this.idade = idade;
    
        if (idade >= 18  ){
            System.out.println("Sua Voce é maior de idade");
        }
        else if (idade >= 0 && idade < 18){
            System.out.println("Voce é menor de idade ");
        }  
        else{
            System.out.println("Idade inválida");
        }
            
        }
        
    
    public String getNome(){
        return nome;
    }
    public  void setNome(String nome){
        this.nome = nome;
    
    }

    public int getIdade(){
        return idade;
    }
    
    public void setIdade(int idade){
       this.idade = idade;
    }

    public static void main(String[] args) {
        pessoa Pessoa = new pessoa("Hugo", 0);
        
        
        System.out.println("Nome: "+ Pessoa.getNome());
        System.out.println("Idade: "+Pessoa.getIdade());
    }

}
