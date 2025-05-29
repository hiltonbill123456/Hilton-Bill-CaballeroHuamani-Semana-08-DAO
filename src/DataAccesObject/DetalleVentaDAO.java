package DataAccesObject;

import BusinessEntity.DetalleVenta;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DetalleVentaDAO extends ConexionMySQL implements IBaseDAO<DetalleVenta> {

    @Override
    public boolean Create(DetalleVenta input) {
        boolean result = false;
        try {
            String SQL = "INSERT INTO DETALLE_VENTA (iddetalle, idventa, idprod, cantidad, precio, subtotal) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, input.getIddetalle());
            pst.setInt(2, input.getIdventa());
            pst.setInt(3, input.getIdprod());
            pst.setInt(4, input.getCantidad());
            pst.setDouble(5, input.getPrecio());
            pst.setDouble(6, input.getSubtotal());
            result = pst.execute();
            /*
            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
            */
           
        } catch (Exception e) {
            System.out.println("Error en DetalleVentaDAO.Create: " + e.getMessage());
        }
        return result;
    }

    @Override
    public DetalleVenta Read(String id) {
        DetalleVenta detalle = null;
        try {
            String SQL = "SELECT * FROM DETALLE_VENTA WHERE iddetalle = ?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, Integer.parseInt(id));
            ResultSet res = pst.executeQuery();
            if (res.next()) {
                detalle = new DetalleVenta();
                detalle.setIddetalle(res.getInt("iddetalle"));
                detalle.setIdventa(res.getInt("idventa"));
                detalle.setIdprod(res.getInt("idprod"));
                detalle.setCantidad(res.getInt("cantidad"));
                detalle.setPrecio(res.getDouble("precio"));
                detalle.setSubtotal(res.getDouble("subtotal"));
            }
            //res.close();
            //pst.close();
        } catch (Exception e) {
            System.out.println("Error en DetalleVentaDAO.Read: " + e.getMessage());
        }
        return detalle;
    }

    @Override
    public List<DetalleVenta> ReadAll() {
        List<DetalleVenta> detalles = new ArrayList<>();
        try {
            Statement stm = getConexion().createStatement();
            ResultSet res = stm.executeQuery("SELECT * FROM DETALLE_VENTA");
            while (res.next()) {
                DetalleVenta detalle = new DetalleVenta();
                detalle.setIddetalle(res.getInt("iddetalle"));
                detalle.setIdventa(res.getInt("idventa"));
                detalle.setIdprod(res.getInt("idprod"));
                detalle.setCantidad(res.getInt("cantidad"));
                detalle.setPrecio(res.getDouble("precio"));
                detalle.setSubtotal(res.getDouble("subtotal"));

                detalles.add(detalle);
            }
            //res.close();
            //stm.close();
        } catch (Exception e) {
            System.out.println("Error en DetalleVentaDAO.ReadAll: " + e.getMessage());
        }
        return detalles;
    }

    @Override
    public boolean Update(DetalleVenta input) {
        boolean result = false;
        try {
            String SQL = "UPDATE DETALLE_VENTA SET idventa=?, idprod=?, cantidad=?, precio=?, subtotal=? WHERE iddetalle=?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, input.getIdventa());
            pst.setInt(2, input.getIdprod());
            pst.setInt(3, input.getCantidad());
            pst.setDouble(4, input.getPrecio());
            pst.setDouble(5, input.getSubtotal());
            pst.setInt(6, input.getIddetalle());
            result = pst.execute();
            /*
            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
            */
        } catch (Exception e) {
            System.out.println("Error en DetalleVentaDAO.Update: " + e.getMessage());
        }
        return result;
    }

    @Override
    public boolean Delete(String id) {
        boolean result = false;
        try {
            String SQL = "DELETE FROM DETALLE_VENTA WHERE iddetalle=?";
            PreparedStatement pst = getConexion().prepareStatement(SQL);
            pst.setInt(1, Integer.parseInt(id));
            result = pst.executeUpdate() > 0;
            /*
            int rowsAffected = pst.executeUpdate();
            result = rowsAffected > 0;

            pst.close();
            */

        } catch (Exception e) {
            System.out.println("Error en DetalleVentaDAO.Delete: " + e.getMessage());
        }
        return result;
    }
}
