<%@page import="Model.Cliente"%>
<%@page import="java.util.ArrayList"%>
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
		<form name = "Cadastro" action="RespostaCadastro.jsp" method = "post">
                <h2> Atualização de Cadastro </h2>


                <div class="inputinform">
                	<div class="inputbox">
                        <label for="id"> Código</label>
                        <input id="id" type="text" name="firstname"  disabled>
                        
                    </div>
                    <div class="inputbox">
                        <input id="hid" type="hidden" name="firstname" value= "7" disabled>
                    </div>

                    <div class="inputbox">
                        <label for="firstname"> Nome Completo </label>
                        <input id="firstname" type="text" name="firstname" placeholder="Informe seu nome completo" required>
                    </div>
                    <div class="inputbox">
                        <label for="cpf">  CPF </label>
                        <input id="cpf" type="numer" name="cpf" placeholder="___.___.___-__" required>
                    </div>
                    <div class="inputbox">
                        <label for="dat"> Data de Nascimento </label>
                        <input id="dat" type="date" name="dat" placeholder="" required>
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
                        <input id="number" type="tel" name="number" placeholder="(xx) xxxxx-xxxx" required>
                    </div>
                    <div class="inputbox">
                        <label for="email"> E-mail</label>
                        <input id="email" type="email" name="email" placeholder="Informe seu E-mail" required>
                    </div>
                    <div class="inputbox">
                        <label for="password"> Senha</label>
                        <input id="password" type="password" name="password" placeholder="Informe sua senha" required>
                    </div>
                                     
                </div>

                  		 <div class="botaocontinuar">
                            <button><a href="#"></a> SALVAR </button>    
                        
                        </div>
            </form>
	    </div>
    </div>  
  </section>
	

</body>
</html>
