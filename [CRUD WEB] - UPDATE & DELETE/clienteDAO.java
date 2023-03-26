package br.com.DAO;
import java.util.ArrayList;
import br.com.model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class clienteDAO {
    
    ResultSet rs;
    Connection con;
    PreparedStatement pstm;
    ArrayList<Cliente> lista = new ArrayList<>();
    
    
    public void cadastrarCliente(Cliente objCliente) throws ClassNotFoundException{
        String sql = "INSERT INTO cliente(nome,email,senha)VALUES (?,?,?)";
        con = new conexaoDAO().conexaoBD();
        
        try{
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objCliente.getNome());
            pstm.setString(2, objCliente.getEmail());
            pstm.setString(3, objCliente.getSenha());
            pstm.execute();
            pstm.close();
        }catch(SQLException e){
            System.out.print(e);
        }
    }
    public ArrayList<Cliente> listarCliente() throws ClassNotFoundException{
        String sql = "select * from cliente";
        con = new conexaoDAO().conexaoBD();
        try{
            pstm =con.prepareStatement(sql);
            rs=pstm.executeQuery();
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setIdCliente(rs.getInt("idCliente"));
                cliente.setNome(rs.getString("nome"));
                cliente.setEmail(rs.getString("email"));
                cliente.setSenha(rs.getString("senha"));
                lista.add(cliente);
            }
        }catch(SQLException e){
            System.out.println("Listar Cliente: "+e);
        }
        return lista;
        }
        public void atualizarCliente(Cliente objCliente) throws ClassNotFoundException{
        String sql = "UPDATE cliente set nome=?, email=?, senha=? where idCliente=?"; 
        con = new conexaoDAO().conexaoBD();
        
        try{
            pstm = con.prepareStatement(sql);
            
            pstm.setString(1, objCliente.getNome());
            pstm.setString(2, objCliente.getEmail());
            pstm.setString(3, objCliente.getSenha());
            pstm.setInt(4,objCliente.getIdCliente());
            pstm.execute();
            pstm.close();
        }catch(SQLException e){
            System.out.print(e);
        }
    }        
        
         public void deletarCliente(Cliente objCliente) throws ClassNotFoundException{
        String sql = "DELETE from cliente where idCliente=?"; 
        con = new conexaoDAO().conexaoBD();
        
        try{
            pstm = con.prepareStatement(sql);
            
            pstm.setInt(1,objCliente.getIdCliente());
            pstm.execute();
            pstm.close();
        }catch(SQLException e){
            System.out.print(e);
        }
    }        
        
    }

