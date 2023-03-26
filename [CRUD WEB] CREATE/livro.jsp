<%-- 
    Document   : livro
    Created on : 28/11/2022, 08:43:11
    Author     : programador
--%>

<%@page import="br.com.DAO.livroDAO"%>
<%@page import="br.com.model.livro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Livro cadastrado</h1>
        <%
            try{
            livro objliv = new livro();
            objliv.setNome(request.getParameter("nome"));
            objliv.setTema(request.getParameter("tema"));
            objliv.setAutor(request.getParameter("autor"));
            objliv.setDistribuidora(request.getParameter("distribuidora"));
            
            livroDAO objlivDAO = new livroDAO();
            objlivDAO.cadastrarLivro(objliv);
            }catch (Exception e){
            
            }
            %>
    </body>
</html>
