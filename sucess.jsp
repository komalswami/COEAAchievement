<%
	String message;
	try
	{
		message=request.getParameter("message");
		if(message.equals("null"))
		{
			message="";
		}
	}
	catch(Exception e)
	{
		message="";
	}
	
%>
<html>
<head>
<title>sucess page</title>
</head>
<body>
<h1><%=message%></h1>
<form>
	<input type="button" value="Go back!" onclick="history.back()">
</form>
</body>
</html>