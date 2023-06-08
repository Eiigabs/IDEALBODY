<%@page import="Dao.clienteDao"%>
<%@page import="Model.Cliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdealBody - Clientes</title>
</head>
<body>

<%

        int idUsuario = Integer.parseInt(request.getParameter("idcliente"));
        clienteDao deleter = new clienteDao();
        boolean usuarioExcluido = deleter.DeletarCliente(idUsuario);

        if (usuarioExcluido) {
            out.println("<script>alert('Usuário excluído');</script>");
            response.sendRedirect("ListaCliente.jsp");
        } else {
           
            out.println("<script>alert('Usuário não encontrado');</script>");
        }
    
%>

</body>
</html>