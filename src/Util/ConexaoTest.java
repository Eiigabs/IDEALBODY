package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


import javax.swing.JOptionPane;

public class ConexaoTest{
	public Connection conexao() throws ClassNotFoundException{
			Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/idealbody?user=root&password=0429";
			con = DriverManager.getConnection(url);
			
		} catch (SQLException erro) {
			JOptionPane.showMessageDialog(null, "erro ao conectar o banco de dados" + erro.getMessage());
		}				
			return con;
		}

	
		
	}
	
	

