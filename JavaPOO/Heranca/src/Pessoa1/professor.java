package Pessoa;

public class professor extends pessoa{

    private String disciplina;

    public professor(String nome, int idade, String disciplina){
        super(nome, idade);
        this.disciplina = disciplina;

        }
        public void apresentar(){
            super.apresentar();
            System.out.printf("Disciplina: %s %n", disciplina);
                }
        public String getDisciplina() {
            return disciplina;
        }
        public void setDisciplina(String disciplina) {
            this.disciplina = disciplina;
        }

        

    
}
