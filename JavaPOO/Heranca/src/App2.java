import ContaBancaria.contaCorrente;
import ContaBancaria.contaPoupanca;
public class App2 {
    public static void main(String[] args) {
        
    contaCorrente Corrente = new contaCorrente("234567", 550, 10000);
    contaPoupanca Poupanca = new contaPoupanca("123456", 700, 5000);
    Corrente.exibirDetalhes();
    Poupanca.exibirDetalhes();

    }
}
