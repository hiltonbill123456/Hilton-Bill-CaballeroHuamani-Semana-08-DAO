package DataAccesObject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.DatabaseMetaData;

public class ConexionMySQL {

    private final String url = "jdbc:mysql://shuttle.proxy.rlwy.net:44776/railway?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    private final String user = "root";
    private final String password = "root";  // Pon aquí tu contraseña real

    private Connection conexion;

    public ConexionMySQL() {
        try {
            // Carga el driver de MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establece la conexión
            conexion = DriverManager.getConnection(url, user, password);

            if (conexion != null) {
                DatabaseMetaData metaData = conexion.getMetaData();
                System.out.println("Conexión exitosa!");
                System.out.println("Driver Name: " + metaData.getDriverName());
                System.out.println("Driver Version: " + metaData.getDriverVersion());
                System.out.println("Database Product Name: " + metaData.getDatabaseProductName());
                System.out.println("Database Product Version: " + metaData.getDatabaseProductVersion());
            }
        } catch (ClassNotFoundException e) {
            System.out.println("Error: Driver JDBC no encontrado.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Error: No se pudo conectar a la base de datos.");
            e.printStackTrace();
        }
    }

    public Connection getConexion() {
        return conexion;
    }

    public static void main(String[] args) {
        System.out.println("Probando conexión MySQL...");
        new ConexionMySQL();
    }
}
