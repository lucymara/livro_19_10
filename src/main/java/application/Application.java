package application; //pacote applicatio

import org.springframework.boot.SpringApplication; //impotando aplication
import org.springframework.boot.autoconfigure.SpringBootApplication; //importando

@SpringBootApplication
public class Application { // classe principal
    public static void main(String[] args) { //metodo da classe publica
        SpringApplication.run(Application.class, args); //rodar o programa 
    }
}