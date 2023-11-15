package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Model.Cliente;
import Model.Pagamento;
import Model.Unidades;
import Util.Conexao;

public class clienteDao {

	public boolean InserirCliente(Cliente c){
		Conexao con = null;
		try{
			con = new Conexao();
			con.executeUpdate("INSERT INTO cliente(nome, cpf, data_nascimento, telefone, email, senha) VALUES ('"
				 + c.getNome() + "','"
				 + c.getCpf() + "','"
				 + c.getData()+ "','"
				 + c.getTelefone() + "','"
				 + c.getEmail() + "','"
				 + c.getSenha() + "');");
			
			return true;
		}catch(SQLException e ){
			System.out.println("ERRO AO INSERIR CLIENTE");
			return false;
		}
		
	}
		
	public boolean InserirPagamento(Pagamento c){
		Conexao con = null;
		try{
			con = new Conexao();
			con.executeUpdate("INSERT INTO pagamento(cliente, nome_titular, cpf_titular, num_cartao, vencimento_cartao, cvc, plano, unidade) VALUES ('"
				 + c.getCliente() + "','"
				 + c.getNome_titular() + "','"
				 + c.getCpf_titutar()+ "','"
				 + c.getNum_cartao() + "','"
				 + c.getVencimento_cartao() + "','"
				 + c.getCvc() + "','"
				 + c.getPlano() + "','"
				 + c.getUnidade() + "');");
			return true;
		}catch(SQLException e ){
			System.out.println("ERRO AO INSERIR PAGAMENTO");
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
	       
			 String consulta = "SELECT COUNT(*) FROM cliente WHERE cpf = '" + nomeUsuario + "' AND senha = '" + senha + "'";
	        
	            
	            ResultSet rs = con.executeQuery(consulta);
	            rs.next();
	            int count = rs.getInt(1);
	            return count == 1;
	        } catch (SQLException e) {
	        	System.out.println("Erro na funcao verificarLogin DAO");
	        }
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
			+ " email= '" + c.getEmail()+"' "
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
				return cliente;
			}catch(SQLException e){
				System.out.println("ERRO" + e);
			
			}
			return null;
		}	
		public Cliente ListarClienteIDpag(String cpf){
			Conexao con = null;
			try{
			con = new Conexao();
			ResultSet result = con.executeQuery("SELECT * FROM cliente WHERE cpf = '" + cpf + "'");  	
			result.next();
			Cliente cliente = new Cliente();
			cliente.setId_cliente(result.getInt("id_cliente"));
				return cliente;
			}catch(SQLException e){
				System.out.println("ERRO" + e);
			
			}
			return null;
		}
		public Cliente ListaNomeCliente(String cpf){
			Conexao con = null;
			try{
			con = new Conexao();
			ResultSet result = con.executeQuery("SELECT * FROM cliente WHERE cpf = '" + cpf + "'");  	
			result.next();
			Cliente cliente = new Cliente();
			cliente.setNome(result.getString("nome"));
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
	
		
		public ArrayList<Unidades> ArrayListaUnidade(){
			Conexao con = null;
			try {
				con = new Conexao();
				ResultSet result = con.executeQuery("SELECT * FROM unidades;");
				ArrayList<Unidades> listarUnidades = new ArrayList<Unidades>();
				int i = 0;
				
				while(result.next()) {
					Unidades unidade = new Unidades();
					unidade.setId_unidades(result.getInt("id_unidades"));
					unidade.setNome_unidade(result.getString("nome_unidade"));
					unidade.setEndereco(result.getString("endereco"));
					listarUnidades.add(i, unidade);
					i++;
				}
				return listarUnidades;
			}catch (SQLException e) {
				System.out.println("Erro na função listar Unidades DAO" + e);
				return null;
			}
		}
		public ArrayList<Pagamento> ArrayListaPagamentos(){
			Conexao con = null;
			try {
				con = new Conexao();
				ResultSet result = con.executeQuery("SELECT * FROM pagamento;");
				ArrayList<Pagamento> listarPagamentos = new ArrayList<Pagamento>();
				int i = 0;
				
				while(result.next()) {
					Pagamento p = new Pagamento();
					p.setId_pagamento(result.getInt("id_pagamento"));
					p.setCliente(result.getInt("cliente"));
					p.setNome_titular(result.getString("nome_titular"));
					p.setCpf_titutar(result.getString("cpf_titular"));
					p.setNum_cartao(result.getString("num_cartao"));
					p.setVencimento_cartao(result.getString("vencimento_cartao"));
					p.setCvc(result.getInt("cvc"));
					p.setUnidade(result.getInt("unidade"));
					p.setPlano(result.getInt("plano"));
					listarPagamentos.add(i, p);
					i++;
				}
				return listarPagamentos;
			}catch (SQLException e) {
				System.out.println("Erro na função listar Pagamentos DAO" + e);
				return null;
			}
		}
		public ArrayList<Pagamento> ArrayDetalharPagamentos(int id){
			Conexao con = null;
			try {
				con = new Conexao();
				ResultSet result = con.executeQuery("SELECT * FROM idealbody.pagamento JOIN idealbody.cliente ON cliente.id_cliente =" + id + ";" );
				ArrayList<Pagamento> listarPagamentos = new ArrayList<Pagamento>();
				int i = 0;
				
				while(result.next()) {
					Pagamento p = new Pagamento();
					
					p.setId_pagamento(result.getInt("id_pagamento"));
					p.setId_cliente(result.getInt("id_cliente"));
					p.setNome(result.getString("nome"));
					p.setCpf(result.getString("cpf"));
					p.setData(result.getString("data_nascimento"));
					p.setTelefone(result.getString("telefone"));
					p.setEmail(result.getString("email"));
					listarPagamentos.add(i, p);
					i++;
				}
				return listarPagamentos;
			}catch (SQLException e) {
				System.out.println("Erro na função listar Pagamentos DAO" + e);
				return null;
			}
		}
		
}