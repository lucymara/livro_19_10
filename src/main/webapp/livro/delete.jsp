<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%!codificaçao html para rodar no servidor%> 

<!DOCTYPE html> <%!utilizando html%>
<html> <%!estrutura%>
    <head> <%!estrutura%>
        <meta charset="utf-8" /> <%!estrutura para nao ter problema de acentuçao%>

        <title>Deletar um Livro</title><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      
    </head> <%!estrutura%>
    <body> <%!corpo%> 
        <main class="container"><%!garante que o layout fique alinhado corretamente%>
        <h1>Deletar um Livro</h1><%!representa o título%>
        <hr><%!representa o paragrafo%>
<p>Tem certeza que deseja deletar o livro<em>"${livro.titulo}"</em>?</p><%!indica grau de enfase%>
        <form action="/livro/delete" method="post"><%!define local onde os dados recolhidos devem ser enviados%>
            <input type="hidden" name="id"value="${livro.id}"/><%!cria controle para os formularios%>
            

            <a href="/livro/list" class="btn btn-info">Voltar</a><%!representa um botão voltar%>
            <input type="submit" value="Deletar" class="btn btn-warning"/><%!representa um botão deletar%>

        </form><%!estrutura%>

    </main><%!estrutura%>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script><%!define atributo para um arquivo externo que não esta em nosso servidor%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script><%!define atributo para um arquivo externo que não esta em nosso servidor%>
    </body><%!estrutura%>
</html><%!estrutura%>