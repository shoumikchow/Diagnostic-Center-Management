package gui;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.util.Date;
import java.util.Scanner;


public class DynamicEntry {

	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost/project";

	//  Database credentials
	static final String USER = "root";
	static final String PASS = "";

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		Connection conn = null;
		Statement stmt = null;	
		try{

			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

			String upField = ""; 
			String upID = "";
			String upValue = "";
			int id = 0;
			String First_Name = "";
			String Middle_Name ="";
			String Last_Name = "";
			//Gender gender = Male
			String DOB = "";
			String address = "";
			String number = "";
			String NID = "";
			String rID = "";
			PreparedStatement st = conn.prepareStatement("insert into paitient(idPaitient,NID,"
					+ "First_Name,Middle_Name,Last_Name, Address,"
					+ " CellPhone, Recp_ID) values (?,?,?,?,?,?,?,?)"); 
			PreparedStatement update = conn.prepareStatement("update paitient set "
					+upField+"=\"" + upValue + "\" where Id = \""+upID+"\";");
			
			
			while (true) {
				System.out.println("Insert....1/0?");
				int next = input.nextInt();
				if(next == 0){
					break;
				} else {
				System.out.println("id");
				id = input.nextInt();
				System.out.println("First Name");
				First_Name = input.next();
				System.out.println("Middle Name");
				Middle_Name = input.next();
				System.out.println("Last name");
				Last_Name = input.next();
//				System.out.println("DOB");
//				DOB = input.next();
				System.out.println("Address");
				address = input.next();
				System.out.println("Number");
				number = input.next();
				System.out.println("Rid");
				rID = input.next();
				System.out.println("NID");
				NID = input.next();
			
				st.setInt(1, id);
				st.setString(2, NID);
				st.setString(3, First_Name);
				st.setString(4, Middle_Name);
				st.setString(5, Last_Name);
				st.setString(6, address);
				st.setString(7, number);
//				st.setEnum(7, gender);
				
				st.setString(8, rID);
				st.executeUpdate();

				}
			}
			System.out.println("Do you want to update?.....1/0");
			int upd = input.nextInt();
			if(upd == 1) {
				System.out.printf("Enter ID");
				upID = input.next();
				System.out.println("Type the field you want to update\n"
						+ "First_Name \nMiddle_Name \nLast_Name \nDOB \naddress \nnumber \nNID \nrID");
				upField = input.next();
				System.out.printf("Enter Value of %s", upField);
				upValue = input.next();
				PreparedStatement query = conn.prepareStatement("update paitient set "+upField+" = ? where idPaitient = "+upID);
			      query.setString(1,upValue);
			      query.executeUpdate();
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
		System.out.println("Goodbye!");
	}//end main

}
