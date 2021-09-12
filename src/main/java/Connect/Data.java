package Connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class Data {
    public static Connection getConnection() throws Exception{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url = "jdbc:sqlserver://localhost:1433;databaseName=Information";
        Connection connection = DriverManager.getConnection(url,"sa","123456789");

        return connection;
    }
}
