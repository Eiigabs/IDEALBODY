<%@page import="Model.Cliente"%>
<%@page import="Dao.clienteDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdealBody - Clientes</title>
 <link  rel ="stylesheet" href="Cadastro.css">
  <link  rel="shortcut icon" href="imagensib/iconib.ico" type="image/icon">
</head>
<body>
<body>

<section class="bannerprincipal">
    <nav>
        <img  class="logo" src="imagensib/logosemfundoofc.png"/>

    <ul>
   		<li> <a href="http://localhost:8080/IdealBody/Admin/ListaCliente.jsp"> VOLTAR </a> </li>
    </ul>
</nav>
		<div class="cadastro">
    	<div class="containerdecadastro"> 
	
	<%
	clienteDao c = new clienteDao();
	Cliente cliente = new Cliente();
	cliente = c.ListarClienteID(Integer.parseInt(request.getParameter("idcliente")));
	%>
		
		<form name = "AlterarCliente" action="RespostaAlterarCliente.jsp" method = "post">
                <h2> Atualização de Cadastro </h2>
                <div class="inputinform">
                	<div class="inputbox">
                        <label for="id"> Código</label>
                        <input type="text" name="idCliente" id="idCliente" disabled="disabled" value="<%=cliente.getId_cliente()%>">
						<input type="hidden" name="hidCliente" id="hidCliente" value="<%=cliente.getId_cliente()%>">
                        </div>
			<br>
			   <div class="inputbox">
				<label for="firstname"> Nome Completo </label>
				<input id="firstname" type="text" name="firstname" value="<%=cliente.getNome()%>" required>
			    </div>
			    <div class="inputbox">
				<label for="cpf">  CPF </label>
				<input id="cpf" type="numer" name="cpf" value="<%=cliente.getCpf()%>" required>
			    </div>
			    <div class="inputbox">
				<label for="dat"> Data de Nascimento </label>
				<input id="dat" type="date" name="dat" value="<%=cliente.getData()%>" >
			    </div>
			    <div class="inputbox">
				<label for="number"> Telefone</label>
				<input id="number" type="tel" name="number" value="<%=cliente.getTelefone()%>" required>
			    </div>
			    <div class="inputbox">
				<label for="email"> E-mail</label>
				<input id="email" type="email" name="email" value="<%=cliente.getEmail()%>" required>
			    </div>
			        
			   </div>

                  		<div class="botaocontinuar">
                            	<button><a href="#"></a> ATUALIZAR </button>
                        	</div>
           	 </form>
	    </div>
   	 </div>  
  </section>
	

</body>
</html>