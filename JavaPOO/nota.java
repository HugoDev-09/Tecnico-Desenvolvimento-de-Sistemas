public class escola {
    
    String aluno;
    int nota;

    public escola(String aluno, int nota){
        this.aluno = aluno;
        this.nota =  nota;
    }

    public String getAluno(){
        return "Hugo";
    }

    public int getNota(){
        return 10;
    }

    public static void main(String[] args) {
        escola notas= new escola("", 0);
       
        System.out.println(notas.getAluno());
        System.out.println(notas.getNota());

    }
}
