import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ListOfMapExample {
    Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
    Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
    ResultSet resultSet = statement.executeQuery("SELECT * FROM DEPARTMENTS");



    @Test
    public void test1(){






    }
}
