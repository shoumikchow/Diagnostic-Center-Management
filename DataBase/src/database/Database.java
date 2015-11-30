/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package database;

  import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Database {
  


   // JDBC driver name and database URL
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost//diagnostic_center";

   //  Database credentials
   static final String USER = "root";
   static final String PASS = "";
   
   public static void main(String[] args) {
   Connection conn = null;
   Statement stmt = null;
   try{
      //STEP 2: Register JDBC driver
      Class.forName("com.mysql.jdbc.Driver");

      //STEP 3: Open a connection
      System.out.println("Connecting to database...");
      conn = DriverManager.getConnection(DB_URL, USER, PASS);
      
//      System.out.println("id" + "\t" + "Name" +
//              "\t" + "CountryCode" + "\t" + "District" +
//              "\t" + "Population");
//      PreparedStatement st = conn.prepareStatement("select ID, NAME, CountryCode, " +
//        "District, Population from city where id=1");
//      ResultSet rs=st.executeQuery();
//      
//      while (rs.next()) {
//          int id = rs.getInt(1);
//          String Name = rs.getString(2);
//          String CountryCode = rs.getString(3);
//          String District = rs.getString(4);
//          int Population = rs.getInt(5);
//          System.out.println(id + "\t" + Name +
//                             "\t" + CountryCode + "\t" + District +
//                             "\t" + Population);
//
//      }
   }catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }finally{
      //finally block used to close resources
      try{
         if(stmt!=null)
            stmt.close();
      }catch(SQLException se2){
      }// nothing we can do
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }//end finally try
   }//end try
   System.out.println("Goodbye!");
}//end main
}//end JDBCExample


