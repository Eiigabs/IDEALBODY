<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.SQLException"%>
<%@ page import = "Model.Cliente" %>
<%@ page import = "Dao.clienteDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Pagamento </title>
<link  rel ="stylesheet" href="pagamento.css">
<link  rel="shortcut icon" href="imagensib/iconib.ico" type="image/icon">
</head>
<body>
	<%
	Cliente cliente1 = new Cliente();
	
	cliente1.setNome(request.getParameter("firstname"));
	cliente1.setCpf(request.getParameter("cpf"));
	cliente1.setData(request.getParameter("dat"));
	cliente1.setTelefone(request.getParameter("number"));
	cliente1.setEmail(request.getParameter("email"));
	cliente1.setSenha(request.getParameter("password"));
	
	clienteDao cliente = new clienteDao();
	
	cliente.InserirCliente(cliente1);
	
	%>
<nav>
        <!-- Cabecalho -->
           <img  class="logo" src="imagensib/logosemfundoofc.png">

       	<ul>
           <li> <a href="#"> INICIO </a> </li>
        </ul>
   </nav>
	<%
	String id = request.getParameter("cpf"); 
	clienteDao c = new clienteDao();
	Cliente c1 = new Cliente();
	c1 = c.ListarClienteIDpag(id);
	%>

   <section class="blocodosplanos">
    <!--Fim dos cards dos planos -->
    <div class="cardpg">
        <form name = "Pagamento" action="RespostaPagamento.jsp" method = "post">
    
            <div class="cima"> 
            <h2 class="tit"> Pagamento </h2>
    
            <img class="band"src="imagensib/bandeirascart.png">
        </div>
            <div class="inputboxc">
    
                <div class="ifn"> 
                <label for="firstname"> Nome do Titular </label>
                <input  id="firstname" type="text" name="firstname" placeholder="Nome no cartao" required>
            	</div>
            	<div class="inputbox">
                <label for="id"> Código</label>
                <input type="text" name="idCliente" id="idCliente" disabled="disabled" value="<%=c1.getId_cliente()%>">
				<input type="hidden" name="hidCliente" id="hidCliente" value="<%=c1.getId_cliente()%>">
                 </div>
            </div>
            <div class="inputboxc">
                <div class="ifn"> 
                    <label for="cpf">  CPF do Titular </label>
                    <input id="cpf" type="text" name="cpf" placeholder="___.___.___-__" required>
                        
                </div>
                <div class="ifn"> 
                    <label for="nmrcart"> Numero do Cartao</label>
                    <input id="nmrcart" type="text" name="nmrcart" placeholder="N Cartao" required>       
                </div>
            </div>
        
            <div class="inputboxc">
    
                <div class="ifn"> 
                <label for="dat"> Vencimento </label>
                <input id="dat" type="text" name="dat" placeholder="__/_____" required>
                </div>
    
                <div class="ifn"> 
                    <label for="cvc"> CVC </label>
                    <input id="cvc" type="number" name="cvc" placeholder="" required>
                </div>
            </div>
                <div class="escl"> 
                   <div class="bcart"> 
                    <label for="plan"> Plano </label>
                        <select class="selec" name="Planos">
                            <option value="1">BASIC</option>
                            <option value="2">GOLD</option>
                            <option value="3">PREMIUM</option>
                     </select>
                    </div>
                    <div class="bcart"> 
                        <label for="uni"> Unidade de Cobranca </label>
                        <select class="selec" name="Unidade">
                            <option value="5">Guama-Formosa</option>
                            <option value="6"> Marco-Tv.Estrela</option>
                            <option value="7">Nazare-Av.Nazare</option>
                            <option value="8">Shopping Metropole Ananindeua-BR 316</option>
                            <option value="9">Parque Shopping-Av.Augusto Montenegro</option>
                     </select>
            </div>
                </div>

                <diV class="lic">

                    <input type="checkbox" name="conc" value="concordo"><p>  Li e concordo com os Termos</p>

                </div>
				     <div class="botaocontinuar">
                                <button><a href="#"></a> Concluir </button>    
                            
                     </div>

	</form>           
</div>
    <div class="orgcard"> 
        <div class="card">            
            <div class="ladodesc">
                <details> 
                    <summary class="b"> BASIC </summary>
                 <dd> ACADEMIA UNICA</dd>
                 <dd> IB+ App </dd>
                 <div class="ladopreco"> 
                 <dd class="precob"> 79,90 </dd>
           
                   </div>
               
                </details>
            </div>    
        </div>
        <div class="card">           
            <div class="ladodesc">
                <details> 
                    <summary class="g"> GOLD </summary>
                    <dd> IDEAL SUPLEMENTS </dd>
                    <dd> TODAS AS UNIDADES </dd>
                    <dd> IB+ App </dd>
                 <div class="ladopreco"> 
                    <dd class="precog"> 129,90 </dd>
           
                   </div>
               
                </details>
           
            </div>
        </div>
        <div class="card">
            
            <div class="ladodesc">
                <details> 
                    <summary class="p"> PREMIUM </summary>
                    <dd> ACOMPANHAMENTO NUTRICIONAL</dd>
                    <dd> IDEAL SUPLEMENTS </dd>
                    <dd> TODAS AS UNIDADES </dd>
                    <dd> IB+ App </dd>
                 <div class="ladopreco"> 
                    <dd class="precop"> 179,90 </dd>
           
                   </div>         
                </details>
           
            </div>   
        </diV>
    </diV>
   
</section>

<section class="blocopag">

</section>
	
	
	
</body>
</html>