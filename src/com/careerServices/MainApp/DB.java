package com.careerServices.MainApp;

//import java.sql.Connection;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

public class DB 
{
	//public static MysqlDataSource dataSource = getDataSource();
	public MysqlDataSource getDataSource()
	{
		MysqlDataSource dataSource = new MysqlDataSource(); //configuring the connection 
		dataSource.setUser("sql9142409");
		dataSource.setPassword("vjUyLx6eNN");
		dataSource.setServerName("sql9.freemysqlhosting.net");
		dataSource.setDatabaseName("sql9142409");
		dataSource.setPortNumber(3306);
		return dataSource;
	}
}
//	public static void main(String[] args)
//	{
//		DB db = new DB();
//		
//		/*
//			int id = 922298;
//			String name = "David Veloso";
//			String email = "velosoda@kean.edu";
//			String phoneNumber = "9083136146";
//			int arrival = 500;
//			byte walkIn = 1;
//			byte classtype = 0;
//			byte appointment = 0;
//			byte workshop = 0;
//			byte fullTime = 1; 
//			byte partTime = 0;
//			byte freshman = 0;
//			byte sophomore = 0;
//			byte junior = 0;
//			byte senor = 1; 
//			byte alumni = 0;
//			byte potentialStudent = 0;
//			byte careerCounseling = 1; 
//			byte jobSearching = 0;
//			byte resume = 0;
//			byte coverLetter = 0;
//			byte mockInterview = 0;
//			byte internshipInformation = 0; 
//			byte transitionToKean = 0;
//			byte sophomoreSeminar = 0;
//			byte juniorSeminar = 0;
//			byte seniorSeminar = 0;
//			byte career = 0;
//			byte copsTest = 0;
//			byte myersbriggs = 0;
//			byte approved = 0;
//			String query = "insert into student_form(ID,Name,Email,Phone_Number,Arrival,Walk_In,Class,Appointment,Workshop,Full_Time,Part_Time,Freshman,Sophomore,Junior,Senior,Alumni,Potential_Student,Career_Counseling,Job_Searching,Resume,Cover_Letter,Mock_Interview,Internship_Information,Transistion_to_Kean,Sophomore_Seminar,Junior_Seminar,Senior_Seminar,Career,Cops_Test,Myers_Briggs,Approved)"
//					+ " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";*/
//			//Connection conn = db.getDataSource().getConnection(); //create connection
//			//System.out.println("connected");
//			try
//			{
//				String searchType = "ID";
//				String info = "0922298";
//				System.out.println(searchType+" "+info);
//				Connection conn = db.getDataSource().getConnection();
//				Statement stmt = conn.createStatement();
//				ResultSet rs = stmt.executeQuery("Select * from student_form where " + searchType + " = " + info);
//				while(rs.next())
//				{	
//					System.out.println(rs.getString(1));
//					System.out.println(rs.getString(2));
//					System.out.println(rs.getString(3));
//					System.out.println(rs.getString(4));
//					System.out.println(rs.getString(5));
//					System.out.println(rs.getString(6));
//					System.out.println(rs.getString(7));
//					System.out.println(rs.getString(8));
//					System.out.println(rs.getString(9));
//					System.out.println(rs.getString(10));
//					System.out.println(rs.getString(11));
//					System.out.println(rs.getString(12));
//					System.out.println(rs.getString(13));
//					System.out.println(rs.getString(14));
//					System.out.println();
//					
//				}
//				stmt.close();
//				conn.close();
//			} 
//			catch (SQLException e) 
//			{
//				
//			}
//		}
//	}
//			/*
//			PreparedStatement insert = conn.prepareStatement(query);
//			insert.setInt(1, id);
//			insert.setString(2, name);
//			insert.setString(3,email);
//			insert.setString(4, phoneNumber);
//			insert.setInt(5, arrival);
//			insert.setByte(6, walkIn);
//			insert.setByte(7, classtype);
//			insert.setByte(8, appointment);
//			insert.setByte(9, workshop);
//			insert.setByte(10, fullTime);
//			insert.setByte(11, partTime);
//			insert.setByte(12, freshman);
//			insert.setByte(13, sophomore);
//			insert.setByte(14, junior);
//			insert.setByte(15, senor);
//			insert.setByte(16, alumni);
//			insert.setByte(17, potentialStudent);
//			insert.setByte(18, careerCounseling);
//			insert.setByte(19, jobSearching);
//			insert.setByte(20, resume);
//			insert.setByte(21, coverLetter);
//			insert.setByte(22, mockInterview);
//			insert.setByte(23, internshipInformation);
//			insert.setByte(24, transitionToKean);
//			insert.setByte(25, sophomoreSeminar);
//			insert.setByte(26, juniorSeminar);
//			insert.setByte(27, seniorSeminar);
//			insert.setByte(28, career);
//			insert.setByte(29, copsTest);
//			insert.setByte(30, myersbriggs);
//			insert.setByte(31, approved);
//			insert.execute();
//			System.out.println("Query Executed");
//			*/
//			//insert.close();
