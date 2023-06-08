<%

try{
	
	clienteDao clienteDao = new clienteDao();
	Cliente c = new Cliente();
	c.setId_cliente(Integer.parseInt(request.getParameter("hid")));
	c.setNome(request.getParameter("firstname"));
	c.setCpf(request.getParameter("cpf"));
	c.setData(request.getParameter("dat"));
	c.setTelefone(request.getParameter("number"));
	c.setEmail(request.getParameter("email"));
	c.setGenero(request.getParameter("genero"));
	c.setSenha(request.getParameter("password"));
	
	clienteDao.AlterarCliente(c);
	
}catch(Exception e){
	System.out.println("ERRO AO LOGAR");
}



%>

