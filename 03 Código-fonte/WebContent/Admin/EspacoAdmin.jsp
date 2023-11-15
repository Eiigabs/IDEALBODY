<%@page import="Model.Pagamento"%>
<%@page import="Model.Unidades"%>
<%@page import="Dao.clienteDao"%>
<%@page import="Model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link  rel ="stylesheet" href="EspacoAdmin.css">
<link  rel="shortcut icon" href="imagensib/iconib.ico" type="image/icon">
<title>  Administrativo</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">

</head>
<body>
<div>
		<nav class = "superior" >
			 <img  class="logo" src="imagensib/logoibofc.png"/>
			<ul>


                <a class="ola">
			        <span class = "icon"><i class="bi bi-person-circle"></i></span>
			        <span > Olá, Admin</span>
		        </a> 



				<li class= "item-menu">

	        	</li>	
				<li class= "item-menu">
		        <a href="http://localhost:8080/IdealBody/paginaInicial.html">
			        <span class = "icon"> <i class="bi bi-box-arrow-left"></i></span>
			        <span > Voltar</span>
		        </a> 
	        	</li>		
			</ul>
		</nav>
	</div>
	<nav class = "lateral" id="mySidenav" class="sidenav-content">

        <diV class="ptimagem"> 
        <img  class="logo" src="imagensib/logosemfundoofc.png">
    </diV>

    <ul>


         <li class= "item-menu">
	        <a href="#">
		        <span class = "icon"><i class="bi bi-house"></i> </span>
		        <span href="" onclick="openPage('pagina1')" class = "txt-link"> Home </span>
	        </a> 
        </li>
        <li class= "item-menu">
	        <a href="#">
		        <span class = "icon"> <i class="bi bi-person-square"> </i></span>
		        <span  href="#" onclick="openPage('pagina2')" class = "txt-link"> Clientes </span>
	        </a> 
        </li>
        <li class= "item-menu">
	        <a href="#">
		        <span class = "icon"><i class="bi bi-cart-check"></i> </span>
		        <span href="#" onclick="openPage('pagina3')" class = "txt-link"> Unidades </span>
	        </a> 
        </li>
        <li class= "item-menu">
	        <a href="#">
		        <span class = "icon"><i class="bi bi-credit-card"></i> </span>
		        <span href="#" onclick="openPage('pagina4')" class = "txt-link"> Pagamentos </span>
	        </a> 
        </li>



    </ul>

	</nav>


  <!--Bloco das diferentes páginas -->

     <div id="content">
          <div id="pagina1" class="page active">
            <h1 class="titpage"> Home </h1>

     </div>

      <div id="pagina2" class="page">

        <h1 class="titpage"> Clientes </h1>



        <section class="blocotabela">
          <form action="#" name="formCliente" id="formCliente" method="POST"> 
				
		<table border="1px">
		<tr>
		<th> Código </th> 
		<th> Nome </th>
		<th> CPF </th> 
		<th> data de <br>nascimento </th> 
		<th> Telefone </th>
		<th> Email </th> 
		<th> Editar </th>
		<th> Deletar </th>
		</tr>
		<%
		clienteDao clienteDao = new clienteDao();
		ArrayList<Cliente> cliente = clienteDao.ArrayListaCliente();
		for(Cliente c: cliente){%>
			<tr>
				<td><%= c.getId_cliente() %></td>
				<td><%= c.getNome() %></td>
				<td><%= c.getCpf() %></td>
				<td><%= c.getData() %></td>
				<td><%= c.getTelefone() %></td>
				<td><%= c.getEmail() %></td>
				
				<td> <a href="AlterarCliente.jsp?idcliente=<%=c.getId_cliente()%>"> <i class="bi bi-pencil-square"></i> </a></td>
				<td> <a href="RespostaDeletarCliente.jsp?idcliente=<%=c.getId_cliente()%>"><i class="bi bi-trash"></i> </a></td>
			</tr>
		<%} %>
		</table>
		
		</form>
        </section>

      </div>

    <div id="pagina3" class="page">
          <h1 class="titpage"> Unidades</h1>

          <section class="blocotabela">
            <form action="#" name="formCliente" id="formCliente" method="POST"> 

			<table border="1px">
			<tr>
			<th> Código </th> 
			<th> Nome da unidade </th>
			<th> Endereço </th> 
		
		
			</tr>
			<%
			clienteDao clienteDa = new clienteDao();
			ArrayList<Unidades> unidades = clienteDa.ArrayListaUnidade();
			for(Unidades c: unidades){%>
				<tr>
					<td><%= c.getId_unidades() %></td>
					<td><%= c.getNome_unidade() %></td>
					<td><%= c.getEndereco() %></td>
					
		
				</tr>
			<%} %>
			</table>
			
			</form>
            </section>



      </div>



      <div id="pagina4" class="page">
        <h1 class="titpage"> Pagamentos </h1>

		<section class= "blocotabela">
    <form action="#" name="formCliente" id="formCliente" method="POST"> 
		
		<table border="1px">
		<tr>
		<th> Código </th> 
		<th> Cliente </th>
		<th> Nome do titular </th> 
		<th> CPF do titular  </th> 
		<th> N° cartão </th>
		<th> Vencimento </th> 
		<th> CVC </th> 
		<th> Unidade</th> 
		<th> Plano </th> 
		<th> Detalhar </th>
		
		</tr>
		<%
		clienteDao clienteD = new clienteDao();
		ArrayList<Pagamento> pagamento = clienteD.ArrayListaPagamentos();
		for(Pagamento c: pagamento){%>
			<tr>
				<td><%= c.getId_pagamento() %></td>
				<td><%= c.getCliente() %></td>
				<td><%= c.getNome_titular() %></td>
				<td><%= c.getCpf_titutar() %></td>
				<td><%= c.getNum_cartao() %></td>
				<td><%= c.getVencimento_cartao() %></td>
				<td><%= c.getCvc() %></td>
				<td><%= c.getUnidade() %></td>
				<td><%= c.getPlano() %></td>

				<td><a href="DetalharPagamento.jsp?id_cliente=<%=c.getCliente()%>"><i class="bi bi-pencil-square"></i></a></td>			</tr>
		<%} %>
		</table>
		</form>
		
		
		
        </section>


    </div>
       
