<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Register</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/loder.png">

<!-- CSS here -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/slicknav.css">
<link rel="stylesheet" href="assets/css/flaticon.css">
<link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
<link rel="stylesheet" href="assets/css/gijgo.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/animated-headline.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/nice-select.css">
<link rel="stylesheet" href="assets/css/style.css">
<style type="text/css">
            
              th, td { 
                width:150px; 
               
                padding:5px 
              
            } 
            

</style>
<!-- <script type="text/javascript">


var r=false;	
function valid()
{
	fn=document.getElementById("fn").value;
	ln=document.getElementById("ln").value;
	uid=document.getElementById('uid').value;
	pwd=document.getElementById('pwd').value;
	cpwd=document.getElementById('cpwd').value;
	email=document.getElementById("email");
	mob=document.getElementById("mob").value;
	pin=document.getElementById("pin").value;
	if((fn=="")||(ln=="")||(uid=="")||(pwd=="")||(cpwd=="")||(email=="")||(mob=="")||(pin==""))
	{	last.innerText="Enter the data to all the fields ";
		r=false;
	}
	else
		{ 
		last.innerText=""; r=true;
		}
		return r;
}		
function check()
{
	fname=document.getElementById("fn").value;
	lname=document.getElementById("ln").value;
	if((fname=="")||(lname==""))
		f2.innerText="Enter Ur Name";
	else
		f2.innerText="";
}

function rand()
{
w.innerText=Math.floor(Math.random()*1521342);
}
function validuser()
{
	str=document.getElementById('uid').value;
	alert(str);
	re2= RegExp("[\d]");
	re1= RegExp("[^A-Z]");
	
	if(str=="")
		f3.innerText="Enter user_id";
	else if(str.length<8)
			f3.innerText="Enter more than 8 characters";
	else if(re2.exec(str))
			f3.innerText="String contains Numerical values";
	else if(!re1.exec(str))
			f3.innerText="Capitals are not accepted";
	else f3.innerText="";
	
}

function password()
{
	str=document.getElementById('pwd').value;
	str1=document.getElementById('cpwd').value;
	re1=RegExp("/^A-Z/");
	re2=RegExp("\d");
	if(str=="")
		f4.innerText="Enter password";
	else if(str.length<8)
		f4.innerText="Password must be  more than 8 characters";
	else if(re2.exec(str))
		f4.innerText="password contains numeric values";
	else if(str1=="")
		f4.innerText="Enter Confrim password";
	else if(str1.length<6)
		f4.innerText="Confirm Password must be more than 6 characters";
	else if(re2.exec(str1))
		f4.innerText="confirm password contains numeric values";
	else if(str!=str1)
		f4.innerText="Passwords Mismatch, Retype Passwords";
	else f4.innerText="";
}
function echeck(str) {

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   f8.innerText="Invalid E-mail ID";

		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   f8.innerText="Invalid E-mail ID";

		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    f8.innerText="Invalid E-mail ID";

		}

		 if (str.indexOf(at,(lat+1))!=-1){
		f8.innerText="Invalid E-mail ID";

		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		 f8.innerText="Invalid E-mail ID";

		 }

		 if (str.indexOf(dot,(lat+2))==-1){
f8.innerText="Invalid E-mail ID";

		 }
		
		 if (str.indexOf(" ")!=-1){
f8.innerText="Invalid E-mail ID";

		 }

 		
	}

function ValidateForm(){
	var emailID=document.getElementById("email");
	
	if ((emailID.value==null)||(emailID.value=="")){
f8.innerText="Please Enter your Email ID";
		}
	if (echeck(emailID.value)==false){
		f8.innerText="Valid E-mail";
		}
	return true
 }
 
 function mobile()
 {	//var e= ^(A-Z|a-z);
 	mob=document.getElementById("mob").value;
                       // alert(mob);
 	if(mob=="")
 		f9.innerTeext="Enter ur mobile no.";
 	//else if(mob.exec(e))
 	//	f9.innerText="Strings not allowed";
 	else if(mob.length<9)
 		f9.innerText="No. should be 10digits";
 	else f9.innerText="";
 }             


				</script> -->

