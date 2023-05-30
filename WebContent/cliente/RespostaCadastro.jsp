
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
<title>Cadastro Finalizado</title>
  <link  rel ="stylesheet" href="Cadastro.css">
</head>
<body>
	<%
	
	try{
	Cliente cliente1 = new Cliente();
	
	cliente1.setNome(request.getParameter("firstname"));
	cliente1.setCpf(request.getParameter("cpf"));
	cliente1.setData(request.getParameter("dat"));
	cliente1.setTelefone(request.getParameter("number"));
	cliente1.setEmail(request.getParameter("email"));
	cliente1.setGenero(request.getParameter("genero"));
	cliente1.setSenha(request.getParameter("password"));
	
	clienteDao cliente = new clienteDao();
	/**	
	cliente.InserirCliente(cliente1);
	*/
	} catch (Exception e){
		
		JOptionPane.showMessageDialog(null, "ERRO AO CRIAR CADASTRO");
		
	}
	
	%>
	<h1>Obrigado pelo seu cadastro</h1>
	<br>
	
	
</body>
</html>