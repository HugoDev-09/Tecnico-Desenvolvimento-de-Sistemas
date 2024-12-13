package ContaBancaria;

public class contaPoupanca extends contaBancaria {
    

    private double taxaDeJuros;

    public contaPoupanca(String numero, double saldo, double taxaDeJuros){
        super(numero, saldo);
        this.taxaDeJuros = taxaDeJuros;
    }

    public void exibirDetalhes(){
        System.out.println("  Detalhes da Conta Poupança \n"); 
        super.exibirDetalhes();
        System.out.printf("\n Taxa de Juros: %.2f", taxaDeJuros );
    }

    public double getTaxaDeJuros() {
        return taxaDeJuros;
    }

    public void setTaxaDeJuros(double taxaDeJuros) {
        this.taxaDeJuros = taxaDeJuros;
    }
}

  
