package jdbctests;

import org.junit.jupiter.api.Test;
import utilities.DButils;

import java.util.List;
import java.util.Map;

public class DButilPractice {
//you can use utils inside your framework

     @Test
    public void test1(){
         //create connection
         DButils.createConnection();
         String query = "select first_name,last_name,salary,job_id\n" +
                 "from employees\n" +
                 "where rownum<2";

         Map<String, Object> rowMap = DButils.getRowMap(query);
         System.out.println(rowMap.toString());
         List<List<Object>> queryData = DButils.getQueryResultList(query);

         for (List<Object> row : queryData) {
             System.out.println(row.toString());
         }

         DButils.destroy();
         
     }
}
