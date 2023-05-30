package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;

import Model.Cliente;
import Util.ConexaoTest;

public class clienteDao {
	Connection con;
	PreparedStatement pstm;
	
	public void InserirCliente(Cliente c) throws ClassNotFoundException{
		
		String sql = "INSERT INTO cliente(nome, cpf, data_nascimento, telefone, email, genero, senha) "
				+ "VALUES (?,?,?,?,?,?)";
		con = new ConexaoTest().conexao();
	
		try{
			pstm = con.prepareStatement(sql);
			pstm.setString(1, c.getNome());
			pstm.setString(2, c.getCpf());
			pstm.setString(3, c.getData());
			pstm.setString(4, c.getTelefone());
			pstm.setString(5, c.getGenero());
			pstm.setString(6, c.getSenha());
			
			pstm.execute();
			pstm.close();
			
			
		}catch(SQLException e ){
			JOptionPane.showMessageDialog(null, "ERRO AO INSERIR CLIENTE");
		}		
		
	}
		
		
		/**
		try{
			con = new Conexao();
			con.executeUpdate("INSERT INTO cliente(nome, cpf, data_nascimento, telefone, email, genero, senha) VALUES ('"
				 + c.getNome() + "',"
				 + c.getCpf() + "','"
				 + c.getData()+ "','"
				 + c.getTelefone() + "','"
				 + c.getEmail() + "','"
				 + c.getGenero() + "','"
				 + c.getSenha() + "');");
			
		}catch(SQLException e ){
			System.out.println("ERRO AO INSERIR CLIENTE");
			
		}
		
	}
	*/
	
	
}
