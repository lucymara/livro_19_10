<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>    
    <head>        
        <meta charset="utf-8" />        
        <title>Livros</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

 
    </head>    
    <body>        
        <main class="container">        
            <h1>livros</h1>        
            <a href="/livro/insert"  class="btn btn-primary">Novo livro</a>        
            <table>            
                <tr>                
                    <th>ID</th>                
                    <th>Título</th>            
                </tr>            
                <c:forEach var="l" items="${livros}">                
                    <tr>                    
                        <td>${l.id}</td>                    
                        <td>${l.titulo}</td>                
                    </tr>            
                </c:forEach>        
            </table>

        <h1>Lista de livros Lucymara C.</h1></main>        
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>

