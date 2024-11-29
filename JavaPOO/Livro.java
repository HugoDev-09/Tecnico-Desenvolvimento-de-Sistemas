public class livro {

    //atributos
    public String autor;
     public String titulo;
    public String genero;
    public int lancamento;


    //construtor

    public livro(String autor, String titulo, String genero, int lancamento){
        this.autor = autor;
        this.titulo = titulo;
        this.genero = genero;
        this.lancamento = lancamento;
    }
        public String getAutor(){
                return autor;
        }
        public String getTitulo(){
            return titulo;
        }
        public String getGenero(){
            return genero;
        }
        public int getLancamento(){
            return lancamento;
        }

    public static void main(String[] args) {
        livro book = new livro ( "James Clear", "Habitos Atomicos","Autoajuda", 2018);
        System.out.println("O livro se chama: "+ book.getTitulo());
        System.out.println("O autor se chama : "+ book.getAutor());
        System.out.println("Habitos Atomicos é um genero de :" + book.getGenero());
        System.out.println("O lançamento dele foi em :" + book.getLancamento());
    }

}
