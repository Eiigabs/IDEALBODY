
<%@page import="javax.swing.JOptionPane"%>
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
	
	Login cliente = new Login();
	
	cliente.setUsuario(request.getParameter("usuario"));
	cliente.setSenha(request.getParameter("senha"));
		
	clienteDao logar = new clienteDao();
	logar.Logar(cliente);
    

	%>
	
	
	
</body>
</html>