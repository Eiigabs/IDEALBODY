<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link  rel ="stylesheet" href="Cadastro.css">
    <link  rel="shortcut icon" href="imagensib/iconib.ico" type="image/icon">
    <title>IdealBody - Cadastro </title>
</head>
<body>

    <section class="bannerprincipal">
    <nav>
        <img  class="logo" src="imagensib/logosemfundoofc.png"/>

    <ul>
   		<li class="logginbotao"> <a href="http://localhost:8080/IdealBody/cliente/login.html"> ENTRAR </a> </li>
        <li> <a href= "http://localhost:8080/IdealBody/paginaInicial.html"> INÍCIO </a> </li>
    </ul>
</nav>

    <div class="cadastro">
    <div class="containerdecadastro"> 
            <form name = "Cadastro" action="RespostaCadastro.jsp" method = "post">
                <h2> Cadastre-se </h2>
               <div class="inputinform">

                    <div class="inputbox">
                        <label for="firstname"> Nome Completo </label>
                        <input id="firstname" type="text" name="firstname" placeholder="Informe seu nome completo" required>
                    </div>
                    <div class="inputbox">
                        <label for="cpf">  CPF </label>
                        <input id="cpf" type="number" name="cpf" placeholder="___.___.___-__" required>
                    </div>
                    <div class="inputbox">
                        <label for="dat"> Data de Nascimento </label>
                        <input id="dat" type="date" name="dat" placeholder="" required>
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
                    <div class="inputbox">
                        <label for="confirmpassword"> Confirme sua Senha</label>
                        <input id="confirmpassword" type="password" name="confirmpassword" placeholder="Informe sua Senha novamente" required>
                    </div>                 
                </div>
                   <div class="botaocontinuar">
                            <button><a href="#"></a> Continuar</button>                           
                   </div>

            </form> 

        </div>
        
    </div>
   
    
</section>
</body>
</html>