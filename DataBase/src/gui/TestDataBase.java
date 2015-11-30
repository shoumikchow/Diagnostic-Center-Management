package gui;

import java.sql.*;

public class TestDataBase {
   // JDBC driver name and database URL
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost/project";

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
     PreparedStatement st = conn.prepareStatement("select idPaitient, First_Name,Last_Name from paitient");
      ResultSet rs=st.executeQuery();
      while (rs.next()) {
          /*String id = rs.getString("id");
          String title = rs.getString("title");
          String artist = rs.getString("artist");
          String label = rs.getString("label");
          String released = rs.getString("released");
          System.out.println(id + "\t" + title +
                             "\t" + artist + "\t" + label +
                        "\t" + released);*/
    	  
    	  
    	        String id = rs.getString("idPaitient");
    	        String fname = rs.getString("First_Name");
    	        String lname = rs.getString("Last_Name");
    	      
    	        System.out.println(id + "\t" + fname +
    	                           "\t" + lname);
      }
      
     /* PreparedStatement st = conn.prepareStatement("insert into paitient(idPaitient,First_Name,Last_Name) values (?,?,?)");

      st.setInt(1,12344);
      st.setString(2, "Naquib");
      st.setString(3,"Ahmad");
      st.executeUpdate();
      
      PreparedStatement query = conn.prepareStatement("update paitient set First_Name = ? where idPaitient = 12344");
      //query.setInt(1,12344);
      query.setString(1, "Ahmad");
      
      query.executeUpdate();*/
      
       /*PreparedStatement s = conn.prepareStatement("select idPaitient, First_Name, Last_Name, " +
      " from paitient");
    ResultSet rs=s.executeQuery();
    while (rs.next()) {
        String id = rs.getString("idPaitient");
        String fname = rs.getString("First_Name");
        String lname = rs.getString("Last_Name");
      
        System.out.println(id + "\t" + fname +
                           "\t" + lname);*/
      
    //}
    System.out.println("Insertion successful");
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