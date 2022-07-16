package jdbctests;

import org.junit.jupiter.api.Test;


import java.sql.*;
import java.util.*;

public class DynamicList {
    String dbUrl = "jdbc:oracle:thin:@52.90.56.79:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";



    @Test
    public void test1() throws SQLException {
        Connection connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet resultSet = statement.executeQuery("select first_name,last_name,salary,job_id\n" +
                "from employees\n" +
                "where rownum<6" );

        //in order to get column names we need resultsetmedata
        ResultSetMetaData rsmd = resultSet.getMetaData();


//list of Maps to keep all infromation
        List<Map<String,Object>> querryData = new ArrayList<>();

        //number of columns
        int colCount = rsmd.getColumnCount();

        //loop through each row
        while(resultSet.next()){//it will clean up the map each time
            //each time when it is executed we get a brand new row
            Map<String,Object> row = new LinkedHashMap<>();

            for (int i = 1; i <=colCount ; i++) {
                row.put(rsmd.getColumnName(i), resultSet.getObject(i));
            }

            // add ready map row to the list

            querryData.add(row);
        }

        //print each row inside the list
        for (Map<String, Object> row : querryData) {
            System.out.println(row.toString());
        }


        //close connection
        resultSet.close();
        statement.close();
        connection.close();


    }
    }
