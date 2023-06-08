<%@page import="Model.Cliente"%>
<%@page import="Dao.clienteDao"%>
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
   		<li> <a href="http://localhost:8080/IdealBody/cliente/ListaCliente.jsp"> VOLTAR </a> </li>
    </ul>
</nav>
		<div class="cadastro">
    	<div class="containerdecadastro"> 
	
	<%
	ClienteDao clientedao = new ClienteDao();
	Cliente cliente = new Cliente();
	cliente = clientedao.ListarClienteID(Integer.parseInt(request.getParameter("idcliente")));
	%>
		// INICIO DO FORMULARIO 
		<form name = "AlterarCliente" action="RespostaAlterarCliente.jsp" method = "post">
                <h2> Atualização de Cadastro </h2>
                <div class="inputinform">
                	<div class="inputbox">
                        <label for="id"> Código</label>
                        <label>Código Cliente</label>
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
				<input id="dat" type="date" name="dat" value="<%=cliente.getDt_nascimento()%>" required>
			    </div>
			     <div class="genero">
				<div class="generotitulo">
				<p> Gênero</p>
			        </div>
					<div class="gruposdegenero">
					    <div class="generoinput">  
					    <input type="radio" id="radio1" name="genero"> 
					    <label for="feminino"> Feminino</label>
					    </div>
					    <div class="generoinput">  
						<input type="radio" id="radio2" name="genero"> 
						<label for="Masculino"> Masculino</label>
					    </div>
					    <div class="generoinput">  
						<input type="radio" id="radio3" name="genero"> 
						<label for="outros"> Outros </label>
					    </div>
					    <div class="generoinput">  
						<input type="radio" id="radio4" name="none"> 
						<label for="none"> Prefiro não informar </label>
					    </div>
				      </div>
                    	    </div>
			    <div class="inputbox">
				<label for="number"> Telefone</label>
				<input id="number" type="tel" name="number" value="<%=cliente.getTelefone()%>" required>
			    </div>
			    <div class="inputbox">
				<label for="email"> E-mail</label>
				<input id="email" type="email" name="email" value="<%=cliente.getEmail()%>" required>
			    </div>
			    <div class="inputbox">
				<label for="password"> Senha</label>
				<input id="password" type="text" name="password" value="<%=cliente.getEmail()%>" required>
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
