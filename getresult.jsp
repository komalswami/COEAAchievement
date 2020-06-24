
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>Hey there !!!</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">

  <link rel="stylesheet" href="css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="css/aos.css">
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="css/style.css">



</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>


    <div class="py-2 bg-light">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-9 d-none d-lg-block">
           <img src="images/horilogo.png" alt="horilogo" width="100%" height="100">
          </div>
          <div class="col-lg-3 text-right">
            <a href="login.jsp" class="small mr-3"><span class="icon-unlock-alt"></span> Log In</a>
            <a href="register.jsp" class="small btn btn-primary px-4 py-2 rounded-0"><span class="icon-users"></span> Register</a>
          </div>
        </div>
      </div>
    </div>
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="d-flex align-items-center">
          <div class="site-logo">
            <a href="index.html" class="d-block">
              <img src="images/logo.jpg" alt="Image" class="img-fluid">
            </a>
          </div>
          <div class="mr-auto">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li>
                  <a href="index.html" class="nav-link text-left">Home</a>
                </li>
                <li class="has-children">
                  <a href="about.html" class="nav-link text-left">About Us</a>
                 
                </li>
                <li>
                    <a href="contact.html" class="nav-link text-left">Contact</a>
                  </li>
              </ul>                                                                                                                                                                                                                                                                                          </ul>
            </nav>

          </div>
          <div class="ml-auto">
            <div class="social-wrap">
              <a href="#"><span class="icon-facebook"></span></a>
              <a href="#"><span class="icon-twitter"></span></a>
              <a href="#"><span class="icon-linkedin"></span></a>

              <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
                class="icon-menu h3"></span></a>
            </div>
          </div>
         
        </div>
      </div>

    </header>

    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end justify-content-center text-center">
            <div class="col-lg-7">
              <h2 class="mb-0">Records</h2>
			  <b><x style="color:#f1c40f;"></x></b><p>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">

      
    </div>

    <div class="site-section">
        <div class="container">

			
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="row">
				<table align="center" cellpadding="6" cellspacing="7" border="4" style="width:100%">
					<tr>
					<th>Name</th>
					<th>Year Of Study</th>
					<th>Email</th>
					<th>count</th>
					</tr>						
				<%
				
				Connection conn=null;
				Statement st,stt;
				ResultSet rs,rss;
				PreparedStatement ps;
				String param=request.getParameter("output");
					try {
	Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase", "root", "");
	
	String gf="SELECT maintable.fullname,maintable.YOS, datatable.email,COUNT(*) FROM maintable INNER JOIN datatable WHERE maintable.email=datatable.email AND maintable.gender='Female' GROUP BY datatable.email";
	String gm="SELECT maintable.fullname,maintable.YOS, datatable.email,COUNT(*) FROM maintable INNER JOIN datatable WHERE maintable.email=datatable.email AND maintable.gender='Male' GROUP BY datatable.email";
	
	String qyt="SELECT maintable.fullname,maintable.YOS, datatable.email,COUNT(*) FROM maintable INNER JOIN datatable WHERE maintable.email=datatable.email AND maintable.year='2020-2021' GROUP BY datatable.email";
	String qyo="SELECT maintable.fullname,maintable.YOS, datatable.email,COUNT(*) FROM maintable INNER JOIN datatable WHERE maintable.email=datatable.email AND maintable.year='2019-2020' GROUP BY datatable.email";
	
	String qfy="SELECT maintable.fullname,maintable.YOS, datatable.email,COUNT(*) FROM maintable INNER JOIN datatable WHERE maintable.email=datatable.email AND maintable.YOS='F.Y' GROUP BY datatable.email";
	String qsy="SELECT maintable.fullname,maintable.YOS, datatable.email,COUNT(*) FROM maintable INNER JOIN datatable WHERE maintable.email=datatable.email AND maintable.YOS='S.Y' GROUP BY datatable.email";
	String qty="SELECT maintable.fullname,maintable.YOS, datatable.email,COUNT(*) FROM maintable INNER JOIN datatable WHERE maintable.email=datatable.email AND maintable.YOS='T.Y' GROUP BY datatable.email";
	String qbtech="SELECT maintable.fullname,maintable.YOS, datatable.email,COUNT(*) FROM maintable INNER JOIN datatable WHERE maintable.email=datatable.email AND maintable.YOS='BTech' GROUP BY datatable.email";
	
	
	
	
	if(param.equals("Male")) {
	st = conn.createStatement();
	rs = st.executeQuery(gm);
	while (rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getInt(4)%></td>
		</tr>
		
		<%


	}
	
	}
	
	else if(param.equals("Female")) {
	st = conn.createStatement();
	rs = st.executeQuery(gf);
	while (rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getInt(4)%></td>
		</tr>
		
		<%


	}
	
	}
	
	else if(param.equals("S.Y")) {
	st = conn.createStatement();
	rs = st.executeQuery(qsy);
	while (rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getInt(4)%></td>
		</tr>
		
		<%


	}
	
	}
	
	else if(param.equals("T.Y")) {
	st = conn.createStatement();
	rs = st.executeQuery(qty);
	while (rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getInt(4)%></td>
		</tr>
		
		<%


	}
	
	}
	
	else if(param.equals("BTech")) {
	st = conn.createStatement();
	rs = st.executeQuery(qbtech);
	while (rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getInt(4)%></td>
		</tr>
		
		<%


	}
	
	}
	
	else if(param.equals("2020-2021")) {
	st = conn.createStatement();
	rs = st.executeQuery(qyt);
	while (rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getInt(4)%></td>
		</tr>
		
		<%


	}
	
	}
	
	else if(param.equals("2019-2020")) {
	st = conn.createStatement();
	rs = st.executeQuery(qyo);
	while (rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getInt(4)%></td>
		</tr>
		
		<%


	}
	
	}
	else
	{
		out.println("something went wrong...");
	}
%>
</table>
<%
					}
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
				
				%>	
                    <div class="row">
                        <div class="col-12">
                            
                        </div>
                    </div>
                </div>
            </div>
            
		
          
        </div>
    </div>

    

    

  <!-- .site-wrap -->

  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#51be78"/></svg></div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/jquery.mb.YTPlayer.min.js"></script>




  <script src="js/main.js"></script>

</body>

</html>