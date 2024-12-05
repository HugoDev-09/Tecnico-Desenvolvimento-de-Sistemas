public class cidade {
    
    private String nome;
    private double populacao;

    public cidade(String nome, double populacao){

        this.nome = nome;
        this.populacao = populacao;

    }


    public void  setNome(String nome){
        this.nome = nome;
    }
    public void  setPopulacao(double populacao){
        this.populacao = populacao;
    }

    public String getNome(){
        return nome;
    }

    public double getPopulacao(){
        return populacao;
    }


    public static void  main (String[]args){
    cidade city = new cidade("Chapadinha-MA", 80195);
    city.setNome("Chapadinha-MA")  ;
    city.setPopulacao(80195)  ;
    System.out.println(city.getNome());
    System.out.println(city.getPopulacao());
    }


}
