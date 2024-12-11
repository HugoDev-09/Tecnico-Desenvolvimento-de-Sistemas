package Pessoa;

public class aluno extends pessoa {
    

    private String curso;

    public aluno(String nome, int idade,String curso){
        super(nome, idade);
        this.curso = curso;
    }

    public void apresentar(){
        super.apresentar();
        System.out.printf("Curso: %s %n", curso);
         
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

 
}
