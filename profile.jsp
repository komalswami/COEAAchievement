<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html;charset=UTF-8" %>

<%
		String message=request.getParameter("message");
		if(message.equals("null"))
		{
			message="";
		}
		
		String fullname=request.getParameter("fullname");
		String YOS=request.getParameter("YOS");
		String dept=request.getParameter("dept");
		String email=request.getParameter("email");
		session.setAttribute("uname",email); 
		session.setAttribute("fullname",fullname); 
%>
<head>
  <title>profile</title>
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

<style>
.cities {
  background-color: black;
  color: white;
  margin: 20px;
  padding: 20px;
}
</style>

</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<script>
			function confirmation()
			{
				var uname="<%=email%>";
				if(confirm("Do you really Want to Delete Profile?"))
				{
					document.location.href='deleterecord.jsp?uname='+uname;
				}
			}
			function confirmLogout()
			{
				if(confirm("Are you sure want to logout"))
				{
					document.location.href='Logout.jsp';
				}
			}
			

		</script>
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
           
          </div>
          
        </div>
      </div>
    </div>
   

    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end justify-content-center text-center">
            <div class="col-lg-7">
              <h2 class="mb-0">Hey there....!!!</h2>
              <p>Welcome to your profile!!!</p>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
      
      </div>
    </div>

    <div class="site-section">
        <div class="container">
		<p>Personal Information:</p>
		       <div class="cities">
					
					<h4><%out.println(fullname);%></h4>
					<h4><%out.println(email);%></h4>
					<h4><%out.println(YOS+","+dept);%></h4>
				
				</div> 
	


  
 <form action = "fileupload.jsp" name="form2" method = "post" enctype = "multipart/form-data">

<div class="cities">
<h4>upload Certificate:</h4> <br>
<input type = "file" name = "file" size = "50" />
<button type="submit">add certification!</button>
</div>
</form>


      
  
                    &nbsp &nbsp &nbsp &nbsp <input type="button" value="Delete Profile" class="btn btn-primary btn-lg px-5" onclick="confirmation()">
					&nbsp<input type="button" value="Log out" class="btn btn-primary btn-lg px-5" onclick="confirmLogout()">
            </div>
    </div>
	

    <div class="footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <p class="mb-4"><img src="images/logo.png" alt="Image" class="img-fluid"></p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae nemo minima qui dolor, iusto iure.</p>  
            <p><a href="#">Learn More</a></p>
          </div>
          <div class="col-lg-3">
            <h3 class="footer-heading"><span>Our Campus</span></h3>
            <ul class="list-unstyled">
                <li><a href="#">Acedemic</a></li>
                <li><a href="#">News</a></li>
                <li><a href="#">Our Interns</a></li>
                <li><a href="#">Our Leadership</a></li>
                <li><a href="#">Careers</a></li>
                <li><a href="#">Human Resources</a></li>
            </ul>
          </div>
          <div class="col-lg-3">
              <h3 class="footer-heading"><span>Our Courses</span></h3>
              <ul class="list-unstyled">
                  <li><a href="#">Math</a></li>
                  <li><a href="#">Science &amp; Engineering</a></li>
                  <li><a href="#">Arts &amp; Humanities</a></li>
                  <li><a href="#">Economics &amp; Finance</a></li>
                  <li><a href="#">Business Administration</a></li>
                  <li><a href="#">Computer Science</a></li>
              </ul>
          </div>
          <div class="col-lg-3">
              <h3 class="footer-heading"><span>Contact</span></h3>
              <ul class="list-unstyled">
                  <li><a href="#">Help Center</a></li>
                  <li><a href="#">Support Community</a></li>
                  <li><a href="#">Press</a></li>
                  <li><a href="#">Share Your Story</a></li>
                  <li><a href="#">Our Supporters</a></li>
              </ul>
          </div>
        </div>

        <div class="row">
          <div class="col-12">
            <div class="copyright">
                <p>
              </script> Made with <i class="icon-heart" aria-hidden="true"></i> by komal!
                    </p>
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