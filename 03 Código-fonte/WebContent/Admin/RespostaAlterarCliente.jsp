<%@page import="Dao.clienteDao"%>
<%@page import="Model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
boolean resultado = false;
int id = Integer.parseInt(request.getParameter("hidCliente"));

Cliente cliente = new Cliente();
cliente.setId_cliente(id);
cliente.setNome(request.getParameter("firstname"));
cliente.setCpf(request.getParameter("cpf"));
cliente.setData(request.getParameter("dat"));
cliente.setTelefone(request.getParameter("number"));
cliente.setEmail(request.getParameter("email"));


clienteDao clienteDao = new clienteDao();
resultado = clienteDao.AlterarCliente(cliente);

if(resultado){ %>
<script language="JavaScript">
	alert('Cliente Alterado com sucesso!');
	window.location.href="EspacoAdmin.jsp"
</script>
<% }else{ %>
<script language="JavaScript">
	alert(' foi possível alterar o cliente!');
	window.location.href="EspacoAdmin.jsp"
</script>
<%} %>