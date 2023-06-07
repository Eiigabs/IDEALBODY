<%@page import="java.sql.SQLException"%>
<%@ page import = "Model.Cliente" %>
<%@ page import = "Dao.clienteDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
		
	<%
	try{

        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");

        clienteDao logar = new clienteDao();
        boolean loginCorreto = logar.verificarLogin(usuario, senha);
        if (loginCorreto){
            System.out.println("Login correto!");
            response.sendRedirect("http://localhost:8080/IdealBody/EspacoCliente.html");
        }else{
            System.out.println("Dados de login incorretos!");
            %>  
            <h1>LOGIN ERRADO</h1>  
            <%
        }
    		
		}catch(Exception e){
			System.out.println("ERRO AO LOGAR");
		}
	
	
	%>	
</body>
</html>