package jdbctests;

import org.junit.jupiter.api.Test;
import utilities.DButils;

import java.sql.*;
import java.util.HashMap;
import java.util.Map;

public class LibraryConnectionTest {
    @Test
            public void test1() throws SQLException {
        String dbUrl = "jdbc:mysql://34.230.35.214:3306/library1";
        String dbUsername = "library1_client";
        String dbPassword = "WVF4NdGXCKHeE6VQ";


        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = statement.executeQuery("SELECT * FROM books");

        resultSet.next();
        ResultSetMetaData rsmd = resultSet.getMetaData();
        Map<String,Object> row1 = new HashMap<>();
        row1.put(rsmd.getColumnName(2),resultSet.getObject(2) );
        System.out.println(row1.toString());


        System.out.println(resultSet.getString(2));


        //close connection
        resultSet.close();
        statement.close();
        connection.close();

    }
@Test
    public void test2(){
    String dbUrl = "jdbc:mysql://34.230.35.214:3306/library1";
    String dbUsername = "library1_client";
    String dbPassword = "WVF4NdGXCKHeE6VQ";

    DButils.createConnection(dbUrl,dbUsername,dbPassword);
    DButils.destroy();
}
    }


