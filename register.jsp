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

<!DOCTYPE html>
<html lang="en">

<head>
  <title>Academics &mdash; Website by Colorlib</title>
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

<script>

<!--########################Validate Password######################-->
	function validatePass1(ch)
{
	with(document.forms.SignUpForm)
	{
		if(ch==2)
		{
			if(pass.value.length>=4)
			{
			}
			else
			{
				alert("Password 1 must be at least four characters");
				pass.focus();	
			}
		}
		else
		{
			<!--validateDLNo();-->
		}
	}
}

<!--########################Validate Confirm Password######################-->
function validatePass2(ch)
{
	with(document.forms.SignUpForm)
	{
		if(ch==1)
		{	
			if(pass.value.length<4)
			{
				pass.focus();
				alert("Enter Pass1 first");
			}
			else
			{
			
			}
		}
		else
		{
			if(pass.value==pass2.value)
			{
			}
			else
			{
				pass2.value="";
				alert("Password Do not match");
				pass2.focus();
			}
		}
	}
}


</script>

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
              <h2 class="mb-0">Register</h2>
              <b><x style="color:#f1c40f;"><%out.println(message);%></x></b><p>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="index.html">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">Register</span>
      </div>
    </div>
<form class="form-container" name="SignUpForm" action="reg.jsp" method="post"> 
    <div class="site-section">
        <div class="container">


            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="row">
                        <div class="col-md-12 form-group">
						
                            <label for="username">First Name</label>
                            <input type="text" id="firstname" name="firstname" class="form-control form-control-lg" required>
                        </div>
						<div class="col-md-12 form-group">
                            <label for="username">Middle Name</label>
                            <input type="text" id="middlename" name="middlename" class="form-control form-control-lg" required>
                        </div>
						<div class="col-md-12 form-group">
                            <label for="username">Surname</label>
                            <input type="text" id="surname" name="surname" class="form-control form-control-lg" required>
                        </div>
						<div class="col-md-12 form-group">
						<label for="browser">Dept:</label>
							<input list="browsers" name="dept" id="browser" class="form-control form-control-lg" required>
							<datalist id="browsers">
							<option value="CSE">
							</datalist>
						</div>
						
							<div class="col-md-12 form-group">
						<label for="br">Year of study</label>
  <input list="bro" name="YOS" id="bro" class="form-control form-control-lg" required>
  <datalist id="bro">
    <option value="F.Y">
    <option value="S.Y">
    <option value="T.Y">
    <option value="BTech">
  </datalist>
  </div>
  
  						<div class="col-md-12 form-group">
						<label for="br">Year</label>
  <input list="broh" name="year" id="br" class="form-control form-control-lg" required>
  <datalist id="broh">
    <option value="2020-2021">
    <option value="2019-2020">
  </datalist>
  </div>
						
						
						<div class="col-md-12 form-group">
						<label for="radio">Choose Gender</label><br><br>
						<label for="radio">&nbsp Male</label></input> 
			<input type="radio"  name="gender" value="Male" class="form-control form-control-lg" required>
			<label for="radio">&nbsp Female</label></input>
			<input type="radio"  name="gender" value="Female" class="form-control form-control-lg" required>
						</div>
					
  

						
                        <div class="col-md-12 form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" id="email" class="form-control form-control-lg" required>
                        </div>
                        <div class="col-md-12 form-group">
                            <label for="pass">Password</label>
                            <input type="password" name="pass" id="pass" class="form-control form-control-lg" onfocus="validatePass1(1)" onchange="validatePass1(2)" required>
                        </div>
                        <div class="col-md-12 form-group">
                            <label for="pword2">Re-type Password</label>
                            <input type="password" name="pass2" id="pass2" class="form-control form-control-lg" onfocus="validatePass2(1)" onchange="validatePass2(2)"required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <input type="submit" value="Register" class="btn btn-primary btn-lg px-5">
                        </div>
                    </div>
                </div>
            </div>
            

          
        </div>
    </div>

    </form>

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
                    </script> Made with <i class="icon-heart" aria-hidden="true"></i>
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
