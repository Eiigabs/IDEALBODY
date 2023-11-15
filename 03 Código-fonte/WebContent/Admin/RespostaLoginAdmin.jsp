<%@page import="java.sql.SQLException"%>
<%@ page import = "Model.Cliente" %>
<%@ page import = "Dao.clienteDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
		
	<%
	try{

        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");

        if (usuario.equals("Adm") && senha.equals("0429")){
            System.out.println("Login correto!");
            response.sendRedirect("http://localhost:8080/IdealBody/Admin/EspacoAdmin.jsp");
        }else{
            System.out.println("Dados de login incorretos!");
            %>  
           <script language="JavaScript">
           alert('Dados de login incorretos!');
           window.location.href="loginAdmin.html";
       		
       </script>
            <%
        }
    		
		}catch(Exception e){
			System.out.println("ERRO AO LOGAR");
		}
	
	
	%>	
</body>
</html>