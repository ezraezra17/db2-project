import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.sql.*;

public class jdbcExamples {
    String dbUrl = "jdbc:oracle:thin:@44.202.119.26:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void test1() throws SQLException {
        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = statement.executeQuery("SELECT * FROM DEPARTMENTS");
        resultSet.last();
//how to find how many rows we have for the querry

        //move to first row
        resultSet.next();

        System.out.println(resultSet.getString(2));
        //display departments table in 18 Administration -289 -1700 forward
        while (resultSet.next()) {
            System.out.println(resultSet.getInt(1) + "-" + resultSet.getString(2) + "-" + resultSet.getString(3) + resultSet.getInt(4));
        }

        resultSet = statement.executeQuery("SELECT * FROM regions");


        while (resultSet.next()) {

            System.out.println(resultSet.getInt(1) + "-" + resultSet.getString(2));

        }
        //close connection
        resultSet.close();
        statement.close();
        connection.close();

    }

    @Test
    public void test2() throws SQLException {


        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = statement.executeQuery("SELECT * FROM DEPARTMENTS");

// how to find how many rows we have for the querry"
        //move to last row
        resultSet.last();

        // get the row count
        int rowcount = resultSet.getRow();
        System.out.println(rowcount);
        //to move before first ro after we use last method
        resultSet.beforeFirst();

        //print all second column info
        while (resultSet.next()) {
            System.out.println(resultSet.getString(2));
        }


        //close connection
        resultSet.close();
        statement.close();
        connection.close();


    }
   @DisplayName("ResultSet methods")
    @Test
    public void test3() throws SQLException {


        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = statement.executeQuery("SELECT * FROM EMPLOYEES");


        // get the database data inside the dbMetedata object

DatabaseMetaData dbMetaData = connection.getMetaData();
       System.out.println("dbMetaData.getUserName() = " + dbMetaData.getUserName());
       System.out.println("dbMetaData.getDatabaseProductName() = " + dbMetaData.getDatabaseProductName());
       System.out.println("dbMetaData.getDriverName() = " + dbMetaData.getDriverName());
       System.out.println("dbMetaData.getDriverVersion() = " + dbMetaData.getDriverVersion());

//get the resultetmetadata //rswd

       ResultSetMetaData rsmetadata = resultSet.getMetaData();
       // how many columns we have?
       int colCount = rsmetadata.getColumnCount();
       System.out.println(colCount);


       //getting column names
       System.out.println(rsmetadata.getColumnName(1));
       System.out.println("rsmetadata.getColumnName(2) = " + rsmetadata.getColumnName(2));
//print all the column names dynamically
       //beware!! column number starts from 1
       //rsmetadata.getColumnName (i)-->gets column name
       //rsmetadata.getColumnCount ()--> total number of columns
       //print all the column names dynamically

       for (int i = 1; i <= colCount; i++) {
           System.out.println(rsmetadata.getColumnName(i));
       }





       //close connection
        resultSet.close();
        statement.close();
        connection.close();


    }
}