package DataAccesObject;

import BusinessEntity.Categoria;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class CategoriaDAO extends ConexionMySQL implements IBaseDAO<Categoria> {

    @Override
    public boolean Create(Categoria input) {
        boolean result = false;
        try {
            String SQL = "INSERT INTO CATEGORIA (idcat, nombre) VALUES (?, ?)";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, input.getIdcat());
            pst.setString(2, input.getNombre());

            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en CategoriaDAO.Create: " + e.getMessage());
        }
        return result;
    }

    @Override
    public Categoria Read(String id) {
        Categoria categoria = null;
        try {
            String SQL = "SELECT * FROM CATEGORIA WHERE idcat = ?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, Integer.parseInt(id));
            ResultSet res = pst.executeQuery();
            if (res.next()) {
                categoria = new Categoria();
                categoria.setIdcat(res.getInt("idcat"));
                categoria.setNombre(res.getString("nombre"));
            }
            res.close();
            pst.close();
        } catch (Exception e) {
            System.out.println("Error en CategoriaDAO.Read: " + e.getMessage());
        }
        return categoria;
    }

    @Override
    public List<Categoria> ReadAll() {
        List<Categoria> categorias = new ArrayList<>();
        try {
            Statement stm = getConexion().createStatement();
            ResultSet res = stm.executeQuery("SELECT * FROM CATEGORIA");
            while (res.next()) {
                Categoria categoria = new Categoria();
                categoria.setIdcat(res.getInt("idcat"));
                categoria.setNombre(res.getString("nombre"));

                categorias.add(categoria);
            }
            res.close();
            stm.close();
        } catch (Exception e) {
            System.out.println("Error en CategoriaDAO.ReadAll: " + e.getMessage());
        }
        return categorias;
    }

    @Override
    public boolean Update(Categoria input) {
        boolean result = false;
        try {
            String SQL = "UPDATE CATEGORIA SET nombre=? WHERE idcat=?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setString(1, input.getNombre());
            pst.setInt(2, input.getIdcat());

            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en CategoriaDAO.Update: " + e.getMessage());
        }
        return result;
    }

    @Override
    public boolean Delete(String id) {
        boolean result = false;
        try {
            String SQL = "DELETE FROM CATEGORIA WHERE idcat=?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, Integer.parseInt(id));
            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en CategoriaDAO.Delete: " + e.getMessage());
        }
        return result;
    }
}
