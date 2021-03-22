<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>SMART CITY</title>
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
							<div class="dropdown">
							    <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">Login To
							    </button>
							    <div class="dropdown-menu" style="width:-webkit-fill-available; background-color: #3B2774;" >
							     <a  style="font-size: initial;  margin-left: 47px;" href="http://localhost:8080/SmartCity/login.jsp">Login</a><br>
							      <a  style="font-size: initial;  margin-left: 29px;" href="http://localhost:8080/SmartCity/admin.html">Admin Login</a>
							      
							    </div>
							  </div>
                           
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
		<div class="container-fluid" align="center" style="width: 40%;">
			<div class="jumbotron">
				<h3>${message}</h3>
				<form action="LoginServlet" method="post">
					<h2 align="center">Login</h2>
					<hr>
					<br>
					<div align="center">
						<p align="left" style="margin-left: 169px;">UserName</p>
						<input name="Email" type="text" placeholder="Please enter UserId" /><br>
						<br>
						<p align="left" style="margin-left: 169px;">Password</p>
						<input name="password" type="password"
							placeholder="enter your password" /><br>
						<br>

					</div>

					<input type="submit" class="btn btn-danger" value="Login"
						id="login"> <a href="register.jsp" style="color: red;">or
						Register</a>
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