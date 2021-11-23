<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%!codificaçao html para rodar no servidor%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%!fazer uma busca em java no servidor jsp%> 
<!DOCTYPE html> <%!utilizando html%> 
<html>  <%!estrutura%>  
    <head>  <%!estrutura%>      
        <meta charset="utf-8" /> <%!estrutura para nao ter problema de acentuçao%>       
        <title>Livros</title> <%!titulo%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

 
    </head>  <%!estrutura%>  
    <body>   <%!corpo%>     
        <main class="container"><%!garante que o layout fique alinhado corretamente%>      
            <h1>livros</h1> <%!representa o nivel do titulo%>       
            <button onclick="location.href='/livro/insert'" type="button" class="btn btn-primary">Novo Livro</button><%!representa o botão novo livro%>        
            <table>    <%!criando uma tabela css%>         
                <tr><%!define linha de uma tabela%>                
                    <th>ID</th>      <%!id da tabela%>           
                    <th>Título</th>  <%!titulo da tabela%>           
                </tr><%!fechamento de definição de linha da tabela%>          
                <c:forEach var="l" items="${livros}">  <%!variavel e atabela que recebemos a base de dados%>               
                    <tr><%!define linha de uma tabela%>                   
                        <td>${l.id}</td>  <%!vai vir do banco de dados numero%>                   
                        <td>${l.titulo}</td> <%!o que temos no banco de dados nome e titulo do livro%> 
                        <td><%define celula de uma tabela%>
                            <a href="/livro/update/${l.id}" class="btn btn-primary">Atualizar livro</a> <%!link do botao de atualizar livro%> 
                        </td><!%fechamento da definição da tabela%>
                        <td> <a href="/livro/delete/${l.id}" class="btn btn-danger">Delete livro</a></td>  <%!link do botao para deletar livro%>               
                    </tr><!%estrutura%>          
                </c:forEach> <%!fechamento da variavel que recebe base de dados livros%>        
            </table> <%!tabela fim%> 

        <h1>Lista de livros Lucymara C.</h1></main><%define o nivel do titulo%>        
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script><!%define atributo para um arquivo externo que não esta em nosso servidor%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script><%define atributo para um arquivo externo que não esta em nosso servidor%>
</body> <%!corpo%>
</html> <%!estrutura%>
