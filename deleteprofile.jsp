<%@page import="java.sql.*,javax.sql.*,java.io.*"%>
<%! PreparedStatement ps;
	ResultSet rs;
	int rows;
%>
<%
	String uname=request.getParameter("uname");
	String uname1=uname;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conDummy=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase","root","");

	ps=conMain.prepareStatement("select * from maintable where Email=?");
	ps.setString(1,uname);
	rs=ps.executeQuery();
	rs.next();
	
	ps=conMain.prepareStatement("Delete from maintable where Email=?");
	ps.setString(1,uname);
	int i=ps.executeUpdate();
	
	out.println("<script>alert('Your Profile has been Deleted Successfully! Thank You for using our Services')</script>");
	out.println("<script>document.location.href='index.html'</script>");
%>