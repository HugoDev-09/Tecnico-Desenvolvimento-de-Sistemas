public class contabancaria {
    //Atributos da classe 
    private int numero;
    private double saldo;

    public contabancaria(int numero, double saldo){
        this.numero = numero;
        this.saldo = saldo;
    }

    //Métodos getters/Setters para ver e modificar os atributos
    public int getNumero(){
        return numero;
    } 
    public double getSaldo(){
         return saldo;
    }

    public void setNumero( int numero ){
         this.numero = numero;
    } 
    public  void setSaldo(double saldo){
         this.saldo = saldo;
    }
    

    //Método main para criar um objeto e definir os valores dos atributos
    public static void main(String[] args) {
     //Criando um objeto da classe definindo os valores dos atributos   
     contabancaria conta = new contabancaria(286575, 1500);
     conta.setNumero(286575);
     conta.setSaldo( 1500);
     //Exibindo os valores dos atributos do objeto
     System.out.println(conta.getNumero());
     System.out.println(conta.getSaldo()); 

    }
}
