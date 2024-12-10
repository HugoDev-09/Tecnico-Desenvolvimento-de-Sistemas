public class Seunome {
    private String nome;
    private int idade;
    private String profissao;
    private String endereco;
    private int telefone;
    private String email;
    private double salario;



    public Seunome (String nome,int idade,String profissao,String endereco,int telefone,String email,double salario){
        this.nome = nome;
        this.idade = idade;
        this.profissao = profissao;
        this.endereco = endereco;
        this.telefone = telefone;
        this.email = email;
        this.salario = salario;
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
    
    public static void main(String[] args) {
        Seunome dados = new Seunome("Hugo", 17, "Estudante", "Samamabaia Sul, Rua XX, Casa YY", 40028922, "hugo1234@gmail.com", 7500.0 );

        dados.setNome("Hugo");
        dados.setIdade(17);
        dados.setProfissao("Estudante");
        dados.setEndereco("Samamabaia Sul, Rua XX, Casa YY");
        dados.setTel(40028922);
        dados.setEmail("hugo1234@gmail.com");
        dados.setSalario(7500);

        System.out.println(dados.getNome());
        System.out.println(dados.getIdade());
        System.out.println(dados.getProfissao());
        System.out.println(dados.getEndereço());
        System.out.println(dados.getTel());
        System.out.println(dados.getEmail());
        System.out.println(dados.getSalario());    
    }

}
