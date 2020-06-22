<%@page import="java.sql.*,javax.sql.*,java.io.*"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%! PreparedStatement ps;
	ResultSet rs;
%>

<%
String first_name=request.getParameter("firstname");
String mid_name=request.getParameter("middlename");
String last_name=request.getParameter("surname");
String gender=request.getParameter("gender");
String YOS=request.getParameter("YOS");
String year=request.getParameter("year");
String dept=request.getParameter("dept");
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String pass2=request.getParameter("pass2");




	String strGender;
	if(gender.equals("Female"))
	{
		strGender="Ms. ";
	}
	else
	{
		strGender="Mr. ";
	}
String fullname=strGender+first_name+" "+mid_name+" "+last_name;
if(pass.equals(pass2))
{
	try {
	Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname", "root", "password");
	
	
	ps=conn.prepareStatement("insert into tablename(fullname,YOS,year,dept,gender,email,pass) values(?,?,?,?,?,?,?)");
				
				ps.setString(1,fullname);
				ps.setString(2,YOS);
				ps.setString(3,year);
				ps.setString(4,dept);
				ps.setString(5,gender);
				ps.setString(6,email);
				ps.setString(7,pass);
				
				int rows=ps.executeUpdate();			
				if(rows>0)
				{
			
					%>
					<jsp:forward page="login.jsp">
					<jsp:param name="message" value="sign up successful"/>
					</jsp:forward>
				<%}
	}
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
}
%>
