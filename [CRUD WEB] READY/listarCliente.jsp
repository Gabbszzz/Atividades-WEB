

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.DAO.clienteDAO, br.com.model.Cliente"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Clientes</title>
    </head>
    <body>
        <h1>Clientes Cadastrados</h1>
        
        <%
    clienteDAO clientedao = new clienteDAO();        
    ArrayList<Cliente> lista = clientedao.listarCliente();
    request.setAttribute("list",lista);
            
        %>
        
        <table class="table">
            
            
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<title>Sap Listar</title>
	<style>
		*{
			font-family: arial;
		}
		main.container{
			margin-top: 15px;
			margin-left: 20px;
		}
		ul{
			height: 50px;
		}
		li{
		 	font-size: 13px;
			margin-top: 3px;
			margin-right: 20px;
		}
		text{
			font-size: 16px;
		}
		#text{
			margin-top: 5px;
		}
		button{
			margin-left: 5px;
			font-size: 17px;
			border-radius: 5px;
			border: none;
			width: 180px;
			height: 40px;
			background-color: limegreen;
			color: white;
		}
		button.details{
			width: 120px;
		}
		button.edit{
			background-color: royalblue;
			width: 90px;
		}
		button.del{
			background-color: red;
			width: 100px;
		}
		hr{
			margin-bottom: 1px;
		}
	</style>
</head>
<body>
	<nav class="navbar-dark navbar-expand-lg bg-dark">
  		<div class="container-fluid">
    		<div class="collapse navbar-collapse" id="navbarNav">
      			<ul class="navbar-nav">
        			

      			</ul>
    		</div>
 		</div>
	</nav>
	<main class="container">
		
		<table class="table">
  <thead>
    <tr>
        
      <th scope="col">IdCliente</th>
      <th scope="col">Nome</th>
      <th scope="col">Email</th>
      <th scope="col">Senha</th>
      
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    
         <c:forEach items="${list}" var="cliente">
                <tr>
                    <td><c:out value="${cliente.getIdCliente()}"/></td>
                    <td><c:out value="${cliente.getNome()}"/></td>
                    <td><c:out value="${cliente.getEmail()}"/></td>
                    <td><c:out value="${cliente.getSenha()}"/></td>
                </tr>
                
            </c:forEach>
     
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      
     
    </tr>
    <tr>
    	<td></td>
    	<td></td>
    	<td></td>
    	
      	<td>
		</td>
    </tr>
    <tr>
    	<td></td>
    	<td></td>
    	<td></td>
    	
      	<td>
		</td>
    </tr>
    <tr>
    	<td></td>
    	<td></td>
    	<td></td>
 
      	<td>
		</td>
    </tr>
  </tbody>
</table>
	</main>
</body>
</html>
            


    </body>
</html>
