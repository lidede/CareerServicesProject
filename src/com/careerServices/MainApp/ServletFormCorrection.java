package com.careerServices.MainApp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletFormCorrection extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    public ServletFormCorrection()
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
		ArrayList<ModelSearchResults> results = new ArrayList<ModelSearchResults>();
		String selection = request.getParameter("UorA");
		int indexedItem = Integer.parseInt(request.getParameter("itemToCorrect"));
		System.out.println(selection+" "+indexedItem);
		try
		{
			Connection conn = database.getDataSource().getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM student_form WHERE Row_Index = " + indexedItem);
			while(rs.next())
			{
				ModelSearchResults msr = new ModelSearchResults();
				msr.setDbId(rs.getString(1));
				msr.setID(rs.getString(2));
				msr.setName(rs.getString(3));
				msr.setEmail(rs.getString(4));
				msr.setPhone_Number(rs.getString(5));
				msr.setArrival(rs.getString(6));
				msr.setVisitType(rs.getString(7));
				msr.setEnrollmentTime(rs.getString(8));
				msr.setEnrollmentStatus(rs.getString(9));
				msr.setCarrer_Counseling(rs.getString(10));
				msr.setJob_Searching(rs.getString(11));
				msr.setResume(rs.getString(12));
				msr.setCover_Letter(rs.getString(13));
				msr.setMock_Interview(rs.getString(14));
				msr.setInternship_Information(rs.getString(15));
				msr.setTransition_To_Kean(rs.getString(16));
				msr.setSophomore_Seminar(rs.getString(17));
				msr.setJunior_Seminar(rs.getString(18));
				msr.setSenior_Seminar(rs.getString(19));
				msr.setCareer(rs.getString(20));
				msr.setCops_Test(rs.getString(21));
				msr.setMyers_Briggs(rs.getString(22));
				msr.setApprove("True");
				
				results.add(msr);
			}
			stmt.close();
			conn.close();
			rs.close();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		if(selection.equals("Approve"))
		{
			try
			{
				ModelSearchResults msr = results.get(0);
				Connection conn = database.getDataSource().getConnection();
				Statement stmt = conn.createStatement();
				stmt.executeUpdate("UPDATE student_form " + "SET Approved = " + msr.getApprove() + " WHERE Row_Index = "+indexedItem);
				conn.close();
				stmt.close();
				request.getRequestDispatcher("View/approvedAppointment.jsp").forward(request, response);
				//Row_Index="+msr.getDbId()+",ID="+msr.getID()+",Name="+msr.getName()+",Email="+msr.getEmail()+",Phone_Number="+msr.getPhone_Number()+",Arrival="+msr.getArrival()+",VisitType="+msr.getVisitType()+",EnrollmentTime="+msr.getEnrollmentTime()+",EnrollmentStatus="+msr.getEnrollmentStatus()+",Career_Counseling="+msr.getCarrer_Counseling()+",Job_Searching="+msr.getJob_Searching()+",Resume="+msr.getResume()+",Cover_Letter="+msr.getCover_Letter()+",Mock_Interview="+msr.getMock_Interview()+",Internship_Information="+msr.getInternship_Information()+",Transition_to_Kean="+msr.getTransition_To_Kean()+",Sophmore_Seminar="+msr.getSophomore_Seminar()+",Junior_Seminar="+msr.getJunior_Seminar()+",Senior_Seminar="+msr.getSenior_Seminar()+",Career="+msr.getCareer()+",Cops_Test="+msr.getCops_Test()+",Myers_Briggs="+msr.getMyers_Briggs()+",
			} 
			catch (SQLException e)
			{
				e.printStackTrace();
			}
			
		}
		else if(selection.equals("Update"))
		{
			request.setAttribute("index", request.getParameter("itemToCorrect"));
			request.getRequestDispatcher("View/Update.jsp").forward(request, response);	
		}
		else if(selection.equals("postupdate"))
		{
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
			String comment = request.getParameter("comment");
			try
			{
				String query = "UPDATE student_form " + 
				"SET Career_Counseling= '" +careerCounseling+ "', "
						+ "Job_Searching='"+jobSearching+"', "
						+ "Resume='"+resume+"', "
						+ "Cover_Letter='"+coverLetter+"', "
						+ "Mock_Interview='"+mockInterview+"', "
						+ "Internship_Information='"+internshipInformation+"', "
						+ "Transition_to_Kean='"+transitionToKean+"', "
						+ "Sophomore_Seminar='"+sophomoreSeminar+"', "
						+ "Junior_Seminar='"+juniorSeminar+"', "
						+ "Senior_Seminar='"+seniorSeminar+"', "
						+ "Career='"+career+"', "
						+ "Cops_Test='"+copsTest+"', "
						+ "comment='"+comment+"', "
						+ "Myers_Briggs='"+myersbriggs+"' WHERE Row_Index = "+indexedItem;
				System.out.println(query);
				Connection conn = database.getDataSource().getConnection();
				Statement stmt = conn.createStatement();
				stmt.executeUpdate(query);
				conn.close();
				stmt.close();
				request.getRequestDispatcher("View/approvedAppointment.jsp").forward(request, response);
				//Row_Index="+msr.getDbId()+",ID="+msr.getID()+",Name="+msr.getName()+",Email="+msr.getEmail()+",Phone_Number="+msr.getPhone_Number()+",Arrival="+msr.getArrival()+",VisitType="+msr.getVisitType()+",EnrollmentTime="+msr.getEnrollmentTime()+",EnrollmentStatus="+msr.getEnrollmentStatus()+",Career_Counseling="+msr.getCarrer_Counseling()+",Job_Searching="+msr.getJob_Searching()+",Resume="+msr.getResume()+",Cover_Letter="+msr.getCover_Letter()+",Mock_Interview="+msr.getMock_Interview()+",Internship_Information="+msr.getInternship_Information()+",Transition_to_Kean="+msr.getTransition_To_Kean()+",Sophmore_Seminar="+msr.getSophomore_Seminar()+",Junior_Seminar="+msr.getJunior_Seminar()+",Senior_Seminar="+msr.getSenior_Seminar()+",Career="+msr.getCareer()+",Cops_Test="+msr.getCops_Test()+",Myers_Briggs="+msr.getMyers_Briggs()+",
			} 
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}	
	}
}
