<%@page import="com.flexionlabs.appstate.FlexionLabState"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%
	FlexionLabState flexionLabState = FlexionLabState
			.getInstance(request);
%>
<html lang="en">
<head>
<title>FlexionLabs - Beyond Limits</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<!-- CSS -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/css/style.css">
<!-- Base -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/css/skeleton.css">
<!-- Responsive Lightbox -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/css/imagebox.css">
<!-- Revolution Slider -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/css/rv.css">
<!-- Flex Image Slider -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/css/flex-owl-slider.css">
<!-- Elastislider -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/css/carousel.css">
<!-- Image hover -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/css/fdw-demo.css">
<!-- Colorbox -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/css/colorbox.css">
<!-- Elements Styles -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/css/elements.css">
<!-- Navigation -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/css/superfish.css">
<!-- Color -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/css/blue-color.css">
<!-- Contact Form  -->
<link rel="stylesheet" media="screen"
	href="<%=request.getContextPath()%>/css/forms.css">
<!-- Fonts -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/font-awesome.css">
<link href='http://fonts.googleapis.com/css?family=Great+Vibes'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Arial:300italic,300,400,400italic,600,600italic,700,700italic|Open+Sans:300italic,300,400,400italic,600,600italic,700,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Bitter:400,400italic,700|Copse'
	rel='stylesheet' type='text/css'>
	<!-- Java Script -->
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.js'></script>
</head>
<body>
	<div class="bodywrapper">
		<div class="row-1">
			<!-- Header -->
			<header>
				<div class="container">
					<div class="sixteen columns">
						<!-- Contact details -->
						<div id="contact-details">
							<ul>
								<li><i class="fa-user"></i> <a href="#">support@flexionlabs.com</a></li>
								<li><i class="fa-envelope"></i> +2348068674787</li>
							</ul>
						</div>
						<!-- Social icons -->
						<div class="socials">
							<div class="header-social">
								<div class="textwidget">
									<ul class='social-circle'>
										<li>
											<div class='entypo-facebook'></div>
										</li>
										<li>
											<div class='entypo-twitter'></div>
										</li>
										<li>
											<div class='entypo-linkedin'></div>
										</li>
										<li>
											<div class='entypo-gplus'></div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					<div class="sixteen columns">
						<%--         	<img src="<%=request.getContextPath() %>/images/flexionlabs-120.png" style="float: left;" /> --%>
					</div>
					<div class="sixteen columns">
						<div class="row-nav">
							<!-- Logo -->
							<div class="logo fleft">
								<h1>
									<a href="#" title="Fancy" rel="home"> FlexionLabs </a>
								</h1>
							</div>
							<!-- menu -->
							<nav id="sf-menu" class="sf-menuwrapper fright">
								<button class="dl-trigger">Open Menu</button>
								<ul class="sf-menu">
									<li id="home-menu"><a href="/home">Home</a></li>
									<li id="services-menu"><a href="/services">Services</a></li>
									<li id="products-menu"><a href="/products">Products</a>
									</li>
									<li id="about-menu"><a href="/about">About Us</a></li>
									<li id="careers-menu"><a href="/careers">Careers</a>
									</li>
									<li id="contact-menu"><a href="/contact">Contact</a></li>
									<li id="faq-menu"><a href="/faq">FAQ</a></li>
								</ul>
							</nav>
							<!-- end menu -->
						</div>
					</div>
				</div>
			</header>
			<!-- /Header -->
			<c:if test="${FlexionLabState.parentView eq 'HOME_PAGE' }">
				<jsp:include page="/slider.jsp"></jsp:include>
			</c:if>
		</div>
		<!-- /Slider & info box-->
		<!-- Content -->
		<jsp:include page="<%=flexionLabState.getParentView().getPage()%>"></jsp:include>
		<!-- /Content -->
		<!-- Footer -->
		<footer>
			<div class="footer-1">
				<div class="container">
					<div class="wrapper">
						<!-- Text Widget & SOCIABLE -->
						<div class="column one-third" data-effect="slide-left">
							<div class="account footer-blocks">
								<!-- ACCOUNT (RIGHT-CONTAINER) -->
								<h2 class="titular">SIGN IN TO YOUR ACCOUNT</h2>
								<div class="input-container">
									<input type="text" class="email text-input"
										placeholder="yourname@gmail.com">
									<div class="input-icon envelope-icon-acount">
										<span class="fontawesome-envelope scnd-font-color"></span>
									</div>
								</div>
								<div class="input-container">
									<input type="text" class="password text-input"
										placeholder="Password">
									<div class="input-icon password-icon">
										<span class="fontawesome-lock scnd-font-color"></span>
									</div>
								</div>
								<a href="#22" class="sign-in ">SIGN IN</a>
								<p class="scnd-font-color">Forgot Password?</p>
								<a href="58.html" class="fb-sign-in">
									<p>
										<span class="fb-border"><span
											class="icon zocial-facebook"></span></span>Sign in with Facebook
									</p>
								</a>
							</div>
						</div>
						<!-- Twitter Feed -->
						<div class="column one-third" data-effect="slide-bottom">
							<div class="tweets footer-blocks">
								<!-- TWEETS (MIDDLE-CONTAINER) -->
								<h2 class="titular">
									<span class="icon zocial-twitter"></span>LATEST TWEETS
								</h2>
								<div class="tweet first">
									<p>
										Ice-cream trucks only play music when out of ice-cream. Well
										played dad. On <a href="#17" class="tweet-link">@Quora</a>
									</p>
									<p>
										<a href="#18" class="time-ago scnd-font-color">3 minutes
											ago</a>
									</p>
								</div>
								<div class="tweet">
									<p>
										We are in the process of pushing out all of the new CC apps!
										We will tweet again once they are live <a href="#19"
											class="tweet-link">#CreativeCloud</a>
									</p>
									<p>
										<a href="#20" class="scnd-font-color">6 hours ago</a>
									</p>
								</div>
							</div>
						</div>
						<!-- FLCKR PHOTOS & Tag Cloud -->
						<div class="column one-third" data-effect="slide-right">
							<!--FLCKR PHOTOS-->
							<div class="menu-box footer-blocks">
								<!-- MENU BOX (LEFT-CONTAINER) -->
								<h2 class="titular">MENU BOX</h2>
								<ul class="menu-box-menu">
									<li><a href="#6" class="menu-box-tab"><span
											class="fa fa-envelope scnd-font-color"></span>Messages
											<div class="menu-box-number">24</div> </a></li>
									<li><a href="#8" class="menu-box-tab"><span
											class="fa fa-plane scnd-font-color"></span>Invites
											<div class="menu-box-number">3</div> </a></li>
									<li><a href="#10" class="menu-box-tab"><span
											class="fa fa-calendar scnd-font-color"></span>Events
											<div class="menu-box-number">5</div> </a></li>
									<li><a href="#12" class="menu-box-tab"><span
											class="fa fa-cog scnd-font-color"></span>Account Settings</a></li>
									<li><a href="#13" class="menu-box-tab"> <span
											class="fa fa-pencil scnd-font-color"></span> Statistics
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-2">
				<div class="container">
					<div class="eight columns">
						<div id="copyright">
							&copy; Copyright 2014 by <span>FlexionLabs</span>. All Rights
							Reserved.
						</div>
					</div>
					<div class="eight columns">
						<div class="fright">
							<div class="textwidget">
								<ul class="social-circle">
									<li>
										<div class="entypo-facebook"></div>
									</li>
									<li>
										<div class="entypo-twitter"></div>
									</li>
									<li>
										<div class="entypo-gplus"></div>
									</li>
									<li>
										<div class="entypo-linkedin"></div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- /Footer -->
	</div>
	<!-- Java Script -->
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.easing.1.3.js'></script>
	<script type='text/javascript'
		src="<%=request.getContextPath()%>/js/modernizr.custom.js"></script>
	<!-- Navigation -->
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.responsivemenu.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/superfish.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/nav-small.js'></script>
	<script type='text/javascript'
		src="<%=request.getContextPath()%>/js/mobile.menu.js"></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/owl.carousel.js'></script>
	<script>
    $(document).ready(function() {
      $("#owl-demo").owlCarousel({
        navigation : true
      });
    });

    </script>
	<script>
    $(document).ready(function() {
			$("#owl-demo-1").owlCarousel({
				autoPlay : 3000,
				items : 5,
				itemsDesktop : [ 1199, 3 ],
				itemsDesktopSmall : [ 979, 3 ]
			});
			
			var currentView = document.getElementById('currentView');
			if(currentView!=null){
				var viewName = currentView.value;
				if(viewName!=null){
					var homeMenu = document.getElementById('home-menu');
					var servicesMenu = document.getElementById('services-menu');
					var productsMenu = document.getElementById('products-menu');
					var aboutMenu = document.getElementById('about-menu');
					var contactMenu = document.getElementById('contact-menu');
					var careersMenu = document.getElementById('careers-menu');
					var faqMenu = document.getElementById('faq-menu');
					if(viewName === 'homepage'){
						homeMenu.className = 'active';
					}else if(viewName === 'services'){
						servicesMenu.className = 'active';
					}else if(viewName === 'products'){
						productsMenu.className = 'active';
					}else if(viewName === 'careers'){
						careersMenu.className = 'active';
					}else if(viewName === 'about'){
						aboutMenu.className = 'active';
					}else if(viewName === 'contact'){
						contactMenu.className = 'active';
					}else if(viewName === 'faq'){
						faqMenu.className = 'active';
					}
				}
			}

		});
    </script>
    <!-- Revolution Slider -->
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.themepunch.plugins.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.themepunch.revolution.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.flexslider.text.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.flex-owl-slider-min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.elastislide.js'></script>
	<!-- Easy Pie Chart -->
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.easypiechart.js'></script>
	<!-- Imagehover -->
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery-hover-effect.js'></script>
	<!-- Colorbox -->
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.colorbox-min.js'></script>
	<!-- Tooltip -->
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/tooltip.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.tipsy.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.ui.totop.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/jquery.isotope.min.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/popover.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/imagebox.min.js'></script>
	<!-- Script -->
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/script.js'></script>
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/custom.js'></script>
</body>
</html>
