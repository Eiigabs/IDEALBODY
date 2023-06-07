package Util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexao {
	 public static String status = "Não conectou...";
	 private Connection connection;
	 private Statement statement;
	

	 public Conexao(String servidor, String database, String user, String password) throws SQLException {
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            connection = DriverManager.getConnection("jdbc:mysql://" + servidor + "/" + database, user, password);
	        } catch (ClassNotFoundException ex) {
	            System.out.println("Nao foi possıvel encontrar a classe do " + "Driver do MySQL");
	        } catch (SQLException ex) {
	            System.out.println("Nao foi possıvel conectar ao servidor");
	            throw ex;
	        }
	        try {
	            statement = connection.createStatement();
	        } catch (SQLException ex) {
	            System.out.println("Nao foi poss´ıvel criar a statement");
	            throw ex;
	        }
	    }
	 
	 
	 
	    public Conexao() {
	        try {
	           Class.forName("com.mysql.cj.jdbc.Driver");
	        	 //Class.forName("org.gjt.mm.mysql.Driver");
	            connection = DriverManager.getConnection("jdbc:mysql://localhost" + "/idealbody?useTimezone=true&serverTimezone=UTC", "root", "0429");
	            System.out.println("conectou!");
	        } catch (ClassNotFoundException ex) {
	            System.out.println("Nao foi possıvel encontrar a classe " + "do Driver do MySQL" + ex);
	        } catch (SQLException ex) {
	            System.out.println("Nao foi poss´ıvel conectar ao servidor" + ex);
	        }
	        try {
	            statement = connection.createStatement();
	        } catch (SQLException ex) {
	            System.out.println("Nao foi possıvel criar a statement" + ex);
	        }
	    }
	    
	    /**
	     * * Executa um update na base de dados * @param update String SQL a ser
	     * executado * @throws SQLException se n~ao for poss´ıvel executar
	     *
	     * o update (Erro de SQL).
	     */
	    public synchronized void executeUpdate(String update) throws SQLException {
	        try {
	            statement.executeUpdate(update);
	        } catch (SQLException ex) {
	            System.out.println("Nao foi possıvel executar o update" + ex);
	            throw ex;
	        }
	    }

	    
	    
	    /**
	     * * Executa uma consulta na base de dados * @param query String SQL a ser
	     * executado * @return Um objeto do tipo ResultSet contendo o * resultado da
	     * query * @throws SQLException se n~ao for poss´ıvel executar a query *
	     * (Erro de SQL).
	     */
	    public synchronized ResultSet executeQuery(String query) throws SQLException {
	        try {
	            return statement.executeQuery(query);
	        } catch (SQLException ex) {

	            System.out.println("Nao foi possıvel executar a query" + ex);
	            return null;
	            // throw ex; 

	        }
	    }

	    /**
	     * * Fecha a conexao com a base de dados.
	     */
	    public void fecharConexao() {
	        try {
	            statement.close();
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	        }
	    }

	 
}
