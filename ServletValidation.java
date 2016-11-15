package com.careerServices.MainApp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletValidation extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

    public ServletValidation() 
    {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		DB database = new DB();
		try
		{
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phoneNumber = request.getParameter("phoneNumber");
			String arrival = request.getParameter("arrival");
			String visitType = request.getParameter("visitType");
			String enTime = request.getParameter("enTime"); 
			String enStat = request.getParameter("enStat");
			String careerCounseling = request.getParameter("careerCounseling"); 
			String jobSearching = request.getParameter("jobSearching");
			String resume = request.getParameter("resume");
			String coverLetter = request.getParameter("coverLetter");
			String mockInterview = request.getParameter("mockInterview");
			String internshipInformation = request.getParameter("internshipInformation"); 
			String transitionToKean = request.getParameter("transitionToKean");
			String sophomoreSeminar = request.getParameter("sophomoreSeminar");
			String juniorSeminar = request.getParameter("juniorSeminar");
			String seniorSeminar = request.getParameter("seniorSeminar");
			String career = request.getParameter("career");
			String copsTest = request.getParameter("copsTest");
			String myersbriggs = request.getParameter("myersBriggs");
			String approved = "False";
			String query = "insert into student_form (ID,Name,Email,Phone_Number,Arrival,VisitType,EnrollmentTime,EnrollmentStatus,Career_Counseling,Job_Searching,Resume,Cover_Letter,Mock_Interview,Internship_Information,Transition_to_Kean,Sophomore_Seminar,Junior_Seminar,Senior_Seminar,Career,Cops_Test,Myers_Briggs,Approved,Semester)"
					+ " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
			Connection conn = database.getDataSource().getConnection(); //create connection
			System.out.println("connected");
			PreparedStatement insert = conn.prepareStatement(query);
			insert.setString(1, id);
			insert.setString(2, name);
			insert.setString(3,email);
			insert.setString(4, phoneNumber);
			insert.setString(5, arrival);
			insert.setString(6, visitType);
			insert.setString(7, enTime);
			insert.setString(8, enStat);
			insert.setString(9, careerCounseling);
			insert.setString(10, jobSearching);
			insert.setString(11, resume);
			insert.setString(12, coverLetter);
			insert.setString(13, mockInterview);
			insert.setString(14, internshipInformation);
			insert.setString(15, transitionToKean);
			insert.setString(16, sophomoreSeminar);
			insert.setString(17, juniorSeminar);
			insert.setString(18, seniorSeminar);
			insert.setString(19, career);
			insert.setString(20, copsTest);
			insert.setString(21, myersbriggs);
			insert.setString(22, approved);
			
			
		
			//Acquire Semester (Michael's edit starts here)
			String extract_year_query = "select extract(year from Date) as DateYear,extract(month from Date) as DateMonth,extract(day from Date) as DateDay from student_form where Row_Index = (select max(Row_Index) from student_form)";
			
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(extract_year_query);
			
			if (!rs.next() ) {
			    System.out.println("no data present in result set");
			} 
			
			int year = rs.getInt("DateYear");
			int month = rs.getInt("DateMonth");
			int day = rs.getInt("DateDay");
			System.out.println("Year , Month and Day is " + year + " " +  month + " " + day);
			String semester = "null";
			
			if(month >= 1 & month <= 5){
				semester = "Spring";
			}else if (month >=9 & month <= 12){
				semester = "Fall";
			}
			
			semester +="/" ;
			semester += Integer.toString(year);
			System.out.println("The semester is " + semester);
			
		    
			insert.setString(23, semester);// End of Michael's edit edit
			
			insert.execute();
			System.out.println("Query Executed, ");
			
	
	
			
			request.setAttribute("id", id);
			request.setAttribute("name", name);
			request.setAttribute("email", email);
			request.setAttribute("phoneNumber", phoneNumber);
			request.setAttribute("arrival", arrival);
			request.setAttribute("enTime", enTime);
			request.setAttribute("enStat", enStat);
			request.setAttribute("careerCounseling",careerCounseling);
			request.setAttribute("jobSearching",jobSearching);
			request.setAttribute("resume",resume);
			request.setAttribute("coverLetter",coverLetter);
			request.setAttribute("mockInterview",mockInterview);
			request.setAttribute("internshipInformation",internshipInformation);
			request.setAttribute("transitionToKean",transitionToKean);
			request.setAttribute("sophomoreSeminar",sophomoreSeminar);
			request.setAttribute("juniorSeminar",juniorSeminar);
			request.setAttribute("seniorSeminar",seniorSeminar);
			request.setAttribute("career", career);
			request.setAttribute("copsTest",copsTest);
			request.setAttribute("myersbriggs",myersbriggs);
			request.setAttribute("Approved", approved);
			insert.close();
			conn.close();
		}
		catch(Exception e)
		{
			request.getRequestDispatcher("/View/failedSignIn.jsp").forward(request, response);
		}
		request.getRequestDispatcher("/View/successfulSignIn.jsp").forward(request, response);
	}

}
