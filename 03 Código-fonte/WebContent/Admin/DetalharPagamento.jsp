<%@page import="Model.Pagamento"%>
<%@page import="Dao.clienteDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link  rel ="stylesheet" href="listapagamento.css">
 <link  rel="shortcut icon" href="imagensib/iconib.ico" type="image/icon">
<title>IdealBody - Clientes</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
</head>
<body>
<nav>

		<img  class="logo" src="imagensib/logosemfundoofc.png"/>

	<ul>
		<li> <a href="http://localhost:8080/IdealBody/Admin/EspacoAdmin.jsp"> VOLTAR </a> </li>
		
	</ul>
</nav>




	<section class="titulo">
	</section>
	<section class="blocotabela">
<form action="#" name="formCliente" id="formCliente" method="POST"> 

<table border="1px">
<tr>
<th> Código do pagamento </th> 
<th> Id cliente</th> 
<th> Nome </th>
<th> CPF </th> 
<th> data de <br>nascimento </th> 
<th> Telefone </th>
<th> Email </th> 

</tr>
<%
int id_pags = Integer.parseInt(request.getParameter("id_cliente"));
clienteDao clienteDao = new clienteDao();
ArrayList<Pagamento> pagamento = clienteDao.ArrayDetalharPagamentos(id_pags);


for(Pagamento c: pagamento){%>
	<tr>
		<td><%= c.getId_pagamento() %></td>
		<td><%= c.getId_cliente() %></td>
		<td><%= c.getNome() %></td>
		<td><%= c.getCpf() %></td>
		<td><%= c.getData() %></td>
		<td><%= c.getTelefone() %></td>
		<td><%= c.getEmail() %></td>

	</tr>
<%} %>
</table>

</form>
</section>

</body>
</html>
