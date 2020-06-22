
<%@ page import="java.sql.*"%>

<%! PreparedStatement ps;
	ResultSet rs;
%>
<%
	String uname=request.getParameter("username");
	String pass=request.getParameter("pass");
	
  try {
	Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase", "root", " ");
	
	ps=conn.prepareStatement("Select * from maintable where Email=?");
	ps.setString(1,uname);
	rs=ps.executeQuery();
	rs.next();
	String fullname=rs.getString(2);
		String dbpass=rs.getString(8);
		String YOS=rs.getString(3);
		String dept=rs.getString(5);
		String email=rs.getString(7);
		String name1=fullname;
		if(pass.equals(dbpass))
		{
			%>
				<jsp:forward page="profile.jsp">
				<jsp:param name="fullname" value="<%=name1%>"/>
				<jsp:param name="YOS" value="<%=YOS%>"/>
				<jsp:param name="dept" value="<%=dept%>"/>
				<jsp:param name="email" value="<%=email%>"/>
				<jsp:param name="message" value="login successful!!!" />
				</jsp:forward>
			<%
		}
		else
		{
			%>
				<jsp:forward page="login.jsp">
				<jsp:param name="message" value="Wrong Password"/>
				</jsp:forward>
			<%
		} 
	}
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
%>
