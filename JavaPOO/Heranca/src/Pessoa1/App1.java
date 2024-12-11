
import Pessoa.aluno;
import Pessoa.professor;

public class App1 {
    public static void main(String[] args) {
        
        aluno Aluno = new aluno("Hugo", 17, "Tecnico em Desenvolvimento de Sistemas");
        professor Professor = new professor("Rafael", 39 , "Tecnologia da Informaçao");

        Aluno.apresentar();
        Professor.apresentar();

    }

    
}
