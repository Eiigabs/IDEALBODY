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
	
	public ArrayList<Cliente> ArrayListaCliente(){
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
	
	 public boolean verificarLogin(String nomeUsuario, String senha) {
		 Conexao con = null;
		 try {
			 con = new Conexao();
	           
	            // Preparar a consulta SQL
	        	 
	            String consulta = "SELECT COUNT(*) FROM cliente WHERE cpf = '" + nomeUsuario + "' AND senha = '" + senha + "'";
	            
	            // Executar a consulta
	            
	            ResultSet rs = con.executeQuery(consulta);

	            // Verificar se o usuário existe no banco de dados
	            rs.next();
	            int count = rs.getInt(1);

	          
	            // Retornar true se o usuário existe e a senha está correta
	            return count == 1;
	        } catch (SQLException e) {
	        	System.out.println("Erro na funcao verificarLogin DAO");
	        }

	        // Em caso de erro ou se o usuário não existe, retornar false
	        return false;
	    }
	
	 public boolean AlterarCliente(Cliente c){
		 Conexao con = null;
			try{
			con = new Conexao();
			con.executeUpdate("UPDATE cliente SET"
			+ " nome= '" + c.getNome() + "' , "
			+ " cpf= '" + c.getCpf()+"', "
			+ " data_nascimento= '" + c.getData()+"', "
			+ " telefone= '" + c.getTelefone()+"', "
			+ " email= '" + c.getEmail()+"', "
			+ " genero= '" + c.getGenero()+"' "
			+ " WHERE id_cliente = " + c.getId_cliente());
			return true;
			}catch(SQLException e){
				System.out.println("ERRO");
			return false;	
			}
		}

		public Cliente ListarClienteID(int id){
			Conexao con = null;
			try{
			con = new Conexao();
			ResultSet result = con.executeQuery("SELECT * FROM cliente WHERE id_cliente = " + id);  	
			result.next();
			Cliente cliente = new Cliente();
			cliente.setId_cliente(result.getInt("id_cliente"));
			cliente.setNome(result.getString("nome"));
			cliente.setCpf(result.getString("cpf"));
			cliente.setData(result.getString("data_nascimento"));
			cliente.setTelefone(result.getString("telefone"));
			cliente.setEmail(result.getString("email"));
			cliente.setGenero(result.getString("genero"));
		
				return cliente;
			}catch(SQLException e){
				System.out.println("ERRO" + e);
			
			}
			return null;
		}	

		public boolean DeletarCliente(int id){
			Conexao con = null;
			try{
			con = new Conexao();
			con.executeUpdate("DELETE FROM cliente WHERE id_cliente = " + id);
			return true;
			}catch(SQLException e){
				System.out.println("ERRO");
			return false;	
			}
		
		
		}
	

}