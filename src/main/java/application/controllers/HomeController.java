package application.controllers; //pacote application que esta dentro de controlers caminho

import org.springframework.stereotype.Controller; //importando
import org.springframework.web.bind.annotation.RequestMapping; //impotando anotaçao requestmapping
import org.springframework.web.bind.annotation.RequestMethod; //importando resquestmethod

@Controller
public class HomeController { // classe metodo publico
    @RequestMapping(method=RequestMethod.GET) //anotaçao que da efeito para proxima linha
    public String index() { //metodo index
        return "home/index.jsp"; //retorna pra quem chamar
    }
}