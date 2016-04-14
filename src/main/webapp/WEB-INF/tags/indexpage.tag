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
                                                                  <li><a href="${Constants.URL}${lan}/index">Про компанию</a></li>
                                                                  <li><a href="${Constants.URL}${lan}/index#about">Страны</a></li>
                                                                  <li id="menu-item-festivals"><a href="${Constants.URL}${lan}/articles/festivals">Фестивали</a></li>
                                                                  <li id="menu-item-camps"><a href="${Constants.URL}${lan}/articles/camps">Детские лагеря</a></li>

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
					<h2>Свяжитесь с нами</h2>
					</div>
					<p class="wow lightSpeedIn" data-wow-delay="0.3s">Заполните эти поля и представители нашей компании свяжуться с вами</p>
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
                                Ваше имя</label>
                            <input type="text" class="form-control" id="name" placeholder="Введите имя" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Ваш Email </label>
                                <input type="email" class="form-control" id="email" placeholder="Введите email" required="required" />
                        </div>
          
             
                        <div class="form-group">
                            <label for="name">
                                Сообщение</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Текст сообщения"></textarea>
                        </div>
       
           
                        <button type="submit" class="btn btn-skin btn-block" id="btnContactUs">
                            Отправить</button>
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
							Ваше письмо отправлено <br/>
							Подождите минуту.<br/>
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
                                Лицензия: <a target="_blank" href="${Constants.URL}img/lic.jpg">АЕ № 185710 выдана Государственным агентством Украины по туризму и курортам <img src="${Constants.URL}img/pdf.png" alt="PDF"></a> <br/>
                                <p>89313 Украина, Закарпатская область, Свалявский район, <br/>с. Поляна, ул. Курортная 10</p>
                                
                                <span style="letter-spacing: -1px;">Тел: +38 (0312) 44-30-54, 44-30-24,</span><br/>
                                Факс: +38 (0312) 44-30-24<br/> 
                                Моб. тел.: +380949183054<br/>
                                E-mail: <a href="mailto:sonyachna-dolyna@ukr.net">sonyachna-dolyna@ukr.net</a>

                            </div>
                            <div class="col-md-3 contacts-block">
                                
                                <!-- Minfin.com.ua calc informer 200x112 violet-->
                            </div>
                            <div class="col-md-3 contact-block">
                                <a href="#contact" id="show-contact" class="btn btn-skin btn-lg btn-scroll btn-contact">Связаться</a>
                                <p class="facebook">
                                    <a href="https://www.facebook.com/sunvalley2014" target="_blank">
                                        <img src="${Constants.URL}img/icon_fb.png" alt="Facebook">
                                    </a>
                                </p>
                                <p>  Developed by <a href="http://www.aits.ua/" target="_blank"><span class="reserved"> AITS </span>2016</a>
                                         <a class="enter-link" target="_blank" href="http://88.81.239.23:59186/system/login"><img src="${Constants.URL}img/enter-icon.png" alt=""/></a>
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