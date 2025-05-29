package DataAccesObject;

import BusinessEntity.Venta;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Date;

public class VentaDAO extends ConexionMySQL implements IBaseDAO<Venta> {

    @Override
    public boolean Create(Venta input) {
        boolean result = false;
        try {
            String SQL = "INSERT INTO VENTA (idventa, idcliente, idemp, fecha, tipo_pago, estado, total, observacion) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, input.getIdventa());
            pst.setInt(2, input.getIdcliente());
            pst.setInt(3, input.getIdemp());
            pst.setDate(4, new Date(input.getFecha().getTime())); // Convert java.util.Date to java.sql.Date
            pst.setString(5, input.getTipo_pago());
            pst.setString(6, input.getEstado());
            pst.setDouble(7, input.getTotal());
            pst.setString(8, input.getObservacion());

            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en VentaDAO.Create: " + e.getMessage());
        }
        return result;
    }

    @Override
    public Venta Read(String id) {
        Venta venta = null;
        try {
            String SQL = "SELECT * FROM VENTA WHERE idventa = ?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, Integer.parseInt(id));
            ResultSet res = pst.executeQuery();
            if (res.next()) {
                venta = new Venta();
                venta.setIdventa(res.getInt("idventa"));
                venta.setIdcliente(res.getInt("idcliente"));
                venta.setIdemp(res.getInt("idemp"));
                venta.setFecha(res.getDate("fecha"));
                venta.setTipo_pago(res.getString("tipo_pago"));
                venta.setEstado(res.getString("estado"));
                venta.setTotal(res.getDouble("total"));
                venta.setObservacion(res.getString("observacion"));
            }
            res.close();
            pst.close();
        } catch (Exception e) {
            System.out.println("Error en VentaDAO.Read: " + e.getMessage());
        }
        return venta;
    }

    @Override
    public List<Venta> ReadAll() {
        List<Venta> ventas = new ArrayList<>();
        try {
            Statement stm = getConexion().createStatement();
            ResultSet res = stm.executeQuery("SELECT * FROM VENTA");
            while (res.next()) {
                Venta venta = new Venta();
                venta.setIdventa(res.getInt("idventa"));
                venta.setIdcliente(res.getInt("idcliente"));
                venta.setIdemp(res.getInt("idemp"));
                venta.setFecha(res.getDate("fecha"));
                venta.setTipo_pago(res.getString("tipo_pago"));
                venta.setEstado(res.getString("estado"));
                venta.setTotal(res.getDouble("total"));
                venta.setObservacion(res.getString("observacion"));

                ventas.add(venta);
            }
            res.close();
            stm.close();
        } catch (Exception e) {
            System.out.println("Error en VentaDAO.ReadAll: " + e.getMessage());
        }
        return ventas;
    }

    @Override
    public boolean Update(Venta input) {
        boolean result = false;
        try {
            String SQL = "UPDATE VENTA SET idcliente=?, idemp=?, fecha=?, tipo_pago=?, estado=?, total=?, observacion=? WHERE idventa=?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, input.getIdcliente());
            pst.setInt(2, input.getIdemp());
            pst.setDate(3, new Date(input.getFecha().getTime()));
            pst.setString(4, input.getTipo_pago());
            pst.setString(5, input.getEstado());
            pst.setDouble(6, input.getTotal());
            pst.setString(7, input.getObservacion());
            pst.setInt(8, input.getIdventa());

            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en VentaDAO.Update: " + e.getMessage());
        }
        return result;
    }

    @Override
    public boolean Delete(String id) {
        boolean result = false;
        try {
            String SQL = "DELETE FROM VENTA WHERE idventa=?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, Integer.parseInt(id));
            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
        } catch (Exception e) {
            System.out.println("Error en VentaDAO.Delete: " + e.getMessage());
        }
        return result;
    }
}
