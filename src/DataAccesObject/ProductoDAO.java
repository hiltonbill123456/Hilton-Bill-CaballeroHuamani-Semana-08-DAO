package DataAccesObject;

import BusinessEntity.Producto;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ProductoDAO extends ConexionMySQL implements IBaseDAO<Producto> {

    @Override
    public boolean Create(Producto input) {
        boolean result = false;
        try {
            String SQL = "INSERT INTO PRODUCTO (idprod, idcat, nombre, descripcion, precio, stock, unidad) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, input.getIdprod());
            pst.setInt(2, input.getIdcat());
            pst.setString(3, input.getNombre());
            pst.setString(4, input.getDescripcion());
            pst.setDouble(5, input.getPrecio());
            pst.setInt(6, input.getStock());
            pst.setString(7, input.getUnidad());

            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en ProductoDAO.Create: " + e.getMessage());
        }
        return result;
    }

    @Override
    public Producto Read(String id) {
        Producto producto = null;
        try {
            String SQL = "SELECT * FROM PRODUCTO WHERE idprod = ?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, Integer.parseInt(id));
            ResultSet res = pst.executeQuery();
            if (res.next()) {
                producto = new Producto();
                producto.setIdprod(res.getInt("idprod"));
                producto.setIdcat(res.getInt("idcat"));
                producto.setNombre(res.getString("nombre"));
                producto.setDescripcion(res.getString("descripcion"));
                producto.setPrecio(res.getDouble("precio"));
                producto.setStock(res.getInt("stock"));
                producto.setUnidad(res.getString("unidad"));
            }
            res.close();
            pst.close();
        } catch (Exception e) {
            System.out.println("Error en ProductoDAO.Read: " + e.getMessage());
        }
        return producto;
    }

    @Override
    public List<Producto> ReadAll() {
        List<Producto> productos = new ArrayList<>();
        try {
            Statement stm = getConexion().createStatement();
            ResultSet res = stm.executeQuery("SELECT * FROM PRODUCTO");
            while (res.next()) {
                Producto producto = new Producto();
                producto.setIdprod(res.getInt("idprod"));
                producto.setIdcat(res.getInt("idcat"));
                producto.setNombre(res.getString("nombre"));
                producto.setDescripcion(res.getString("descripcion"));
                producto.setPrecio(res.getDouble("precio"));
                producto.setStock(res.getInt("stock"));
                producto.setUnidad(res.getString("unidad"));

                productos.add(producto);
            }
            res.close();
            stm.close();
        } catch (Exception e) {
            System.out.println("Error en ProductoDAO.ReadAll: " + e.getMessage());
        }
        return productos;
    }

    @Override
    public boolean Update(Producto input) {
        boolean result = false;
        try {
            String SQL = "UPDATE PRODUCTO SET idcat=?, nombre=?, descripcion=?, precio=?, stock=?, unidad=? WHERE idprod=?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, input.getIdcat());
            pst.setString(2, input.getNombre());
            pst.setString(3, input.getDescripcion());
            pst.setDouble(4, input.getPrecio());
            pst.setInt(5, input.getStock());
            pst.setString(6, input.getUnidad());
            pst.setInt(7, input.getIdprod());

            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en ProductoDAO.Update: " + e.getMessage());
        }
        return result;
    }

    @Override
    public boolean Delete(String id) {
        boolean result = false;
        try {
            String SQL = "DELETE FROM PRODUCTO WHERE idprod=?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, Integer.parseInt(id));
            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en ProductoDAO.Delete: " + e.getMessage());
        }
        return result;
    }
}
