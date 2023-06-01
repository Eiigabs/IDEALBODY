<%@page import="Dao.clienteDao"%>
<%@page import="Model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tela de Listar Cliente</title>
</head>
<body>

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
</tr>
<%
clienteDao clienteDao = new clienteDao();
ArrayList<Cliente> cliente = clienteDao.ArrayAlterarCliente();
for(Cliente c: cliente){%>
	<tr>
		<td><%= c.getId_cliente() %></td>
		<td><%= c.getNome() %></td>
		<td><%= c.getCpf() %></td>
		<td><%= c.getData() %></td>
		<td><%= c.getTelefone() %></td>
		<td><%= c.getEmail() %></td>
		<td><%= c.getGenero() %></td>
		
		<td> <a href="AlterarCliente.jsp?idcliente=<%=c.getId_cliente()%>"> <img src="../img/edit.png" width="10px" height="10px"> </a></td>
		<td> <img src="../img/delete.png" width="10px" height="10px"> </td>
	</tr>
<%} %>
</table>

</form>

</body>
</html>





