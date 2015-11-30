/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;


/**
 *
 * @author A.Araf
 */



import java.sql.*;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Vector;
import gui.Mainframe;
public class Database2 {
  
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost/dianostic_center";


   static final String USER = "root";
   static final String PASS = "";
   
   String patientid="";
   String patientFirstName="";
   
   public ArrayList<Vector> DoctorDatabase() {
      Connection conn = null;
   Statement stmt = null; 
   PreparedStatement st = null;
   
   Vector<String> data;
            ArrayList<Vector> dataList = new ArrayList<>();
            
   try{
     
      Class.forName("com.mysql.jdbc.Driver");
      

      conn = DriverManager.getConnection(DB_URL, USER, PASS);
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
          data.add(rs.getString("CellNO"));
          data.add(rs.getString("Com  ssion"));
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
   
   
   public static void main (String [] args) {
   Connection conn = null;
   Statement stmt = null;
   int choice;
   PreparedStatement st = null;
   Scanner input = new Scanner(System.in);
   
   try{
     
      Class.forName("com.mysql.jdbc.Driver");

      conn = DriverManager.getConnection(DB_URL, USER, PASS);
      
      
    
      System.out.println("Please select your option:\n 1) Summary \n 2)Detailed Summary\n 3)Show All Patients with corredponding test \n 4) Show All Doctor with invoice number"
              + "\n 5) Specific Doctor  ");
              
      choice = input.nextInt();
      
      if(choice == 1){// Summary of Paitient and test
          
          
            System.out.println("Inovoice No" + "\t\t" + "Name" +
              "\t\t" + "Time & Date");
               
            st = conn.prepareStatement("SELECT patient_has_invoicetest.invoiceTest_Invoice, patient.First_Name,"
              + " invoicetest.Test_Date FROM patient_has_invoicetest "+" "+"INNER join invoicetest "
              + "on patient_has_invoicetest.invoiceTest_Invoice=invoicetest.Invoice INNER JOIN patient"
              + " ON patient_has_invoicetest.patient_idPaitient=patient.idPatient");
      
            ResultSet rs=st.executeQuery();
      
      while (rs.next()) {
          
          String invoice = rs.getString( "InvoiceTest_Invoice");
          String Name = rs.getString("First_Name");
          String date = rs.getString("Test_Date");

          System.out.print(invoice+"\t\t");
          System.out.print(Name+"\t\t");
          System.out.print(date+"\t\t");
          System.out.println();
      }
 }
      else if(choice ==2){
              
            st = conn.prepareStatement("SELECT patient_has_invoicetest.invoiceTest_Invoice,patient.idPatient, patient.First_Name,testname.Name,invoicetest.Test_Date,invoicetest.Test_Status,patient.reciptionist_idreciptionist FROM patient_has_invoicetest inner join invoicetest on patient_has_invoicetest.invoiceTest_Invoice=invoicetest.Invoice INNER JOIN patient ON patient_has_invoicetest.patient_idPaitient=patient.idPatient inner join testname on invoicetest.TestID=testname.idtestName");
            
            ResultSet rs=st.executeQuery();
            System.out.println("id"+"\t\t"+"idPatient"+"\t\t"+"Name"
          +"\t\t+"+"testName"+"\t\t"+"date"+"\t\t"+"status"+"\t\t"+"reciptionistId");
            
            
           //---------vector----------
            Vector<String> data;
            ArrayList<Vector> dataList = new ArrayList<>();
            
            while (rs.next()) {
          
          String id = rs.getString( "InvoiceTest_Invoice");
          String idPatient = rs.getString ("idPatient");
          String Name = rs.getString("First_Name");
          String testName = rs.getString("Name");
          String date = rs.getString("Test_Date");
          String status = rs.getString("Test_Status");
          String reciptionistId= rs.getString ("reciptionist_idreciptionist");
          
          data = new Vector();
          data.addElement(id);
          data.addElement(idPatient);
          data.addElement(Name);
          data.addElement(testName);
          data.addElement(date);
          data.addElement(status);
          data.addElement(reciptionistId);

          dataList.add(data);
          
          
         System.out.println(id+"\t\t"+idPatient+"\t\t"+Name
          +"\t\t"+testName+"\t\t"+date+"\t\t"+status+"\t\t"+reciptionistId);
          
         
      }
            
            
             Mainframe mainf = new Mainframe(dataList);
             mainf.setVisible(true);
            
          
              }
      else if(choice == 3){
      
          System.out.println("Please enter patient ID (1001-9999)");
          int pid = input.nextInt();
          
          st = conn.prepareStatement("SELECT patient_has_invoicetest.invoiceTest_Invoice,patient.idPatient, patient.First_Name,testname.Name,invoicetest.Test_Date,invoicetest.Test_Status,patient.reciptionist_idreciptionist FROM patient_has_invoicetest inner join invoicetest on patient_has_invoicetest.invoiceTest_Invoice=invoicetest.Invoice INNER JOIN patient ON patient_has_invoicetest.patient_idPaitient=patient.idPatient inner join testname on invoicetest.TestID=testname.idtestName where patient.idPatient="+pid);

          System.out.println("id"+"\t\t"+"idPatient"+"\t\t"+"Name"
          +"\t\t+"+"testName"+"\t\t"+"date"+"\t\t"+"status"+"\t\t"+"reciptionistId");
          
          ResultSet rs=st.executeQuery();
            while (rs.next()) {
          
          String id = rs.getString( "InvoiceTest_Invoice");
          String idPatient = rs.getString ("idPatient");
          String Name = rs.getString("First_Name");
          String testName = rs.getString("Name");
          String date = rs.getString("Test_Date");
          String status = rs.getString("Test_Status");
          String reciptionistId= rs.getString ("reciptionist_idreciptionist");

          System.out.println(id+"\t\t"+idPatient+"\t\t"+Name
          +"\t\t"+testName+"\t\t"+date+"\t\t"+status+"\t\t"+reciptionistId);
         
      }
      }
      
      
      else if(choice ==4){
      
//          System.out.println("Please enter patient ID (1001-9999)");
//          int pid = input.nextInt();
          
          st = conn.prepareStatement("SELECT doctor_has_invoicetest.InvoiceTest_Invoice,testname.Name,"
                  + "invoicetest.Test_Date,invoicetest.Test_Status,doctor_has_invoicetest.doctor_idDoctor,doctor.First_Name,"
                  + "doctor.Last_Name,doctor.Specialization " +
                        "FROM doctor_has_invoicetest " +
                            "inner join invoicetest " +
        "on doctor_has_invoicetest.InvoiceTest_Invoice=invoicetest.Invoice " +
                                    "INNER JOIN doctor " +
                        "ON doctor_has_invoicetest.doctor_idDoctor=doctor.idDoctor " +
                              "inner join testname on invoicetest.TestID=testname.idtestName");

          System.out.println("id"+"\t\t"+"docId"+"\t\t"+"Name"
          +"\t\t+"+"lastName"+"spec"+"\t\t"+"testName"+"\t\t"+"date"+"\t\t"+"status"+"\t\t"+"reciptionistId");
          
          ResultSet rs=st.executeQuery();
            while (rs.next()) {
          
          String id = rs.getString( "InvoiceTest_Invoice");
          String docId = rs.getString ("doctor_idDoctor");
          String Name = rs.getString("First_Name");
          String lastName = rs.getString("Last_Name");
          String spec = rs.getString ("Specialization");
          String testName = rs.getString("Name");
          String date = rs.getString("Test_Date");
          String status = rs.getString("Test_Status");
          //String reciptionistId= rs.getString ("reciptionist_idreciptionist");

          System.out.println(id+"\t\t"+docId+"\t\t"+Name+"\t\t"+lastName+"\t\t"+spec
          +"\t\t"+testName+"\t\t"+date+"\t\t"+status+"\t\t");
         
      }
  
      }
      
       else if(choice ==5){
      
          System.out.println("Please enter Doctor ID (10001-99999)");
          int did = input.nextInt();
          
          st = conn.prepareStatement("SELECT doctor_has_invoicetest.InvoiceTest_Invoice,testname.Name,"
                  + "invoicetest.Test_Date,invoicetest.Test_Status,doctor_has_invoicetest.doctor_idDoctor,doctor.First_Name,"
                  + "doctor.Last_Name,doctor.Specialization " +
                        "FROM doctor_has_invoicetest " +
                            "inner join invoicetest " +
        "on doctor_has_invoicetest.InvoiceTest_Invoice=invoicetest.Invoice " +
                                    "INNER JOIN doctor " +
                        "ON doctor_has_invoicetest.doctor_idDoctor=doctor.idDoctor " +
                              "inner join testname on invoicetest.TestID=testname.idtestName where doctor.idDoctor="+did);

          System.out.println("id"+"\t\t"+"docId"+"\t\t"+"Name"
          +"\t\t"+"lastName"+"\t\t"+"spec"+"\t\t"+"testName"+"\t\t"+"date"+"\t\t"+"status"+"\t\t");
          
          ResultSet rs=st.executeQuery();
            while (rs.next()) {
          
          String id = rs.getString( "InvoiceTest_Invoice");
          String docId = rs.getString ("doctor_idDoctor");
          String Name = rs.getString("First_Name");
          String lastName = rs.getString("Last_Name");
          String spec = rs.getString ("Specialization");
          String testName = rs.getString("Name");
          String date = rs.getString("Test_Date");
          String status = rs.getString("Test_Status");
          //String reciptionistId= rs.getString ("reciptionist_idreciptionist");

          System.out.println(id+"\t\t"+docId+"\t\t"+Name+"\t\t"+lastName+"\t\t"+spec
          +"\t\t"+testName+"\t\t"+date+"\t\t"+status+"\t\t");
         
      }
      
       } 
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
}//end main
}//end JDBCExample


