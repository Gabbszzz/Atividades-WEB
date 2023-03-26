package br.com.DAO;
import br.com.model.livro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class livroDAO {
    Connection connect;
    PreparedStatement prep;
    
    public void cadastrarLivro(livro OBLiv) throws ClassNotFoundException{
        String sql = "INSERT INTO livro(nome,tema,autor,distribuidora) VALUES (?,?,?,?);";
        connect = new connectDAO().conexaoBD();
        
        try{
            prep = connect.prepareStatement(sql);
            prep.setString(1, OBLiv.getNome());
            prep.setString(2, OBLiv.getTema());
            prep.setString(3, OBLiv.getAutor());
            prep.setString(4, OBLiv.getDistribuidora());
            prep.execute();
            prep.close();
        }catch(SQLException e){
            
        }
    }
}
