<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.clienteDAO, br.com.model.Cliente"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>Listar Clientes</title>
    </head>
    <body>
         <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
               <a class="navbar-brand" href="#">AulaWeb</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                     <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Features</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container text-center">
            <div class="row">
                <div class="col">
                    <main class="container">
                        <%
                            clienteDAO clientedao = new clienteDAO();
                            ArrayList<Cliente> lista = clientedao.listarCliente();
                            request.setAttribute("lista", lista);
                        %>
                        <form id="form" action="">
                            <div class="main">
                            <h1>Clientes Cadastrados</h1>
                                <input class="req" type="number" name="id" placeholder="Insert ID">
                                <button type="button" class="btn btn-secondary" onclick="validarID()">Editar</button>
                                <span class="span-req">Insira um ID para progredir!!</span>
                                <button >Deletar</button>
                                
                                                <%
                                Cliente cliente1 = new Cliente();
                                cliente1.setIdCliente(Integer.parseInt(request.getParameter("id")));
                                clienteDAO objcliente1 = new clienteDAO();
                                objcliente1.deletarCliente(cliente1);
                            %>
                                 
                              
                            </div>
                            <span class="span-req">
                                Nome<input class="req" type="username" name="username" placeholder="Username" oninput="validarNome()">
                                Email<input class="req" type="email" name="email" placeholder="Email" id="email" oninput="validarEmail()">
<span class="span-req">E-mail invalido, Tente novamente.</span>
                                Senha<input class="req" type="password" name="senha" placeholder="Password" id="password" oninput="validarSenha()">
<span class="span-req">A senha deve conter mais de 8 a 16 caracteres</span>
                              
                                 
                            </span>
                            </form>
                        <table class="table" border="2">
                            <tr>
                                <th scope="col">Id_Cliente</th>
                                <th scope="col">Nome</th>
                                <th scope="col">Email</th>
                                <th scope="col">Senha</th>
                            </tr>
                            
                            
                            
                            
                            <c:forEach items="${lista}" var="cliente">
                            <tr>
                                <td><c:out value="${cliente.getIdCliente()}" /></td>
                                <td><c:out value="${cliente.getNome()}" /></td>
                                <td><c:out value="${cliente.getEmail()}" /></td>
                                <td><c:out value="${cliente.getSenha()}" /></td>
                            </tr>
                            </c:forEach>
                        </table>
                    </main>
                </div>
            </div>
        </div>
    </body>
    <style>
        form{
            margin-bottom: 70px;
        }
        div.main{
            display: auto;
            margin-bottom: 20px;
        }
        form{
            height: 10px;
            margin-left: 50px;
            margin-top: 20px;
           
        }
        input{
            margin-left: 15px;
            margin-right: 5px;
        }
        .span-req{
            font-size: 12px;
            margin-left: 15px;
            display: none;
        }
        body{
            background: #f9f9f9;
        }
        h1{
            text-align: center;
        }
        table{
            margin-top: 200px;
        }
        main.container{
            display: auto;
            margin-top: 50px;
            background: whitesmoke;
            border-radius: 15px;
        }
    </style>
    <script>
const inputs = document.querySelectorAll('.req');
const spans = document.querySelectorAll('.span-req');
const emailRegex = /^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

function setErro(index){
spans[index].style.display='block';
}
function removeError(index){
spans[index].style.display='none';
}
       
        function validarID(){
            if(inputs[0].value===""){
                setErro(0),removeErro(1);
            }else{
                setErro(1),removeError(0);  
            }
        }
        function validarEmail(){
if(emailRegex.test(inputs[2].value)){
                    removeError(2);      
}else{
                    setErro(2);
}  
}
        function validarSenha(){
if(inputs[3].value.length>8){
removeError(3);
}else{
setErro(3);
}
}

 
</script>
</html>
