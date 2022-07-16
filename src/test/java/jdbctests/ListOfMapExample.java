package jdbctests;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ListOfMapExample {
    String dbUrl = "jdbc:oracle:thin:@52.90.56.79:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";


    @Test
    public void test1() throws SQLException {
        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select first_name,last_name,salary,job_id\n" +
                "from employees\n" +
                "where rownum<6");

        //in order to get column names we need resultsetmetadata

        ResultSetMetaData rsmd = resultSet.getMetaData();

        resultSet.next();


//creating list for keeping all the rows in maps
        List<Map<String, Object>> querryData = new ArrayList<>();


        Map<String, Object> row1 = new HashMap<>();
//FİRST COLUMN AND FİRST VALUES
        //we change the key and values with rsmd and result to get values from table directly
        row1.put(rsmd.getColumnName(1), resultSet.getString(1));//first column
        row1.put(rsmd.getColumnName(2), resultSet.getString(2));//second column
        row1.put(rsmd.getColumnName(3), resultSet.getString(3));//third column
        row1.put(rsmd.getColumnName(4), resultSet.getString(4));//fourth column


        System.out.println(row1.toString());

        resultSet.next();//I have to change my pointer to the second row
        Map<String, Object> row2 = new HashMap<>();

        row2.put(rsmd.getColumnName(1), resultSet.getString(1));//first column
        row2.put(rsmd.getColumnName(2), resultSet.getString(2));//first column
        row2.put(rsmd.getColumnName(3), resultSet.getString(3));//first column
        row2.put(rsmd.getColumnName(4), resultSet.getString(4));//first column

        System.out.println(row2.toString());
//adding rows one by one to my list
        querryData.add(row1);
        querryData.add(row2);

//get the steven last name directly from the list

       //System.out.println(querryData.get(0).get("last_name"));works with index number

     /*   for (Map<String, Object> querryDatum : querryData) {
            for (Object value : querryDatum.values()) {
                if(value.equals("Steven")){
                    System.out.println(querryDatum.get("last_name"));
                }
            }
        }*/





    }
}
