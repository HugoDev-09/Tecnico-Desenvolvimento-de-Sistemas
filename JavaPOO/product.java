public class Produto {
    
String product;
float preco;
int quantidade;


public Produto(String product, float preco, int quantidade){;

    this.product = product;
    this.preco = preco;
    this.quantidade = quantidade;

}

    public String getproduct(){
        return product;
    }
    public float getpreco(){
        return preco;
    }

    public int getquantidade(){
        return quantidade;
    }

    public static void main(String[] args) {
       Produto  produto = new Produto("Garrafa", 20, 5);
            System.out.println("O produto a ser vendido é uma "+ produto.getproduct() + ".");
            System.out.println("O preço dela será de "+ produto.getpreco() + " reais.");
            System.out.println("E a quantidade a ser vendida será de "+produto.getquantidade()  + " garrafas.");
    }

}
