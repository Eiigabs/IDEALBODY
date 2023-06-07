package Dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Model.Cliente;
import Util.Conexao;

public class clienteDao {
	
	public boolean InserirCliente(Cliente c){
		Conexao con = null;
		try{
			con = new Conexao();
			con.executeUpdate("INSERT INTO cliente(nome, cpf, data_nascimento, telefone, email, genero, senha) VALUES ('"
				 + c.getNome() + "','"
				 + c.getCpf() + "','"
				 + c.getData()+ "','"
				 + c.getTelefone() + "','"
				 + c.getEmail() + "','"
				 + c.getGenero() + "','"
				 + c.getSenha() + "');");
			return true;
		}catch(SQLException e ){
			System.out.println("ERRO AO INSERIR CLIENTE");
			return false;
		}
		
	}
	
	public ArrayList<Cliente> ArrayAlterarCliente(){
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet result = con.executeQuery("SELECT * FROM cliente;");
			ArrayList<Cliente> listarCliente = new ArrayList<Cliente>();
			int i = 0;
			
			while(result.next()) {
				Cliente cliente = new Cliente();
				cliente.setId_cliente(result.getInt("id_cliente"));
				cliente.setNome(result.getString("nome"));
				cliente.setCpf(result.getString("cpf"));
				cliente.setData(result.getString("data_nascimento"));
				cliente.setTelefone(result.getString("telefone"));
				cliente.setEmail(result.getString("email"));
				cliente.setGenero(result.getString("genero"));
				listarCliente.add(i, cliente);
				i++;
			}
			return listarCliente;
		}catch (SQLException e) {
			System.out.println("Erro na função listar cliente DAO" + e);
			return null;
		}
	}

	public boolean Logar(Login c){
		Conexao con = null;
		String user = ("SELECT * FROM login  WHERE login = '"+usuario+"' AND senha = '"+senha+"' ");
		try {
			java.sql.Statement test = con().createStatement();
			test.executeQuery(user);
			return true;
		} catch (SQLException e) {
			System.out.println("Erro na função logar DAO" + e);
			return false;
		}

	}
	

	public boolean AlterarCliente(Cliente c){
		conexao con = null;
		try{
		con = new Conexao();
		con.executeUpdate("UPDATE cliente SET"
		+ " nome= '" + cliente.getNome() + "' , "
		+ " dt_name= '" + cliente.getDt_nascimento()+"', " 
		+ " cpf= '" + cliente.getCpf()+"' "
		+ " WHERE id_cliente = " + cliente.getId_Cliente());
		return true;
		}catch(SQLExeception e){
		system.out.println("ERRO");
		return false;	
		}
	}

	public Cliente ListarClienteID(int id){
		conexao con = null;
		try{
		con = new Conexao();
		ResultSet result = con.executeQuery("SELECT * FROM cliente WHERE id_cliente = " + id);  	
		result.next();
		Cliente cliente = Cliente();
		cliente.setId_cliente(result.getInt("id_cliente"));
		cliente.setNome(result.getString("nome"));
		cliente.setCpf(result.getString("cpf"));
		cliente.setData(result.getString("data_nascimento"));
		cliente.setTelefone(result.getString("telefone"));
		cliente.setEmail(result.getString("email"));
		cliente.setGenero(result.getString("genero"));
	
			return cliente;
		}catch(SQLExeception e){
		system.out.println("ERRO" + e);
		
		}
	}	

	public boolean DeletarCliente(int id){
		conexao con = null;
		try{
		con = new Conexao();
		con.executeUpdate("DELETE FROM cliente WHERE id_cliente = " + id);
		return true;
		}catch(SQLExeception e){
		system.out.println("ERRO");
		return false;	
		}
	
	
	}






}
