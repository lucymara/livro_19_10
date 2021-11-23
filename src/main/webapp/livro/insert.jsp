<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%codificaçao html para rodar no servidor%> 

<!DOCTYPE html> <%!utilizando html%>
<html> <%estrutura%>
    <head> <%estrutura%>
        <meta charset="utf-8" /> <%estrutura para nao ter problema de acentuçao%>

        <title>Novo Livros</title> <%titulo novo livro%>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      
    </head> <%estrutura%>
    <body> <%corpo%> 
        <h1>Novo Livro</h1>
        <hr>
        <form action="insert" method="post"> <%criando o formulario%> 
            <label for="titulo">Título</label> <%oque vai aparecer para o usuario titulo%>
            <input type="text" name="titulo"/> <%uma caixinha de texto para digitaçao%>

            <a href="/livro/list" class="btn btn-secondary">Voltar</a> <%botao voltar%>
            <input type="submit" value="Salvar"class="btn btn-warning"/> <%criando botao para salvar %>

        </form> <%fecando o formulario%>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body> <%corpo%>
</html> <%estrutura%>