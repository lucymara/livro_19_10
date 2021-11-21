package application.models;  //esta dentro do pacote application e models


import javax.persistence.Entity;//responsavel por acessar o banco de dados 
import javax.persistence.GeneratedValue; //importe referente a linha 15
import javax.persistence.GenerationType; //import referente a linha 15
import javax.persistence.Id; //import referente a linha 16
import javax.persistence.Table; //import referente a linha 11

@Entity //indica uma declaraçao que sera utilizada na proxima linha java
@Table(name="livros") //indica uma declaraçao que sera utilizada na proxima linha java criaçao de uma tabela
public class Livro { //classe publica livros

    @Id //indica uma declaraçao que sera utilizada na proxima linha java anotaçao id
    @GeneratedValue(strategy = GenerationType.IDENTITY)//indica uma declaraçao que sera utilizada na proxima linha java gerar um valor estrategia altomaticamente
    private int id;//variavel privada para receber id
    private String titulo;

    public int getId() { //metodo get na linha 19 ate 21 relativo a linha 16
        return id;
    }
    public void setId(int id) {//metodo set da linha 22 ao 24 relativo a linha 16 que vai alterar o valor
        this.id = id; 
    }
    public String getTitulo() { //metodo get na linha 25 ate 27 relativo a linha 17
        return titulo;
    }
    public void setTitulo(String titulo) { //metodo set na linha 28 ate 30 relativo a linha 17 
        this.titulo = titulo;
    }


    
}