</div>
    

    <!--Código Java-->
    <script>
          function openPage(pageId) {
           const pages = document.querySelectorAll('.page');
            pages.forEach(page => {
           if (page.id === pageId) {
             page.classList.add('active');
           } else {
             page.classList.remove('active');
            }
          });

          if (pageId === 'pagina1') {
             const sidenav = document.querySelector('.sidenav');
             sidenav.style.width = '250px';
            }
           }

    window.addEventListener('resize', () => {
      if (window.innerWidth <= 768) {
        const sidenav = document.querySelector('.sidenav');
        const content = document.querySelector('#content');

        if (sidenav.style.width === '250px') {
          sidenav.style.width = '0';
          content.style.marginLeft = '0';
        }
      } else {
        const sidenav = document.querySelector('.sidenav');
        const content = document.querySelector('#content');
        sidenav.style.width = '250px';
        content.style.marginLeft = '250px';
      }
    });

    // Inicialmente, a Página 1 está ativa
    openPage('pagina1');







    <!-- Código dos dados pessoais-->
    function editField(fieldName) {
    const inputField = document.getElementById(fieldName);
    const editIcon = inputField.nextElementSibling;

  if (inputField.readOnly) {
    inputField.readOnly = false;
    inputField.classList.add('editable');
    editIcon.innerText = '✓'; // Change icon to checkmark when editing
    document.getElementById('submit-button').classList.remove('hidden');
  } else {
    inputField.readOnly = true;
    inputField.classList.remove('editable');
    editIcon.innerText = '✎'; // Change icon back to pencil when done editing
    document.getElementById('submit-button').classList.add('hidden');
  }
}

      const editForm = document.getElementById('edit-form');
      editForm.addEventListener('submit', function (e) {
      e.preventDefault();
      const formData = new FormData(editForm);
      const data = {};
      formData.forEach((value, key) => {
      data[key] = value;
      });

      data[key] =
      console.log(data); // enviar para um servidor
      });




//Código da imagem
      function previewImage() {
    const inputFoto = document.getElementById("input-foto");
    const userImage = document.getElementById("user-image");
    const circle = document.getElementById("circle");

    const file = inputFoto.files[0];

    if (file) {
        const reader = new FileReader();

        reader.onload = function (e) {
            userImage.src = e.target.result;
        };

        reader.readAsDataURL(file);
    } else {
        userImage.src = ""; // Limpar a imagem se o usuário desmarcar o arquivo
    }
}

const editButton = document.querySelector(".edit-button");
const inputFoto = document.getElementById("input-foto");

editButton.addEventListener("click", function () {
    inputFoto.click();
});


      </script>

</body>
</html>