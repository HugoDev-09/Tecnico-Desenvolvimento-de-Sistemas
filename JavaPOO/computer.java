public class computer {
        public int hd ;
        public String modelo;
        public String SO;
        public int monitor;


    public computer (int hd, String modelo, String SO, int monitor){
        // Construtor da classe
        this.hd = hd;
        this.modelo = modelo;
        this.SO = SO;
        this.monitor = monitor;
    }

        // Métodos getters para acessar os atributos
    public int getHD(){
        return hd;
    }
    public  String getSistemaOperacional(){
        return SO;
    }
    public String getModelo(){
        return modelo;
    }
    public int getMonitor(){
        return monitor;
    }

        // Método main para criar um objeto e definir os valores dos atributos
    
    public static void main(String[] args) {
        //Criando um objeto da classe Computador e definindo os valores dos atributos
        computer Computador = new computer(110, "DELL", "Windows 11", 100);
        //Exibindo os valores dos atributos do objeto
        System.out.println(Computador.getHD());
        System.out.println(Computador.getModelo());
        System.out.println(Computador.getMonitor());
        System.out.println(Computador.getSistemaOperacional());
    }
}
