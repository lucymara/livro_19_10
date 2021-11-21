package application.repositories; //pacote que esta dentro de application repositories
import org.springframework.data.repository.CrudRepository; //import referente a linha 5 e 6 classe crudrepository

import application.models.Livro; //import referente  linha 5 e 6 classe livro
public interface LivroRepository extends 
 CrudRepository<Livro, Integer> {//interface que vai erda extends de outra interface erdando objetos livro e integer
    
}
