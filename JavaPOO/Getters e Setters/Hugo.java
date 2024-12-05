
    public class Hugo {
        private String nome;
        private int idade;
        private String profissao;
        private String endereco;
        private int telefone;
        private String email;
        private double salario;
        private String carro;
    
    
        public Hugo (String nome,int idade,String profissao,String endereco,int telefone,String email,double salario, String carro){
            this.nome = nome;
            this.idade = idade;
            this.profissao = profissao;
            this.endereco = endereco;
            this.telefone = telefone;
            this.email = email;
            this.salario = salario;
            this.carro = carro;
        }
    
            public String getNome(){
                return nome;
            }
            public int getIdade(){
                return idade;
            }
            public String getProfissao(){
                return profissao;
            }
            public String getEndereço(){
                return endereco;
            }
            public int getTel(){
                return telefone;
            }
            public String getEmail(){
                return email;
            }
            public double getSalario(){
                return salario;
            }
            public String getCarro(){
                return carro;
            }
    
            public void setNome( String nome){
                this.nome = nome;
            }
            public void setIdade( int idade){
                this.idade = idade;
            }
            public void setProfissao(String profissao){
                this.profissao = profissao;
            }
            public void setEndereco(String endereco){
                this.endereco = endereco;
            }
            public void setTel(int telefone){
                this.telefone = telefone;
            }
            public void setEmail(String email){
                this.email = email;
            }
            public void setSalario(double salario){
                this.salario = salario;
            }
            public void setCarro(String carro){
                this.carro = carro;
            }
        
        public static void main(String[] args) {
            Hugo dados = new Hugo("Hugo", 17, "Estudante", "Samamabaia Sul, Rua XX, Casa YY", 40028922, "hugo1234@gmail.com", 7500.0 , "Não");
    
            dados.setNome("Hugo");
            dados.setIdade(17);
            dados.setProfissao("Estudante");
            dados.setEndereco("Samamabaia Sul, Rua XX, Casa YY");
            dados.setTel(40028922);
            dados.setEmail("hugo1234@gmail.com");
            dados.setSalario(7500);
            dados.setCarro("Nao");
    
            System.out.println("Nome: " + dados.getNome());
            System.out.println("Idade: " + dados.getIdade());
            System.out.println("Profissão: " + dados.getProfissao());
            System.out.println("Endereço: " + dados.getEndereço());
            System.out.println("Telefone: " + dados.getTel());
            System.out.println("Email: " + dados.getEmail());
            System.out.println("Salário: " + dados.getSalario());  
            System.out.println("Carro: "+ dados.getCarro());  
        }
    
    }

