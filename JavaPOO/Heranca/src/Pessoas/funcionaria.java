package Pessoas;

public class funcionaria extends pessoas{
    
    private String setor;
    private String trabalhando;

    public void mudarTrabalho(){
        this.trabalhando =  trabalhando;
    }

    public String getSetor() {
        return setor;
    }

    public void setSetor(String setor) {
        this.setor = setor;
    }

    public String getTrabalhando() {
        return trabalhando;
    }

    public void setTrabalhando(String trabalhando) {
        this.trabalhando = trabalhando;
    }

    
}
