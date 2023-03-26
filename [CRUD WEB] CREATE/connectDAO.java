package br.com.DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class connectDAO {
    Connection conexao = null;
    public Connection conexaoBD() throws ClassNotFoundException{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        String url= "jbc:mysql://localhost:3306/Biblioteca?user=root&password=";
        conexao = DriverManager.getConnection(url);
    }catch(SQLException e ){
        
    }
    return conexao;
    }
}
