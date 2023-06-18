<%@page import="Dao.clienteDao"%>
<%@page import="Model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link  rel ="stylesheet" href="ListaCliente.css">
 <link  rel="shortcut icon" href="imagensib/iconib.ico" type="image/icon">
<title>IdealBody - Clientes</title>
</head>
<body>
<nav>

		<img  class="logo" src="imagensib/logosemfundoofc.png"/>

	<ul>
		<li> <a href="#"> VOLTAR </a> </li>
		
	</ul>
</nav>

	<section class="titulo">

		<h1> Listagem de Clientes </h1>
	</section>

<form action="#" name="formCliente" id="formCliente" method="POST"> 

<table border="1px">
<tr>
<th> Código </th> 
<th> Nome </th>
<th> CPF </th> 
<th> data de <br>nascimento </th> 
<th> Telefone </th>
<th> Email </th> 
<th> Genero </th>
<th> Editar </th>
<th> Deletar </th>
</tr>
<%
clienteDao clienteDao = new clienteDao();
ArrayList<Cliente> cliente = clienteDao.ArrayListaCliente();
for(Cliente c: cliente){%>
	<tr>
		<td><%= c.getId_cliente() %></td>
		<td><%= c.getNome() %></td>
		<td><%= c.getCpf() %></td>
		<td><%= c.getData() %></td>
		<td><%= c.getTelefone() %></td>
		<td><%= c.getEmail() %></td>
		<td><%= c.getGenero() %></td>
		
		<td> <a href="AlterarCliente.jsp?idcliente=<%=c.getId_cliente()%>"> <img src="imagensib/edit.png" width="18px" height="18px"> </a></td>
		<td> <a href="RespostaDeletarCliente.jsp?idcliente=<%=c.getId_cliente()%>"><img src="imagensib/delete.png" width="18px" height="18px"> </a></td>
	</tr>
<%} %>
</table>

</form>

</body>
</html>
