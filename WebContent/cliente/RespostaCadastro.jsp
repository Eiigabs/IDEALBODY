
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
	Cliente cliente1 = new Cliente();
	
	cliente1.setNome(request.getParameter("firstname"));
	cliente1.setCpf(request.getParameter("cpf"));
	cliente1.setData(request.getParameter("dat"));
	cliente1.setTelefone(request.getParameter("number"));
	cliente1.setEmail(request.getParameter("email"));
	cliente1.setSenha(request.getParameter("password"));
	
	clienteDao cliente = new clienteDao();
	
	cliente.InserirCliente(cliente1);
	
	%>
	 <script language="JavaScript">
		 alert('obrigado pelo seu cadastro');
           window.location.href="http://localhost:8080/IdealBody/cliente/pagamento.jsp";
       		
       </script>
	<br>
	
	
</body>
</html>