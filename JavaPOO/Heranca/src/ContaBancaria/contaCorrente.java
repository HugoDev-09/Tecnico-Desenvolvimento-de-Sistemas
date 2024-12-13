package ContaBancaria;

public class contaCorrente extends contaBancaria {
    
    private double limite;

    public contaCorrente(String numero, double saldo, double limite){
        super(numero, saldo);
        this.limite = limite;
    }

    public void exibirDetalhes(){
        System.out.println("  Detalhes da Conta Corrente \n");
        super.exibirDetalhes();
       
        System.out.printf( "\n Limite da conta: %.2f \n \n", limite);
    }

    public double getLimite() {
        return limite;
    }

    public void setLimite(double limite) {
        this.limite = limite;
    }

   
}
