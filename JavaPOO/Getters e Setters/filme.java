 public class filme{
    
    
    public String ator;
    public String filme;
    public String diretor;
    public String genero;
    public int lancamento;    


 public filme(String ator,String filme,String diretor, String genero, int lancamento){
    this.ator = ator;
    this.filme = filme;
    this.diretor = diretor;
    this.genero = genero;
    this.lancamento = lancamento;
 }

 public String getAtor(){
    return ator;
 }
 public String getFilme(){
    return filme;
 }
 
 public String getDiretor(){
    return diretor;
 }
 
 public String getGenero(){
    return genero;
 }
 
 public int getLancamento(){
    return lancamento;
 }
 


    public static void main(String[] args) {
       filme Filme = new filme ("Michael.B Jordan", "Creed", "Ryan Coogler", "Luta", 2015 );
       System.out.println("Filme : " +Filme.getFilme());
       System.out.println("Ator : " +Filme.getAtor());
       System.out.println("Diretor : " +Filme.getDiretor());
       System.out.println("Gênero : " +Filme.getGenero());
       System.out.println("Lançamento : "+ Filme.getLancamento() );

    }
 }