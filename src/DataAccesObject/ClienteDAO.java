package DataAccesObject;

import BusinessEntity.Cliente;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ClienteDAO extends ConexionMySQL implements IBaseDAO<Cliente> {

    @Override
    public boolean Create(Cliente input) {
        boolean result = false;
        try {
            String SQL = "INSERT INTO CLIENTE (idcliente, nombre, direccion, ciudad, telefono, email, dni_ruc, tipo_cliente) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, input.getIdcliente());
            pst.setString(2, input.getNombre());
            pst.setString(3, input.getDireccion());
            pst.setString(4, input.getCiudad());
            pst.setString(5, input.getTelefono());
            pst.setString(6, input.getEmail());
            pst.setString(7, input.getDni_ruc());
            pst.setString(8, input.getTipo_cliente());

            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en ClienteDAO.Create: " + e.getMessage());
        }
        return result;
    }

    @Override
    public Cliente Read(String id) {
        Cliente cliente = null;
        try {
            String SQL = "SELECT * FROM CLIENTE WHERE idcliente = ?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, Integer.parseInt(id));
            ResultSet res = pst.executeQuery();
            if (res.next()) {
                cliente = new Cliente();
                cliente.setIdcliente(res.getInt("idcliente"));
                cliente.setNombre(res.getString("nombre"));
                cliente.setDireccion(res.getString("direccion"));
                cliente.setCiudad(res.getString("ciudad"));
                cliente.setTelefono(res.getString("telefono"));
                cliente.setEmail(res.getString("email"));
                cliente.setDni_ruc(res.getString("dni_ruc"));
                cliente.setTipo_cliente(res.getString("tipo_cliente"));
            }
            res.close();
            pst.close();
        } catch (Exception e) {
            System.out.println("Error en ClienteDAO.Read: " + e.getMessage());
        }
        return cliente;
    }

    @Override
    public List<Cliente> ReadAll() {
        List<Cliente> clientes = new ArrayList<>();
        try {
            Statement stm = getConexion().createStatement();
            ResultSet res = stm.executeQuery("SELECT * FROM CLIENTE");
            while (res.next()) {
                Cliente cliente = new Cliente();
                cliente.setIdcliente(res.getInt("idcliente"));
                cliente.setNombre(res.getString("nombre"));
                cliente.setDireccion(res.getString("direccion"));
                cliente.setCiudad(res.getString("ciudad"));
                cliente.setTelefono(res.getString("telefono"));
                cliente.setEmail(res.getString("email"));
                cliente.setDni_ruc(res.getString("dni_ruc"));
                cliente.setTipo_cliente(res.getString("tipo_cliente"));

                clientes.add(cliente);
            }
            res.close();
            stm.close();
        } catch (Exception e) {
            System.out.println("Error en ClienteDAO.ReadAll: " + e.getMessage());
        }
        return clientes;
    }

    @Override
    public boolean Update(Cliente input) {
        boolean result = false;
        try {
            String SQL = "UPDATE CLIENTE SET nombre=?, direccion=?, ciudad=?, telefono=?, email=?, dni_ruc=?, tipo_cliente=? WHERE idcliente=?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setString(1, input.getNombre());
            pst.setString(2, input.getDireccion());
            pst.setString(3, input.getCiudad());
            pst.setString(4, input.getTelefono());
            pst.setString(5, input.getEmail());
            pst.setString(6, input.getDni_ruc());
            pst.setString(7, input.getTipo_cliente());
            pst.setInt(8, input.getIdcliente());

            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en ClienteDAO.Update: " + e.getMessage());
        }
        return result;
    }

    @Override
    public boolean Delete(String id) {
        boolean result = false;
        try {
            String SQL = "DELETE FROM CLIENTE WHERE idcliente=?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, Integer.parseInt(id));
            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en ClienteDAO.Delete: " + e.getMessage());
        }
        return result;
    }
}
