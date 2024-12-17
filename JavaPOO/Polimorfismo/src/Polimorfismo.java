import animais.*;

public class Polimorfismo {
    
    // Método principal que será executado ao iniciar o programa

    public static void main(String[] args) {

        //Criar um array de animais
        Animal[] animais = new Animal[3];
        //Adiocionar diferentes  tipos de animais de array 

        animais[0] = new cachorro("Rex");
        animais[1] = new cachorro("Mimi");
        animais[2] = new cachorro("Max");

        for(Animal animal : animais){
            animal.beber();
            animal.comer();
        }
        
    }
}
