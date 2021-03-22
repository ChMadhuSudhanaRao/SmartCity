<!doctype html>
<%@page import="com.smartcity.DAOLayer.BusinessDAOLayer"%>
<%@page import="com.smartcity.model.Business"%>
<%@page import="com.smartcity.DAOLayer.JobSeekerDAOLayer"%>
<%@page import="com.smartcity.model.JobSeeker"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);

if(session.getAttribute("user")==null)
response.sendRedirect("login.jsp");

%>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Business PORTAL</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/loder.png">

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
	
	<style>
		hr{
			margin: 0px;
		}
	</style>
</head>
<body>
    <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
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
                    <div class="menu-wrapper d-flex align-items-center justify-content-between">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="index.html"><img src="assets/img/logo/logo.png" alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu f-right d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    
                                    <li><a href="torusim.jsp">Tourism</a></li> 
                                    <li><a href="student.jsp">Students</a></li>
                                    <li><a href="jobSeeker.jsp">Job Seekers</a></li>
                                    <li><a href="business.jsp">Business News</a></li>
                                    <li ><a href="UserLogOutController">Logout</a></li>
                                    
                                </ul>
                            </nav>
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
            <div class="single-slider hero-overly  slider-height1 d-flex align-items-center">
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
        <!--Hero Area End-->
        <!--? Popular Locations Start 01-->
        <div class="popular-location border-bottom section-padding40">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-80">
                            <h2>Explore City of Destiny</h2>
                            <p>Let's uncover the best places to visit near to you.</p>
                        </div><hr>
                    </div>
                </div>
                
                    
                   <%
                   	HttpSession se=request.getSession();
		  			
		  			if (se.getAttribute("user")!=null) {
		  				String x = (String)se.getAttribute("user");
		  				
		  				List<Business> blist=BusinessDAOLayer.newsList();
                        request.setAttribute("list", blist);
					}
		  			
                    	
                    %>   
                    <div class="container" style="margin: 10px;">                 
                    <div class="row" >
                    <c:forEach items="${list}" var="n">
                    
                       
	       <div class="card" style="width:500px; height:600px; margin-top: 10px">
	      <img src='<c:out value="data:image/jpg;base64,${n.base64Image}"> </c:out>' alt="" class="card-img-top" style="width:500px; height:250px;">
	      <div class="card-body" style="width:auto; height:auto;">
	     
	      <hr>
	        <h3 class="card-title" style=" font-weight: bold; margin-top: 25px; "><c:out value="${n.getHeading()}"></c:out></h3><br>
			<hr>
	        <span style="  "><c:out value="${n.getDescription()}"></c:out></span><br><br>
	  	
	        <a class="btn-danger"style=" font-weight: bold;" href='<c:out value="${n.getLink()}"></c:out>'>Source Link</a><br>  
	      </div>
	      
	     </div>
	     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                       
                       
                    </c:forEach>
                    </div>
                    
             </div>
            </div>
        </div>
        
        <!-- Popular Locations End -->
        <!--? Popular Directory Start -->
       
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
    <div id="back-top" >
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