package application.controllers;//pacote responsavel por fazer a intermediaçao entre a camada wil e camada banco
import java.util.Optional; //indica se um valor está presente ou ausente

import org.springframework.beans.factory.annotation.Autowired; //import referente a linha 19
import org.springframework.stereotype.Controller; //import referente a linha 16
import org.springframework.web.bind.annotation.PathVariable;//importa valores passados no parametro de consulta
import org.springframework.web.bind.annotation.RequestMapping; //import mapeamento
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.models.Livro; 
import application.repositories.LivroRepository;//import referente a linha 20

import org.springframework.ui.Model;//import referente a linha 22 para utilizar model

@Controller//fazer o mapeamento e acessar a tabela 
@RequestMapping("/livro")//mapeamento da pacote livro
public class LivroController {//criaçao classe publica livro controller
    @Autowired //anotaçao
    private LivroRepository livrosRepo; // criando um objeto livrorepo privado
    @RequestMapping("/list")//anotaçao mapeamento para o pacote list
    public String list(Model model) { //metodo public list modelaçao da classe
        model.addAttribute("livros", livrosRepo.findAll());//buscar no banco de dados livros  
        return "list.jsp"; //retorna list.jsp
    }
  public String listar(){ //metodo listar
    return "livro/list.jsp";//retorna livro list jsp vai buscar tudo na tabela list
  }
  @RequestMapping("/insert")//mapeamento para o pacote insert
  public String formInsert(){//metodo form insert
    return "insert.jsp"; //retorna insert jsp vai buscar tudo na tabela insert
  }
  @RequestMapping(value="/insert",method=RequestMethod.POST)//indicando que esse método irá receber as requisições post
  public String saveInsert(@RequestParam("titulo")String titulo){//mapeia os parametro de get e post

    Livro livro=new Livro();//parametro que add new livro
    livro.setTitulo(titulo);//parametro que armazena os valores
    livrosRepo.save(livro);//parametro que realiza o salvamento
    return "redirect:/livro/list";//retorn lista de livros
  }
  @RequestMapping("/delete/{id}")//indicando que esse método irá receber as requisições delete
  public String formDelete(Model model,@PathVariable int id){//o valor da variável é passada diretamente, a variável que determina qual post será mostrado
    Optional<Livro>livro=livrosRepo.findById(id);//testa se se a classe esta recebendo outra chave estrangeira
    if (!livro.isPresent()) //Se um valor estiver presente retorna true , se não, retorna false
      return "redirect:/livro/list";//retorna lista de livros
     model.addAttribute("livro",livro.get()); //método adiciona a specified atributo para um elemento e dá um  valor especificado.
    

    return "/livro/delete.jsp";//retorna lista de livro
  }
  @RequestMapping(value = "/delete",method = RequestMethod.POST)//indicando que esse método irá receber as requisições post
  public String confirmDelete(@RequestParam("id")int id){//confirma o cancelamento dos dados
    livrosRepo.deleteById(id); //método responde com delete
      return "redirect:/livro/list";//retorna lista de livros
      
    
  }
  @RequestMapping("/update/{id}")//indicando que esse método irá receber as requisições update 
  public String formUpdate(Model model,@PathVariable int id){//acessar os valores dos parâmetros de consulta da solicitação
    Optional<Livro>livro=livrosRepo.findById(id);//busca informações do banco de dados
    if (!livro.isPresent()) //Se um valor estiver presente retorna true , se não, retorna false
      return "redirect:/livro/list";//retorna lista de livros
     model.addAttribute("livro",livro.get()); //método adiciona um elemento a um valor especificado
    

    return "/livro/update.jsp";//retorna a lista de livros
  }
  @RequestMapping(value = "/update",method = RequestMethod.POST)//indicando que esse método irá receber as requisições
  public String saveUpdate(@RequestParam("titulo")String titulo,@RequestParam("id")int id){//indica o método de busca
    Optional<Livro>livro=livrosRepo.findById(id);//busca informações do banco de dados
    if (!livro.isPresent()) //Se um valor estiver presente retorna true , se não, retorna false
      return "redirect:/livro/list";//retorna a lista de livros
    livro.get().setTitulo(titulo);//retorna o valor
    livrosRepo.save(livro.get());//chama o objeto 

    return "redirect:/livro/list";//retorna lista livros
      
    
  }
}
