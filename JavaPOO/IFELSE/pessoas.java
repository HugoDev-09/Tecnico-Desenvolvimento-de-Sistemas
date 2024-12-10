public class pessoas {

   // Atributos 
       private String nome;
       private int idade;
       private String endereco;
       private int telefone;
       private String email;
       private String cpf;
       private String sexo;
       private String estadoCivil;
       private String profissao;
       private double salario;
       private String nacionalidade;
       private String filhos;


       // Construtor
       public pessoas(String nome, int idade, String endereco,int telefone,String email , String cpf,String sexo, String estadoCivil,String profissao, double salario, String nacionalidade, String filhos){

           this.nome = nome;
           this.idade = idade;
           this.endereco = endereco;
           this.telefone = telefone;
           this.email = email;
           this.cpf = cpf;
           this.sexo = sexo;
           this.estadoCivil = estadoCivil;
           this.profissao = profissao;
           this.salario = salario;
           this.nacionalidade = nacionalidade;
           this.filhos = filhos;
       }

       //Metodos Getters e Setters

       public String getNome(){
           return nome;
       }
        public void setNome(String nome){
           this.nome = nome;

           if (nome == null){
            System.out.println("Nome não identificado");
           }
           else{
            System.out.println("Nome: " + getNome());
           }
        }


        public int getIdade(){
           return idade;
       }
        public void setIdade(int idade){
           this.idade = idade;

           if (idade < 0 ){
              System.out.println("Idade nao Identificada");
           }
           else{
              System.out.println("Idade: "+ getIdade());
           }  
        }


        public String getEndereco(){
           return endereco;
       }
        public void setEndereco(String endereco){
           this.endereco = endereco;
         
           if (endereco == null){
              System.out.println("Endereço nao identificado");
           }
           else{
            System.out.println("Endereço : " + getEndereco());
           }
        }


        public int getTelefone(){
           return telefone;
       }
        public void setTelefone(int telefone){
           this.telefone = telefone;
           System.out.println("Telefone: " + getTelefone());
        }



        public String getEmail(){
           return email;

           
       }
        public void setEmail(String email){
           this.email = email;
           System.out.println("Email: " + getEmail());
        }


        public String getCPF(){
           return cpf;
       }
        public void setCPF(String cpf){
           this.cpf = cpf;
           if (cpf.length()==11){
            System.out.println("CPF: " + getCPF());
           }
           else{
            System.out.println("CPF : Nao identificado");
           }

          
        }


        public String getSexo(){
           return sexo;
       }
        public void setSexo(String sexo){
           this.sexo = sexo;
           if (sexo == getSexo() ){
              System.out.println("Sexo : "+ getSexo());
           }
           else{
              System.out.println("Não identificado ");
           } 
        }


        public String getEstadoCivil(){
           return estadoCivil;
       }
        public void setEstadoCivil(String estadoCivil){
           this.estadoCivil = estadoCivil;


           if ( estadoCivil.equalsIgnoreCase("Solteiro")|| estadoCivil.equalsIgnoreCase("Casado") || estadoCivil.equalsIgnoreCase("Viuvo") ){
            System.out.println("Estado Civil: "+ getEstadoCivil());
           }
           else {
            System.out.println("Estado Civil: Nao identificado");
           }
        }


        public String getProfissao(){
           return profissao;
       }
        public void setProfissao(String profissao){
           this.profissao = profissao;
           System.out.println("Você é " + getProfissao());
        }


        public double getSalario(){
           return salario;
       }
        public void setSalario(double salario){
           this.salario = salario;

           if (salario < 0){
              System.out.println("Salário: Nao identificado");
           }
           else {
              System.out.println("Salário :" + getSalario());
           }
        }


        public String getNacionalidade(){
           return nacionalidade;
       }
        public void setNacionalidade(String nacionalidade){
           this.nacionalidade = nacionalidade;
           if (nacionalidade == null){
            System.out.println("Nacionalidade: Nao identificada");
           }
           else{
            System.out.println("Nacionalide: " + getNacionalidade());
           }
        }
        
        public String getFilhos(){
           return filhos;
        }
        public void setFilhos(String filhos){
           this.filhos = filhos;

           if (filhos == null){
            System.out.println("Filhos: Nao identificada");
           }
           else {
            System.out.println("Filhos: " + getFilhos());
           }
        }

           void exibirDetalhes(){
              getNome();
              getIdade();
              getEndereco();
              getTelefone();
              getEmail();
              getCPF();
              getSexo();
              getEstadoCivil();
              getProfissao();
              getSalario();
              getNacionalidade();
              getFilhos();
           }

           void atualizarEndereco(){
              setEndereco("Sao Paulo");
           }


        public static void main(String[] args) {
           pessoas Pessoa = new pessoas("Hugo", 17, "QuadraCasa XX,  YY,Lote 00", 40038922, "hugo0405@gmail.com","89999999898", "Masculino", "Casado", "Estudante", 7200, "Brasileiro", "Nenhum");
           
           Pessoa.setNome("Hugo");
           Pessoa.setIdade(17);
           Pessoa.setEndereco("São Paulo");
           Pessoa.setTelefone(40038922);
           Pessoa.setEmail("hugo0405@gmail.com");
           Pessoa.setCPF("89999999898");
           Pessoa.setSexo("Masculino");
           Pessoa.setEstadoCivil("Casado");
           Pessoa.setProfissao("Estudante");
           Pessoa.setSalario(7200);
           Pessoa.setNacionalidade("Brasileiro");
           Pessoa.setFilhos("Nenhum"); 

           
         Pessoa.exibirDetalhes();
        
          
        }


}
