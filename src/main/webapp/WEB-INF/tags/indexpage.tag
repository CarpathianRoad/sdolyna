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

    <title>${translate.title}</title>

    <!-- CSS -->
    <link href="${Constants.URL}img/favicon.png" rel="shortcut icon" type="image/x-icon" />
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
                                                                  <li><a href="${Constants.URL}${lan}/index">${translate.main}</a></li>
                                                                  <li><a href="${Constants.URL}${lan}/index#about">${translate.countries}</a></li>
                                                                  <li id="menu-item-festivals"><a href="${Constants.URL}${lan}/articles/festivals">${translate.festivals}</a></li>
                                                                  <li id="menu-item-camps"><a href="${Constants.URL}${lan}/articles/camps">${translate.camps}</a></li>

                                                            </ul>
                                                          
		<div class="language-block">
			<ul>
				<li id="ru-lan" class="${activeru}"><a href="${Constants.URL}${fullURLRU}">RU</a></li>
				<li id="en-lan" class="${activeen}"><a href="${Constants.URL}${fullURLEN}">EN</a></li>
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
        
    
    <section id="contact" class="home-section text-center">
		<div class="heading-contact">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-offset-2">
					
					<div class="section-heading">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<h2>${translate.contactform}</h2>
					</div>
					<p class="wow lightSpeedIn" data-wow-delay="0.3s">${translate.contactinfo}</p>
					</div>
					
				</div>
			</div>
			</div>
		</div>
		<div class="container">

    <div class="row">
        <div class="col-lg-8 col-md-offset-2">
            <div class="form-wrapper marginbot-50">
                <form id="contact-form">
                <div class="row">
    
                        <div class="form-group">
                            <label for="name">
                                ${translate.name}</label>
                            <input type="text" class="form-control" id="name" placeholder="${translate.placeholdername}" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email </label>
                                <input type="email" class="form-control" id="email" placeholder="${translate.placeholderemail}" required="required" />
                        </div>
          
             
                        <div class="form-group">
                            <label for="name">
                                ${translate.message}</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="${translate.placeholdermessage}"></textarea>
                        </div>
       
           
                        <button type="submit" class="btn btn-skin btn-block" id="btnContactUs">
                            ${translate.send}</button>
                    <div class="validation"></div>
       
                </div>
                </form>
		<div id="mail-loading" class="side-block right-block">
					<div class="text-block-contacts-loading">
						<div class="main-text-block">
							<img class="loading-gif" src="${Constants.URL}img/loading-x.gif" />
						</div>
					</div>
				</div>
				<div id="mail-complete" class="side-block right-block">
					<div class="text-block-contacts-loading">
						<div class="main-text-block">
							${translate.complete}<br/>
							<img class="loading-gif" src="${Constants.URL}img/loading-x.gif" />
						</div>
					</div>
				</div>		
            </div>
        </div>

    </div>	

		</div>
	</section>
	<footer>
		<div class="container">
			<div class="row">
                            <div class="col-md-6 adress-block">
                                ${translate.license}  <br/>
                                ${translate.address}

                            </div>
                            <div class="col-md-3 contacts-block">
                                
                                
                                ${translate.contacts}<br/>
                                E-mail: <a href="mailto:sonyachna-dolyna@ukr.net">sonyachna-dolyna@ukr.net</a>
                                <p class="facebook">
                                    <a href="https://www.facebook.com/sunvalley2014" target="_blank">
                                        <img src="${Constants.URL}img/icon_fb.png" alt="Facebook">
                                    </a>
                                </p>
                            </div>
                            <div class="col-md-3 contact-block">
                                <a href="#contact" id="show-contact" class="btn btn-skin btn-lg btn-scroll btn-contact">${translate.contactus}</a>
                                <p>  Developed by <a href="http://www.aits.ua/" target="_blank"><span class="reserved"> AITS </span>2016</a>
                                         <a class="enter-link" target="_blank" href="<c:url value="/system/login" />"><img src="${Constants.URL}img/enter-icon.png" alt=""/></a>
                                </p>
                            </div>
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
    <script>
        $(document).ready(function () {
            var index = 6;
            if('${Constants.URL}' === '/') { index = 5; }
            var url = window.location.href.split('/')[index];
            console.log(url);
            if(url.indexOf("index") > -1) {
                $("#menu-item-"+url.split('#')[1]).addClass("active");
            }
            else {
                $("#menu-item-"+url).addClass("active");
            }
            $("#${lan}-lan").addClass("active");
        });
    </script>
</body>

</html>