
package br.com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class conexaoDAO {
    public Connection conexaoBD() throws ClassNotFoundException{
        
    
    Connection conexao = null;
    try{
            Class.forName("com.mysql.jdbc.Driver");
            conexao = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/AulaWeb","root","");
    }catch(SQLException e ){
        System.out.println(e);
    }
    
    return conexao;
}

}