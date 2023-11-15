<%@page import="Model.Cliente"%>
<%@page import="Model.Pagamento"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.clienteDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link  rel ="stylesheet" href="Style2.css">
<link  rel="shortcut icon" href="imagensib/iconib.ico" type="image/icon">
<title> Espaço do Aluno</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
</head>
<body>
	
	<div>
		<nav class = "superior" >
			 <img  class="logo" src="imagensib/logoibofc.png"/>
			<ul>


                <a class="ola">
			        <span class = "icon"><i class="bi bi-person-circle"></i></span>
			        <span > Olá, Cliente</span>
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
		        <span  href="#" onclick="openPage('pagina2')" class = "txt-link"> Perfil </span>
	        </a> 
        </li>
        <li class= "item-menu">
	        <a href="#">
		        <span class = "icon"><i class="bi bi-cart-check"></i> </span>
		        <span href="#" onclick="openPage('pagina3')" class = "txt-link"> Meu plano</span>
	        </a> 
        </li>
        <li class= "item-menu">
	        <a href="#">
		        <span class = "icon"><i class="bi bi-credit-card"></i> </span>
		        <span class = "txt-link"> Pagamentos </span>
	        </a> 
        </li>
        <li class= "item-menu">
	        <a href="#">
		        <span class = "icon"> <i class="bi bi-cart-plus"></i></span>
		        <span class = "txt-link"> Dê um Upgrade </span>
	        </a> 
        </li>
        <li class= "item-menu">
	        <a href="#">
		        <span class = "icon"> <i class="bi bi-info-square"></i></span>
		        <span class = "txt-link"> Suporte </span>
	        </a> 
        </li>
            
       
    </ul>
		    
	</nav>
	

  <!--Bloco das diferentes páginas -->

     <div id="content">
          <div id="pagina1" class="page active">

          <section class="ban1"> 
          <h1 class="titpage">Início</h1>
        
          <div class="blocodoscards"> 
          <div class="cardest">
            
            <p class="titcard"> Treinos realizados </p>

            <p class="titn"> 0 </p>
          
    
        </diV>

        <div class="cardest">
            
          <p class="titcard"> Aulas participadas </p>

          <p class="titn"> 0</p>
        
  
      </diV>

      <div class="cardest">
            
        <p class="titcard"> Unidades visitadas </p>

        <p class="titn"> 0 </p>
      

    </diV>
  </diV>

  <p class="tit1"> Seu treino atual </p>
  <diV class="blocotreino"> 
  
      
    <div class="cardtreino"> 
      <p class="tiptreino"> Treino A (3x10) </p>
      <ul class="texttreino">
        <dd> - Tração Frontal  </dd>
        <dd> - Remada Baixa</dd>
        <dd> - Remada Articulada </dd>
        <dd> - Bíceps na polia </dd>
        <dd> - Rosca Alternada </dd>
        <dd> - Abdominais </dd>
        </ul>



    </div>

    <div class="cardtreino"> 
      <p class="tiptreino"> Treino B (3x10) </p>
      <ul class="texttreino">
        <dd> - Ag. no Smith </dd>
        <dd> - Hack </dd>
        <dd> - Leg Press 45 </dd>
        <dd> - Mesa Flexora </dd>
        <dd> - Panturrilha Sentado </dd>
        <dd> - Esteira (10m) </dd>
        </ul>

    </div>

    <div class="cardtreino"> 
      <p class="tiptreino"> Treino C (3x10) </p>
      <ul class="texttreino">
        <dd> - Sup. Reto </dd>
        <dd> - Sup. Inclinado </dd>
        <dd> - Voador </dd>
        <dd> - Tríceps na polia </dd>
        <dd> - Tríceps na Corda </dd>
        <dd> - Desenvolvimento </dd>
      
        </ul>

    </div>
  </diV>
     </section>
     </div>

		<div id="pagina2" class="page">

        <h1 class="titpage"> Perfil </h1>

        <section class="ban2"> 

        
          <div class="blocoft">

            <div class="circle-container">
              <div class="circle" id="circle">
                  <img id="user-image" src="imagensib/iconeuser.png" alt="Imagem de perfil">
              </div>
             
          </div>

          <label for="input-foto" class="edit-button">Edite</label>
          <input type="file" id="input-foto" accept="image/*" onchange="previewImage()">



          </div>



          <!-- Formulário pra edição de dados pessoais -->
          <div class="containerdados">

            <h1>Dados Pessoais</h1>

            <form id="edit-form">

              <div class="form-group">
                <label for="nome">Nome:</label>
                <div class="input-wrapper">
                  
                 
        <input type="text" id="nome" name="nome" value="João Lucas " readonly>
                  <span class="edit-icon" onclick="editField('nome')">&#9998;</span>
                
               
        </div>
              </div>
              
              
        <div class="form-group">
                <label for="cpf">CPF:</label>
                
                
        <div class="input-wrapper">
                  <input type="text" id="cpf" name="cpf" value="0000000" readonly>
                  <span class="edit-icon" onclick="editField('cpf')">&#9998;</span>
                </div>
              </div>
              <div class="form-group">
                <label for="data-nascimento">Data de Nascimento:</label>
                <div class="input-wrapper">
                  <input type="date" id="data-nascimento" name="data-nascimento" value="01/01/1990" readonly>
                  
                  
        <span class="edit-icon" onclick="editField('data-nascimento')">&#9998;</span>
                </div>
              </div>
              <div class="form-group">
                <label for="email">E-mail:</label>
                <div class="input-wrapper">
                  <input type="email" id="email" name="email" value="joao@example.com" readonly>
                  <span class="edit-icon" onclick="editField('email')">&#9998;</span>
                </div>
              </div>
              <div class="form-group">
                
               
        <label for="telefone">Telefone:</label>
                <div class="input-wrapper">
                  <input type="text" id="telefone" name="telefone" value="(12) 3456-7890" readonly>
                  <span class="edit-icon" onclick="editField('telefone')">&#9998;</span>
                </div>
              </div>

              <diV class="btnsalvar"> 
              <button type="submit" id="submit-button" class="hidden">Salvar</button>
            </diV>
            </form>

          </div>

            <!--Fim do formulário de edição de dados -->

         </section>


      </div>

      <div id="pagina3" class="page">
        <section>
           
           
        </section>
      </div>
      <div id="pagina4" class="page">
        <section>
    
          
        </section>
      </div>
    
    
    
    </div>

 

    <!--Codigo Java-->
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