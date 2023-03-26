<%-- 
    Document   : inserirCliente
    Created on : 23 de nov. de 2022, 11:02:27
    Author     : senaij04
--%>

<%@page import="br.com.DAO.clienteDAO"%>
<%@page import="br.com.model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Cliente cadastrado</h1>
        
        <%
            try{
            Cliente objcliente = new Cliente();
            objcliente.setNome(request.getParameter("name"));
            objcliente.setEmail(request.getParameter("email"));
            objcliente.setSenha(request.getParameter("senha"));
            
            clienteDAO objclientedao= new  clienteDAO();
            objclientedao.cadastrarCliente(objcliente);
            }catch (Exception e){
            
            }
            %>
            
    </body>
</html>
