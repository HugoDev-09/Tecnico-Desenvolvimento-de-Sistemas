import ContaBancaria.*;

public class Polimorfismo_conta_bancaria {

    public static void main(String[] args) {
        contaBancaria[] dados = new contaBancaria[3];
        
        dados[0] = new contaBancaria("123456", 200);
        dados[1] = new contaCorrente("678905", 1500, 2000);
        dados[2] = new contaPoupanca("378412", 500, 10.0);

        for(contaBancaria conta : dados){

            conta.exibirDetalhes();
        }
    }
    
}
