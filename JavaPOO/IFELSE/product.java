public class product {
    
    private String produto;
    private int quantidade;

    public product (String produto, int quantidade){
        this.produto = produto;
        this.quantidade = quantidade;

       
    }
    public void Informacoes(){
        
        if (quantidade > 0 ){
            System.out.println("Produto em estoque ");
        }
        else {
            System.out.println("Em falta de estoque " );
        }
    
    }

    public void setProduto(String produto){
        this.produto = produto;
    }
    public String getProduto(){
        return produto;
    }
    public void setQuantidade(int quantidade){
        this.quantidade = quantidade;
    }
    public int getQuantidade(){
        return quantidade;
    }

    public static void main(String[] args) {
        product Produto = new product("Smart Watch",2);

        System.out.println("Produto: " + Produto.getProduto());
        System.out.println("Estoque: " + Produto.getQuantidade());
        Produto.Informacoes();
    }
    


}
