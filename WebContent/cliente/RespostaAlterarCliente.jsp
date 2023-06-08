<%@page import="Dao.ClienteDao"%>
<%@page import="Model.Cliente"%>
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
cliente.setGenero(request.getParameter("genero"));
cliente.setSenha(request.getParameter("password"));

ClienteDao clienteDao = new ClienteDao();
resultado = clienteDao.AlterarCliente(cliente);

if(resultado){ %>
<script language="JavaScript">
	alert('Cliente Alterado com sucesso!');
	window.location.href="ListarCliente.jsp"
</script>
<% }else{ %>
<script language="JavaScript">
	alert(' foi possível alterar o cliente!');
	window.location.href="ListarCliente.jsp"
</script>
<%} %>
