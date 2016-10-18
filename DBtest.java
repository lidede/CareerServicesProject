package com.careerServices.MainApp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import com.mysql.cj.jdbc.MysqlDataSource;

public class DBtest 
{
	public static void main(String[] args)
	{
		MysqlDataSource dataSource = new MysqlDataSource();
		dataSource.setUser("root");
		dataSource.setPassword("");
		dataSource.setServerName("localhost");
		try
		{
			Connection conn = dataSource.getConnection();
			System.out.println("connected");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT ID FROM USERS");
			rs.close();
			stmt.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
