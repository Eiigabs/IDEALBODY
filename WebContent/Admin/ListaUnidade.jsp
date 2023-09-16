<%@page import="Dao.clienteDao"%>
<%@page import="Model.Unidades"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link  rel ="stylesheet" href="ListaCliente.css">
 <link  rel="shortcut icon" href="imagensib/iconib.ico" type="image/icon">
<title>IdealBody - Unidades</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
</head>
<body>
<nav>

		<img  class="logo" src="imagensib/logosemfundoofc.png"/>

	<ul>
		<li> <a href="http://localhost:8080/IdealBody/Admin/EspacoAdmin.html"> VOLTAR </a> </li>
		
	</ul>
</nav>

	<section class="titulo">

		<h1> Listagem de Unidades </h1>
	</section>
	<section class="blocotabela">
<form action="#" name="formCliente" id="formCliente" method="POST"> 

<table border="1px">
<tr>
<th> Código </th> 
<th> Nome da unidade </th>
<th> Endereço </th> 

<th> Editar </th>
<th> Listar Clientes </th>
</tr>
<%
clienteDao clienteDao = new clienteDao();
ArrayList<Unidades> unidades = clienteDao.ArrayListaUnidade();
for(Unidades c: unidades){%>
	<tr>
		<td><%= c.getId_unidades() %></td>
		<td><%= c.getNome_unidade() %></td>
		<td><%= c.getEndereco() %></td>
		
		<td> <a href="AlterarCliente.jsp?idcliente=<%=c.getId_unidades()%>"> <i class="bi bi-pencil-square"></i></a></td>
		<td> <a href="RespostaDeletarCliente.jsp?idcliente=<%=c.getId_unidades()%>"><i class="bi bi-people"></i></a></td>
	</tr>
<%} %>
</table>

</form>
</section>

</body>
</html>
