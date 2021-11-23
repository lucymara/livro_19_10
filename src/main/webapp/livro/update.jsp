<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html><!estrutura>
<html><!estrutura>
    <head><!estrutura>
        <meta charset="utf-8" /><!forma de codificação de caractere utilizado no documento>

        <title>Editar Livro</title><!define titulo da pagina>
      
    </head><!estrutura>
    <body><!estrutura>
        <h1>Editar Livro</h1><!define nivel do titulo>
        <hr><!estrutura>
        <form action="/livro/update" method="post"><!define o local em que os dados recolhidos do formulario devem ser enviados>
            <input type="hidden" name="id" value="${livro.id}"/><!cria controle interativo para o formularios>
            <label for="titulo">Título</label><!representa uma legenda para um item em uma interface de usuário>

            <input type="text" name="titulo" value="${livro.titulo}"/><! controle interativo para o formularios>

            <a href="/livro/list">Voltar</a><!cria um hiperlink>
            <input type="submit" value="Salvar"/><!cria controle interativo>

        </form><!estrutura>
    </body><!estrutura>
</html><!estrutura>
