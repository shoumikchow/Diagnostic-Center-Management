/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import static database.Database2.DB_URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ahmad
 */
public class DatabaseConnector {
    
    
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost/diagnostic_center";


   static final String USER = "root";
   static final String PASS = "";
    
    
   Connection conn = null;
   Statement stmt = null; 
   PreparedStatement st = null;
    
    
    public DatabaseConnector() throws SQLException, ClassNotFoundException {
        
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(DB_URL, USER, PASS);    
        
    }
    
    public ArrayList<Vector> DoctorDatabase() {
   
        Vector<String> data;
        ArrayList<Vector> dataList = new ArrayList<>();

        try{
           st = conn.prepareStatement("SELECT * FROM DOCTOR");
           ResultSet rs = st.executeQuery();
           while(rs.next()) {
               data = new Vector<>();
               data.add(rs.getString("idDoctor"));
               data.add(rs.getString("First_Name"));
               data.add(rs.getString("Middle_Name"));
               data.add(rs.getString("Last_Name"));
               data.add(rs.getString("NID"));
               data.add(rs.getString("Gender"));
               data.add(rs.getString("DOB"));
               data.add(rs.getString("CellNo"));
               data.add(rs.getString("Comssion"));
               data.add(rs.getString("Specialization"));

               dataList.add(data);
      }
   }catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }
   return dataList;
   }
    
    public ArrayList<Vector> PatientDatabase() {
        
        Vector<String> data;
        ArrayList<Vector> dataList = new ArrayList<>();

        try{
           st = conn.prepareStatement("SELECT * FROM Patient");
           ResultSet rs = st.executeQuery();
           while(rs.next()) {
               data = new Vector<>();
               data.add(rs.getString("idPatient"));
               data.add(rs.getString("First_Name"));
               data.add(rs.getString("Middle_Name"));
               data.add(rs.getString("Last_Name"));
               data.add(rs.getString("Gender"));
               data.add(rs.getString("Address"));
               data.add(rs.getString("CellPhone"));
               data.add(rs.getString("NID"));
               data.add(rs.getString("DOB"));
               data.add(rs.getString("reciptionist_idreciptionist"));

               dataList.add(data);
      }
   }catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }
   return dataList;
    }
    
    public ArrayList<Vector> StaffDatabase() {
       Vector<String> data;
        ArrayList<Vector> dataList = new ArrayList<>();

        try{
           st = conn.prepareStatement("SELECT * FROM Stuff");
           ResultSet rs = st.executeQuery();
           while(rs.next()) {
               data = new Vector<>();
               data.add(rs.getString("idStuff"));
               data.add(rs.getString("First_Name"));
               data.add(rs.getString("Middle_Name"));
               data.add(rs.getString("Last_Name"));
               data.add(rs.getString("Gender"));
               data.add(rs.getString("Present_Address"));
               data.add(rs.getString("Permament_Address"));
               data.add(rs.getString("Cell_no"));
               data.add(rs.getString("Salary"));
               data.add(rs.getString("Joning_Date"));
               data.add(rs.getString("Shift"));
               data.add(rs.getString("NID"));
               data.add(rs.getString("DOB"));

               dataList.add(data);
            }
        }catch(SQLException se){
           //Handle errors for JDBC
           se.printStackTrace();
        }catch(Exception e){
           //Handle errors for Class.forName
           e.printStackTrace();
        }
     return dataList;
    }
    
    public ArrayList<String> SearchData(String TableName, String id, String idColumn) {
        ResultSet rs ;
        ArrayList<String> data = new ArrayList<>();
        try {
            st = conn.prepareStatement("SELECT * FROM " + TableName + " WHERE "+ idColumn+" = \"" + id +"\"");
            rs = st.executeQuery();
            if(TableName.equals("doctor")) {
                while(rs.next()) {
                data = new ArrayList<>();
               data.add(rs.getString("idDoctor"));
               data.add(rs.getString("First_Name"));
               data.add(rs.getString("Middle_Name"));
               data.add(rs.getString("Last_Name"));
               data.add(rs.getString("NID"));
               data.add(rs.getString("Gender"));
               data.add(rs.getString("DOB"));
               data.add(rs.getString("CellNo"));
               data.add(rs.getString("Comssion"));
               data.add(rs.getString("Specialization"));
                }
            } else if(TableName.equals("stuff")) {
                while(rs.next()) { 
                data = new ArrayList<>();
               data.add(rs.getString("idStuff"));
               data.add(rs.getString("First_Name"));
               data.add(rs.getString("Middle_Name"));
               data.add(rs.getString("Last_Name"));
               data.add(rs.getString("Gender"));
               data.add(rs.getString("Present_Address"));
               data.add(rs.getString("Permament_Address"));
               data.add(rs.getString("Cell_no"));
               data.add(rs.getString("Salary"));
               data.add(rs.getString("Joning_Date"));
               data.add(rs.getString("Shift"));
               data.add(rs.getString("NID"));
               data.add(rs.getString("DOB"));
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
           return data;
    }    
    
    public void InsertData(Object [] data, String destination) {
        ResultSet rs;
        try {
            if(destination.equals("Paitient")) {
                st = conn.prepareStatement(""); //INSERT QUERY
            rs = st.executeQuery();
            } else if(destination.equals("Doctor")) {
                st = conn.prepareStatement(""); //INSERT QUERY
            rs = st.executeQuery();
            }else if(destination.equals("Stuff")) {
                st = conn.prepareStatement(""); //INSERT QUERY
            rs = st.executeQuery();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void DeleteQuery(String id) {
         ResultSet rs;
        try {
             //DELETE QUERY
                st = conn.prepareStatement(""); 
            rs = st.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void UpdateQuery(String [] DataType,String id) {
         //ResultSet rs;
         String [] update= new String [DataType.length];
         update = DataType;
         int count =1;
         int aCount = 1;
         
        try {
             //DELETE QUERY
            System.out.println(id);
          
           
            
            
               String  sql = "update patient set NID=?, First_Name =?, Middle_Name=?, Last_Name=?, Address=?,"
                        + " Gender=?, CellPhone=?, DOB=? where idPatient = "+id; 
                PreparedStatement st = conn.prepareStatement(sql);
            //rs = st.executeQuery();
           
                st.setString(1, update[5]);//nid
            st.setString(2, update[1]);//fname
             st.setString(3, update[2]);//mname
              st.setString(4, update[3]);//lname
               st.setString(5, update[4]);//add
                
               st.setString(6, update[6]);//gen
                  st.setString(7, update[7]);//cell
                   st.setString(8, update[8]);//dob
                   st.executeUpdate();
                  
                  
                
              
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<String> SearchQuery(String id) {
         
        
         
        ArrayList<String> data = new ArrayList<>();

        try{
           st = conn.prepareStatement("SELECT * FROM patient where idPatient = "+id);
           ResultSet rs = st.executeQuery();
           while(rs.next()) {
               data = new ArrayList<>();
               
               data.add(rs.getString("idPatient"));
               data.add(rs.getString("First_Name"));
               data.add(rs.getString("Middle_Name"));
               data.add(rs.getString("Last_Name"));
               data.add(rs.getString("Gender"));
               data.add(rs.getString("NID"));
               data.add(rs.getString("Address"));
               data.add(rs.getString("DOB"));
               data.add(rs.getString("CellPhone"));

             
            }
        }catch(SQLException se){
           //Handle errors for JDBC
           se.printStackTrace();
        }catch(Exception e){
           //Handle errors for Class.forName
           e.printStackTrace();
        }
     return data;
    }
    
    public boolean loginCheck(String name, String pass){
    
        boolean flag = true;
        try {
            st = conn.prepareStatement("select * from stuff where First_Name = '"+name+"' and pass ='"+ pass+"'");
             ResultSet rs = st.executeQuery();
             
             
           ArrayList<String> al = new ArrayList();
           
          // while(rs.next()){
           //al.add(rs.getString("First"))
           
           //}
   
           System.out.println(rs.getRow());
             if(rs.next()){
             
                 flag = true ;
                 System.out.println("True");
                 
             }else{
                 
                 flag = false;
                 System.out.println("False");
             
             }
             
             
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
           
        return flag;
    }
    
    public ArrayList<Vector> LabData() {
        
        ArrayList<Vector> al = new ArrayList();
        
        try {
            st = conn.prepareStatement("SELECT * FROM `laboratory`");
             ResultSet rs = st.executeQuery();
             
             
           
           Vector labdVector;
           while(rs.next()) {
               labdVector = new Vector();
           labdVector.add(rs.getString("type"));
           labdVector.add(rs.getString("status"));
           labdVector.add(rs.getString("labtechID"));
           al.add(labdVector);
           }
             
             
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return al;
    }
    
}