</head>
<body>
	<!-- ? Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="assets/img/logo/loder.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Preloader Start -->
	<header>
		<!-- Header Start -->
		<div class="header-area header-transparent">
			<div class="main-header header-sticky">
				<div class="container-fluid">
					<div
						class="menu-wrapper d-flex align-items-center justify-content-between">
						<!-- Logo -->
						<div class="logo">
							<a href="index.html"><img src="assets/img/logo/logo.png"
								alt=""></a>
						</div>
						<!-- Main-menu -->
						<div class="main-menu f-right d-none d-lg-block">
							<nav>
								<ul id="navigation">
									   <li><a href="index.html">Home</a></li>
                                    <li><a href="torusim.jsp">Tourism</a></li> 
                                    <li><a href="student.jsp">Students</a></li>
                                    <li><a href="jobSeeker.jsp">Job Seekers</a></li>
                                    <li><a href="business.jsp">Business News</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                    
                                </ul>
                            </nav>
                        </div>  
                        <div class="header-btns d-none d-lg-block f-right">
                            <a href="login.jsp" class="mr-40"><i class="ti-user"></i> Log in</a>
                            
                        </div>

						<!-- Mobile Menu -->
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header End -->
	</header>
	<main>
		<!--? Hero Area Start-->
		<div class="slider-area hero-bg1 hero-overly">
			<div
				class="single-slider hero-overly  slider-height1 d-flex align-items-center">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-xl-10 col-lg-10">
							<!-- Hero Caption -->
							<div class="hero__caption pt-100">
								<h1>SMART CITY VIZAG</h1>
								<p>Let's explore the City Of Destiny for you.</p>
							</div>
						</div>
					</div>

				</div>

			</div>

		</div>
		<br>
		<br>
		<h3>${message}</h3>
		<div class="container-fluid" align="center" style="width: 40%;">
			<div class="jumbotron">
				
				<form action="RegisterServlet" method="post">
				<h1>Registration</h1><br>
				<table style="margin-left: 108px;">
				
				<tr>
						<th align="right">First Name:</th>
						<td align="left"><input type="text" name="fn" ></td>
						
				</tr>
				<tr>
						<th align="right">Last Name:</th>
						<td align="left"><input type="text" name="ln" onblur="check()"></td>
						<td><p id="f2" style="font-style: italic;color: fuchsia;"></p></td><td></td>
				</tr>
				<tr>
					<th align="right">E-mail: </th>
					<td><input type="text" name="email" onblur="ValidateForm()"></td>
				</tr>
				<tr>
						<th align="right">password: </th>
						<td align="left"><input type="password" name="pwd" ></td>
						<td><p id="f4" style="font-style: italic;color: fuchsia;"></p></td><td></td>
				</tr>
				<tr>
						<th align="right">Confirm password:</th>
						<td align="left"><input type="password" name="cpwd" onblur="password()" ></td>
						<td><p id="f5" style="font-style: italic;color: fuchsia;"></p></td><td></td>
				</tr>
				<tr>
						<th align="right">Gender: </th>
						<td><input type="Radio" name="gender" value="male" checked>Male&nbsp; <input type="Radio" value="female" name="gender">Female</td>
				</tr>
						<tr>
							<th align="right">User Type:</th>

							<td><select name="userType">
									<option selected="selected">Student</option>
									<option>Tourist</option>
									<option>JobSeeker</option>
									<option>BusinessPerson</option>
							</select></td>

						</tr>
						
				<tr>
					<th align="right">Mobile No:</th>
					<td><input type="text" name="mob" onblur="mobile()"></td>
					
				</tr>
				<tr>
					<th align="right">Country</th>
					<td>
						<input type="text" name="country" placeholder="Enter Your Country"/>
					</td>
				</tr>
				<tr>
					<th align="right"> City</th>
					<td>
					<input type="text" name="city" placeholder="Enter Your City"/>
					</td>	
				</tr>
				
				
				<tr>
					<td align="right"><input type="reset" name="reset" value="Reset">&nbsp;&nbsp;
					<td align="left"><input type="submit" name="submit" value="Submit"></td>
					
				</tr>
		</table>
</form>



			</div>
		</div>



	</main>
	<footer>
		<div class="footer-wrapper pt-30">
			<!-- footer-bottom -->
			<div class="footer-bottom-area">
				<div class="container">
					<div class="footer-border">
						<div class="row d-flex justify-content-between align-items-center">
							<div class="col-xl-10 col-lg-9 ">
								<div class="footer-copy-right">
									<p align="center">Copyright &copy;</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!-- Scroll Up -->
	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>

	<!-- JS here -->

	<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="./assets/js/popper.min.js"></script>
	<script src="./assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="./assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="./assets/js/owl.carousel.min.js"></script>
	<script src="./assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script src="./assets/js/wow.min.js"></script>
	<script src="./assets/js/animated.headline.js"></script>
	<script src="./assets/js/jquery.magnific-popup.js"></script>

	<!-- Date Picker -->
	<script src="./assets/js/gijgo.min.js"></script>
	<!-- Nice-select, sticky -->
	<script src="./assets/js/jquery.nice-select.min.js"></script>
	<script src="./assets/js/jquery.sticky.js"></script>
	<!-- Progress -->
	<script src="./assets/js/jquery.barfiller.js"></script>

	<!-- counter , waypoint,Hover Direction -->
	<script src="./assets/js/jquery.counterup.min.js"></script>
	<script src="./assets/js/waypoints.min.js"></script>
	<script src="./assets/js/jquery.countdown.min.js"></script>
	<script src="./assets/js/hover-direction-snake.min.js"></script>

	<!-- contact js -->
	<script src="./assets/js/contact.js"></script>
	<script src="./assets/js/jquery.form.js"></script>
	<script src="./assets/js/jquery.validate.min.js"></script>
	<script src="./assets/js/mail-script.js"></script>
	<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="./assets/js/plugins.js"></script>
	<script src="./assets/js/main.js"></script>



</body>
</html>

		