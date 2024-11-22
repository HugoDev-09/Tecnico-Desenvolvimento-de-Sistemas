public class Carro {
    // Atributos do carro
    String marca;
    String modelo;
    String cor;

    // Metodos do carro
    void acelerar() {
        System.out.println("O carro esta acelerando.");
    }

    void virar(String direcao) {
        System.out.println("O carro está virando para a " + direcao + ".");

    }

    void frear(String direcao) {
        System.out.println("O carro está freando " + direcao + ".");
    }
    // Metodo principal para executar o programa

    public static void main(String[] args) throws Exception {
        Carro meuCarro = new Carro();
        meuCarro.marca = "Dodge Ram";
        meuCarro.modelo = "4x4";
        meuCarro.cor = "Laranja";

        // Informações sobre o carro

        System.out.println("Meu carro é o " + meuCarro.marca + " " + meuCarro.modelo + " , de cor " + meuCarro.cor + ".");
    // Chamando os metodos  do objeto
        meuCarro.acelerar();
        meuCarro.frear("Lentamente");
        meuCarro.virar("Direita");
        meuCarro.virar("Esquerda");
    }
}
