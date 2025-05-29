package DataAccesObject;

import BusinessEntity.Empleado;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class EmpleadoDAO extends ConexionMySQL implements IBaseDAO<Empleado> {

    @Override
    public boolean Create(Empleado input) {
        boolean result = false;
        try {
            String SQL = "INSERT INTO EMPLEADO (idemp, idsucursal, nombre, apellido, dni, cargo, email, telefono, estado) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, input.getIdemp());
            pst.setInt(2, input.getIdsucursal());
            pst.setString(3, input.getNombre());
            pst.setString(4, input.getApellido());
            pst.setString(5, input.getDni());
            pst.setString(6, input.getCargo());
            pst.setString(7, input.getEmail());
            pst.setString(8, input.getTelefono());
            pst.setString(9, input.getEstado());

            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en EmpleadoDAO.Create: " + e.getMessage());
        }
        return result;
    }

    @Override
    public Empleado Read(String id) {
        Empleado empleado = null;
        try {
            String SQL = "SELECT * FROM EMPLEADO WHERE idemp = ?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, Integer.parseInt(id));
            ResultSet res = pst.executeQuery();
            if (res.next()) {
                empleado = new Empleado();
                empleado.setIdemp(res.getInt("idemp"));
                empleado.setIdsucursal(res.getInt("idsucursal"));
                empleado.setNombre(res.getString("nombre"));
                empleado.setApellido(res.getString("apellido"));
                empleado.setDni(res.getString("dni"));
                empleado.setCargo(res.getString("cargo"));
                empleado.setEmail(res.getString("email"));
                empleado.setTelefono(res.getString("telefono"));
                empleado.setEstado(res.getString("estado"));
            }
            res.close();
            pst.close();
        } catch (Exception e) {
            System.out.println("Error en EmpleadoDAO.Read: " + e.getMessage());
        }
        return empleado;
    }

    @Override
    public List<Empleado> ReadAll() {
        List<Empleado> empleados = new ArrayList<>();
        try {
            Statement stm = getConexion().createStatement();
            ResultSet res = stm.executeQuery("SELECT * FROM EMPLEADO");
            while (res.next()) {
                Empleado empleado = new Empleado();
                empleado.setIdemp(res.getInt("idemp"));
                empleado.setIdsucursal(res.getInt("idsucursal"));
                empleado.setNombre(res.getString("nombre"));
                empleado.setApellido(res.getString("apellido"));
                empleado.setDni(res.getString("dni"));
                empleado.setCargo(res.getString("cargo"));
                empleado.setEmail(res.getString("email"));
                empleado.setTelefono(res.getString("telefono"));
                empleado.setEstado(res.getString("estado"));

                empleados.add(empleado);
            }
            res.close();
            stm.close();
        } catch (Exception e) {
            System.out.println("Error en EmpleadoDAO.ReadAll: " + e.getMessage());
        }
        return empleados;
    }

    @Override
    public boolean Update(Empleado input) {
        boolean result = false;
        try {
            String SQL = "UPDATE EMPLEADO SET idsucursal=?, nombre=?, apellido=?, dni=?, cargo=?, email=?, telefono=?, estado=? WHERE idemp=?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, input.getIdsucursal());
            pst.setString(2, input.getNombre());
            pst.setString(3, input.getApellido());
            pst.setString(4, input.getDni());
            pst.setString(5, input.getCargo());
            pst.setString(6, input.getEmail());
            pst.setString(7, input.getTelefono());
            pst.setString(8, input.getEstado());
            pst.setInt(9, input.getIdemp());

            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en EmpleadoDAO.Update: " + e.getMessage());
        }
        return result;
    }

    @Override
    public boolean Delete(String id) {
        boolean result = false;
        try {
            String SQL = "DELETE FROM EMPLEADO WHERE idemp=?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, Integer.parseInt(id));
            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en EmpleadoDAO.Delete: " + e.getMessage());
        }
        return result;
    }
}
