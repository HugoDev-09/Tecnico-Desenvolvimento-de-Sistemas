public class curso {
    
    private String nome;
    private int duracao;

    public curso(String nome, int duracao){
        this.nome = nome;
        this.duracao = duracao;
    }

    public void setNome(String nome){
        this.nome = nome;
    }
    public void setDuracao(int duracao){
        this.duracao = duracao;
    }
    public String getNome(){
        return nome;
    }
    public int getDuracao(){
        return duracao;
    }


    public static void main(String[] args) {
        curso Senac = new curso ("Técnico em Desenvolvimento de Sistemas", 1200);

        Senac.setNome("Técnico em Desenvolvimento de Sistemas");
        Senac.setDuracao(1200);
        System.out.println("Curso: "+Senac.getNome());
        System.out.println("Grade horária: "+Senac.getDuracao());
    }
}
