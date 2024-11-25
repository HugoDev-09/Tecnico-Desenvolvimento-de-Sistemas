public class Carro2 {
//atributos
    String marca;
    String modelo;
    String cor;

//construtor 
    public Carro2( String marca, String modelo, String cor){
        this.marca = marca;
        this.modelo = modelo;
        this.cor = cor;
    }
// Metodo Getters
        private String getmarca(){
            return marca;
        }
        private String getmodelo(){
            return modelo;
        }
        private String getcor(){
            return cor ;
        }

        public static void main(String[]args){
           Carro2 car = new Carro2("Renault", "Kwid","Amarelo" );
           System.out.println(" Meu Carro é da Marca "+ car.getmarca());
            System.out.println(" Do modelo: "+ car.getmodelo());  
            System.out.println(" E de cor: " + car.getcor());
        }

    }
