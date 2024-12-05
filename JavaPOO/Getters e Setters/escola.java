public class escola {
    
    String aluno;
    int nota;

    public escola(String aluno, int nota){
        this.aluno = aluno;
        this.nota =  nota;
    }

    public String getAluno(){
        return aluno ;
    }

    public int getNota(){
        return nota;
    }

    public static void main(String[] args) {
        escola notas= new escola("Hugo", 10);
       
        System.out.println(notas.getAluno());
        System.out.println(notas.getNota());

    }
}
