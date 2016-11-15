package com.careerServices.MainApp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ServletShowSemesterTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletShowSemesterTable() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		DB d = new DB();
		String sem_input = request.getParameter("semester");
		System.out.println(sem_input);
		try
		{
			Connection conn = d.getDataSource().getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from student_form where Semester = '" + sem_input + "'");
			ArrayList<ModelSearchResults> list = new ArrayList<ModelSearchResults>(); 
			
			
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
				msr.setSemester(rs.getString(25));
				msr.setComment(rs.getString(26));
				list.add(msr);
			}
			
			stmt.close();
			conn.close();
			rs.close();
			request.setAttribute("list", list);
			request.getRequestDispatcher("/View/showTable2.jsp").forward(request, response);
		}
		catch(SQLException e) 
		{
		
		}
		
    }
}


