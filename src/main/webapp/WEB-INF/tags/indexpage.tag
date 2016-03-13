<%-- 
    Document   : indexpage
    Created on : Mar 11, 2016, 3:32:54 PM
    Author     : kiwi
--%>

<%@tag description="Oblenergo - Admin page" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="Constants" class="ua.aits.sdolyna.functions.Constants" scope="session"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Солнечная долина</title>

    <!-- CSS -->
    <link href="${Constants.URL}css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${Constants.URL}font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="${Constants.URL}css/nivo-lightbox.css" rel="stylesheet" />
	<link href="${Constants.URL}css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
	<link href="${Constants.URL}css/owl.carousel.css" rel="stylesheet" media="screen" />
    <link href="${Constants.URL}css/owl.theme.css" rel="stylesheet" media="screen" />	
	<link href="${Constants.URL}css/animate.css" rel="stylesheet" />
    <link href="${Constants.URL}css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="${Constants.URL}css/jquery.maximage.css" type="text/css" media="screen" title="CSS" charset="utf-8" />

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	<!-- Preloader -->
	<div id="preloader">
	  <div id="load"></div>
	</div>
	<!-- Section: intro -->
    <section id="intro" class="intro">
<div id="maximage">
	<a href="${Constants.URL}${lan}/articles/full/2"><img src="${Constants.URL}img/gallery/slovakia/3.jpg" alt="2"  /></a>
	<a href="${Constants.URL}${lan}/articles/full/5"><img src="${Constants.URL}img/gallery/croatia/1.jpg" alt="5"  /></a>
	<a href="${Constants.URL}${lan}/articles/full/6"><img src="${Constants.URL}img/gallery/greece/3.jpg" alt="6"  /></a>
	<a href="${Constants.URL}${lan}/articles/full/3"><img src="${Constants.URL}img/gallery/hungary/2.jpg" alt="3"  /></a>
	<a href="${Constants.URL}${lan}/articles/full/4"><img src="${Constants.URL}img/gallery/slovenia/2.jpg" alt="4"  /></a>
</div>
		<div class="slogan">
			<a href="index.html"><img src="${Constants.URL}img/logo.png" alt="" /></a>
		</div>
		<div class="page-scroll">
			<a href="#about">
				<i class="fa fa-angle-down fa-5x animated"></i>
			</a>
		</div>
    </section>
	<!-- /Section: intro -->

    <!-- Navigation -->
    <div id="navigation">
        <nav class="navbar navbar-custom" role="navigation">
                              <div class="container">
                                    <div class="row">
                                          <div class="col-md-12">
                         
                                          <!-- Brand and toggle get grouped for better mobile display -->
                                          <div class="navbar-header">
                                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
                                                <i class="fa fa-bars"></i>
                                                </button>
                                          </div>
                                                      <!-- Collect the nav links, forms, and other content for toggling -->
                                                      <div class="collapse navbar-collapse" id="menu">
                                                            <ul class="nav navbar-nav">
                                                                  <li><a href="${Constants.URL}${lan}/index#about">Про компанию</a></li>
                                                                  <li><a href="${Constants.URL}${lan}/index#countries">Страны</a></li>
                                                                  <li><a href="${Constants.URL}${lan}/articles/festivals#main">Фестивали</a></li>
                                                                  <li><a href="${Constants.URL}${lan}/articles/camps#main">Детские лагеря</a></li>

                                                            </ul>
                                                          
		<div class="language-block">
			<ul>
				<li class="active"><a href="${Constants.URL}ru/index">RU</a></li>
				<li><a href="${Constants.URL}en/index">EN</a></li>
			</ul>
		</div>
                                                      </div>
                                                      <!-- /.Navbar-collapse -->
                             
                                          </div>
                                    </div>
                              </div>
                              <!-- /.container -->
                        </nav>
    </div> 
    <!-- /Navigation -->  
	<div id="scroll-to-top" class="page-scroll">
			<a href="#page-top">
				<i class="fa fa-angle-up fa-5x animated"></i>
			</a>
	</div>
	<!-- Section: about -->
    <jsp:doBody/>
        
    
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
                                    
			<div class="col-md-6 text-center">
					<p class="lead"><i class="fa fa-phone"></i> Тел: +38 (0312) 44-30-54, 44-30-24, +380949183054</p>
					<p class="lead"><i class="fa fa-envelope"></i> E-mail: <a href="mailto:sonyachna-dolyna@ukr.net">sonyachna-dolyna@ukr.net</a></p>
			</div>
                                    <div class="col-md-6 developed">
                                        <p>  Developed by <a href="http://www.aits.ua/" target="_blank"><span class="reserved"> AITS</span></a>
                                         <a class="enter-link" href="${Constants.URL}system/login"><img src="${Constants.URL}img/enter-icon.png" alt=""/></a>
                                        </p>
                                       
				
                                    </div>
                                        
                                </div>
                <!-- 
                    All links in the footer should remain intact. 
                    Licenseing information is available at: http://bootstraptaste.com/license/
                    You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Lonely
                -->
			</div>	
		</div>
	</footer>

    <!-- Core JavaScript Files -->
    <script src="${Constants.URL}js/jquery.min.js"></script>
    <script src="${Constants.URL}js/bootstrap.min.js"></script>
    <script src="${Constants.URL}js/jquery.easing.min.js"></script>	
	<script src="${Constants.URL}js/jquery.sticky.js"></script>
	<script src="${Constants.URL}js/jquery.scrollTo.js"></script>
	<script src="${Constants.URL}js/stellar.js"></script>
	<script src="${Constants.URL}js/wow.min.js"></script>
	<script src="${Constants.URL}js/owl.carousel.min.js"></script>
	<script src="${Constants.URL}js/nivo-lightbox.min.js"></script>
	<script src="${Constants.URL}js/jquery.cycle.all.js" type="text/javascript"></script>
	<script src="${Constants.URL}js/jquery.maximage.js" type="text/javascript"></script>
    <!-- Custom Theme JavaScript -->
    <script src="${Constants.URL}js/custom.js"></script>
</body>

</html>