<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>SMART CITY- Admin</title>
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
	
	<script type="text/javascript">
function goto() {
    var selection = document.getElementById('link').value;
    if (selection != 'In where?') {
        window.location = "http://localhost:8080/SmartCity/"+selection;
       //alert("donorApproval.jsp" + selection);
    } else {
        alert("Error: You must pick something");
    }
}
</script>
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
                                    <li><a href="adminHome.jsp">Home</a></li>
                                    <li><a href="AddTourism.jsp">Tourism</a></li> 
                                    <li><a href="AddEduInstitue.jsp">Students</a></li>
                                    <li><a href="AddJobSeeker.jsp">Job Seekers</a></li>
                                    <li><a href="AddBusinessNews.jsp">Business News</a></li>
                                    <li ><a href="LogoutController">Logout</a></li>
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
    
    <%	HttpSession se=request.getSession();
		  			String x = (String)se.getAttribute("user");
		  			if (x == null) {
		
						response.sendRedirect("admin.html");
					}
		  			%>
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
                            <!--Hero form -->
                            <form action="#" class="search-box mb-100">
                                
                                <div class="select-form">
                                    <div class="select-itms">
                                        <select name="select" id="link">
                                            <option value="">In where?</option>
                                            <option value="AddTourism.jsp">Tourism</option>
                                            <option value="AddEduInstitue.jsp">Students</option>
                                            <option value="AddJobSeeker.jsp">JobSeeker</option>
                                            <option value="AddBusinessNews.jsp">Business</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="search-form">
                                    <input class="ti-search btn btn-danger" type="button" onclick='goto()' value="Search"/> 
                                    </div>
                            </form>	
                            <!-- hero category1 img -->
                            
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
                        </div>
                    </div>
                </div>
                
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