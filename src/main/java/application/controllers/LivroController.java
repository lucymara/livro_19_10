package application.controllers;//pacote responsavel por fazer a intermediaçao entre a camada wil e camada banco
import java.util.Optional; 

import org.springframework.beans.factory.annotation.Autowired; //import referente a linha 19
import org.springframework.stereotype.Controller; //import referente a linha 16
import org.springframework.web.bind.annotation.PathVariable;
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
  @RequestMapping(value="/insert",method=RequestMethod.POST)
  public String saveInsert(@RequestParam("titulo")String titulo){

    Livro livro=new Livro();
    livro.setTitulo(titulo);
    livrosRepo.save(livro);
    return "redirect:/livro/list";
  }
  @RequestMapping("/delete/{id}")
  public String formDelete(Model model,@PathVariable int id){
    Optional<Livro>livro=livrosRepo.findById(id);
    if (!livro.isPresent()) 
      return "redirect:/livro/list";
     model.addAttribute("livro",livro.get()); 
    

    return "/livro/delete.jsp";
  }
  @RequestMapping(value = "/delete",method = RequestMethod.POST)
  public String confirmDelete(@RequestParam("id")int id){
    livrosRepo.deleteById(id); 
      return "redirect:/livro/list";
      
    
  }
  @RequestMapping("/update/{id}")
  public String formUpdate(Model model,@PathVariable int id){
    Optional<Livro>livro=livrosRepo.findById(id);
    if (!livro.isPresent()) 
      return "redirect:/livro/list";
     model.addAttribute("livro",livro.get()); 
    

    return "/livro/update.jsp";
  }
  @RequestMapping(value = "/update",method = RequestMethod.POST)
  public String saveUpdate(@RequestParam("titulo")String titulo,@RequestParam("id")int id){
    Optional<Livro>livro=livrosRepo.findById(id);
    if (!livro.isPresent()) 
      return "redirect:/livro/list";
    livro.get().setTitulo(titulo);
    livrosRepo.save(livro.get());

    return "redirect:/livro/list";
      
    
  }
}
