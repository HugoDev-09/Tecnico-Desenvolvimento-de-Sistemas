package ContaBancaria;

public class contaBancaria {
    
    private String numero;
    private double saldo;

    public contaBancaria(String numero, double saldo){
        this.numero = numero;
        this.saldo = saldo;
    }

     public void exibirDetalhes(){
        System.out.printf(" Numero da conta: %s \n Saldo : %.2f", numero, saldo);
     }

     public String getNumero(){
        return numero;
     }

     public void setNumero(String numero){
        this.numero = numero;
     }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }



}
