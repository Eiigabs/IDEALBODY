
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.SQLException"%>
<%@ page import = "Model.Pagamento" %>
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
	Pagamento c = new Pagamento();
	
	c.setNome_titular(request.getParameter("firstname"));
	c.setCliente(Integer.parseInt(request.getParameter("hidCliente")));
	c.setCpf_titutar(request.getParameter("cpf"));
	c.setNum_cartao(request.getParameter("nmrcart"));
	c.setVencimento_cartao(request.getParameter("dat"));
	c.setCvc(Integer.parseInt(request.getParameter("cvc")));
	c.setPlano(Integer.parseInt(request.getParameter("Planos")));
	c.setUnidade(Integer.parseInt(request.getParameter("Unidade")));
	
	clienteDao pagamento = new clienteDao();
	
	pagamento.InserirPagamento(c);
	
	%>
	 <script language="JavaScript">
		 alert('obrigado! Seja Bem-vindo!');
           window.location.href="http://localhost:8080/IdealBody/EspacoCliente.jsp";
       		
       </script>
	<br>
	
	
</body>
</html>