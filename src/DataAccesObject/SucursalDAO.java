package DataAccesObject;

import BusinessEntity.Sucursal;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class SucursalDAO extends ConexionMySQL implements IBaseDAO<Sucursal> {

    @Override
    public boolean Create(Sucursal input) {
        boolean result = false;
        try {
            String SQL = "INSERT INTO SURCURSAL (idsucursal, nombre, direccion, ciudad, telefono, email) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, input.getIdsucursal());
            pst.setString(2, input.getNombre());
            pst.setString(3, input.getDireccion());
            pst.setString(4, input.getCiudad());
            pst.setString(5, input.getTelefono());
            pst.setString(6, input.getEmail());

            result = pst.execute();
          
        } catch (Exception e) {
            System.out.println("Error en SucursalDAO.Create: " + e.getMessage());
        }
        return result;
    }

    @Override
    public Sucursal Read(String id) {
        Sucursal sucursal = null;
        try {
            String SQL = "SELECT * FROM SUCURSAL WHERE idsucursal = ?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, Integer.parseInt(id));
            ResultSet res = pst.executeQuery();
            if (res.next()) {
                sucursal = new Sucursal();
                sucursal.setIdsucursal(res.getInt("idsucursal"));
                sucursal.setNombre(res.getString("nombre"));
                sucursal.setDireccion(res.getString("direccion"));
                sucursal.setCiudad(res.getString("ciudad"));
                sucursal.setTelefono(res.getString("telefono"));
                sucursal.setEmail(res.getString("email"));
            }
            //res.close();
            //pst.close();
        } catch (Exception e) {
            System.out.println("Error en SucursalDAO.Read: " + e.getMessage());
        }
        return sucursal;
    }

    @Override
    public List<Sucursal> ReadAll() {
        List<Sucursal> sucursales = new ArrayList<>();
        try {
            Statement stm = getConexion().createStatement();
            ResultSet res = stm.executeQuery("SELECT * FROM SUCURSAL");
            while (res.next()) {
                Sucursal sucursal = new Sucursal();
                sucursal.setIdsucursal(res.getInt("idsucursal"));
                sucursal.setNombre(res.getString("nombre"));
                sucursal.setDireccion(res.getString("direccion"));
                sucursal.setCiudad(res.getString("ciudad"));
                sucursal.setTelefono(res.getString("telefono"));
                sucursal.setEmail(res.getString("email"));

                sucursales.add(sucursal);
            }
            //res.close();
            //stm.close();
        } catch (Exception e) {
            System.out.println("Error en SucursalDAO.ReadAll: " + e.getMessage());
        }
        return sucursales;
    }

    @Override
    public boolean Update(Sucursal input) {
        boolean result = false;
        try {
            String SQL = "UPDATE SUCURSAL SET nombre=?, direccion=?, ciudad=?, telefono=?, email=? WHERE idsucursal=?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setString(1, input.getNombre());
            pst.setString(2, input.getDireccion());
            pst.setString(3, input.getCiudad());
            pst.setString(4, input.getTelefono());
            pst.setString(5, input.getEmail());
            pst.setInt(6, input.getIdsucursal());

            //int rowsAffected = pst.executeUpdate();
            //result = rowsAffected > 0;
            //pst.close();
            result = pst.execute();

        } catch (Exception e) {
            System.out.println("Error en SucursalDAO.Update: " + e.getMessage());
        }
        return result;
    }

    @Override
    public boolean Delete(String id) {
        boolean result = false;
        try {
            String SQL = "DELETE FROM SUCURSAL WHERE idsucursal=?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, Integer.parseInt(id));
            result = pst.executeUpdate() > 0;
            
            //int rowsAffected = pst.executeUpdate();
            //result = rowsAffected > 0;

            //pst.close();
        } catch (Exception e) {
            System.out.println("Error en SucursalDAO.Delete: " + e.getMessage());
        }
        return result;
    }
}
