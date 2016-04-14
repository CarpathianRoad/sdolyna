<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<!-- Section: intro -->
    <section id="intro" class="intro">
<div id="maximage">
	<img src="${Constants.URL}img/gallery/slider/croatia.png" alt="2"  />
	<img src="${Constants.URL}img/gallery/slider/greece.png" alt="2"  />
	<img src="${Constants.URL}img/gallery/slider/hungary.png" alt="2"  />
	<img src="${Constants.URL}img/gallery/slider/slovakia.png" alt="2"  />
	<img src="${Constants.URL}img/gallery/slider/slovenia.png" alt="2"  />
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
                                                                  <li id="menu-item-about"><a href="#about">Про компанию</a></li>
                                                                  <li id="menu-item-countries"><a href="#countries">Страны</a></li>
                                                                  <li id="menu-item-festivals"><a href="${Constants.URL}${lan}/articles/festivals">Фестивали</a></li>
                                                                  <li id="menu-item-camps"><a href="${Constants.URL}${lan}/articles/camps">Детские лагеря</a></li>

                                                            </ul>
                                                          
		<div class="language-block">
			<ul>
				<li><a href="${Constants.URL}ru/index">RU</a></li>
				<li class="active"><a href="${Constants.URL}en/index">EN</a></li>
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
    <section id="about" class="home-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					
						<div class="section-heading text-center">
						<div >
                                                    <h2>Вас приветствует туристическая компания  <span>“Солнечная Долина”!</span></h2>
						</div>
						</div>
					
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row page-scroll">	
				<div class="col-md-6">
					<div class="image-block"><img class="grow" src="${Constants.URL}img/sdol.png" class="img-responsive img-rounded" alt="" /></div>
				</div>
				<div class="col-md-6">
				<p>
					<p style="text-align: center;    margin-top: -5px;">Основными направлениями деятельности нашей фирмы являются:</p>
					<p style="margin-left: 25px;
    margin-top: -3px;
    line-height: 21px;
    font-size: 15px;">
                                            - Отдых на морских курортах (Хорватия, Черногория, Турция, Египет);<br/>

- Отдых на горнолыжных курортах (Украина - Карпаты, Словакия, Словения, Австрия);<br/>

- Отдых в детских оздоровительных лагерях (Закарпатье, Словакия, Венгрия, Хорватия);<br/>

- Отдых и лечение в санаториях (Украина - Закарпатье, Словакия, Чехия, Словения);<br/>

- Организация экскурсионного обслуживания для индивидуальных туристов и групп (Украина - 

Закарпатье, Словакия, Венгрия, Австрия, Словения, Чехия, Хорватия);<br/>

- Прием, размещение и экскурсионное обслуживание Ваших зарубежных партнеров и гостей;<br/>

- Бронирование отелей на Украине и за рубежом;<br/>

- Организация фестивалей, конференций и семинаров;<br/>

- Транспортные услуги;<br/>

- Продажа авиабилетов;<br/>

- Все виды страхования.</p>		</div>	
			</div>		
		</div>
	</section>
        
	<!-- /Section: about -->
	<section id="separator" class="home-section " >
		
		<div class="container">
			<div class="row">
					<div class="col-lg-10 main-block">
						Начните путешествовать с нами, и Вы убедитесь, что наши туры качественны и увлекательны.<br/> Мы 

приложим все усилия, чтобы Ваш отдых был максимально комфортным. Постоянно мы 

предлагаем своим клиентам новые направления и новые программы. Звоните или пишите нам по 

E-mail и Вы гарантированно получите тщательно продуманную и хорошо организованную 

программу отдыха по разумной цене.
					</div>
					
			</div>		
		</div>
	</section>
	<section id="countries" class="home-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					
						<div class="section-heading text-center">
						<div class="wow bounceInDown" data-wow-delay="0.2s">
							<p class="country-head">Направления для отдыха</p>
						</div>
						</div>
					
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-4">
                                    <div class="image-block"><a href="${Constants.URL}${lan}/articles/full/1"><img class="grow img-responsive" src="${Constants.URL}img/gallery/countries/ukr.jpg" alt="" /></a></div>
                                    <div class="country-title"><a href="${Constants.URL}${lan}/articles/full/1">Украина</a></div>
                                </div>	
				<div class="col-md-4">
                                    <div class="image-block"><a href="${Constants.URL}${lan}/articles/full/2"><img class="grow img-responsive " src="${Constants.URL}img/gallery/countries/slovakia.jpg" alt="" /></a></div>
                                    <div class="country-title"><a href="${Constants.URL}${lan}/articles/full/2">Словакия</a></div>
                                </div>	
				<div class="col-md-4">
                                    <div class="image-block"><a href="${Constants.URL}${lan}/articles/full/3"><img class="grow img-responsive " src="${Constants.URL}img/gallery/countries/hun.jpg" alt="" /></a></div>
                                    <div class="country-title"><a href="${Constants.URL}${lan}/articles/full/3">Венгрия</a></div>
                                </div>	
				<div class="col-md-4">
                                    <div class="image-block"><a href="${Constants.URL}${lan}/articles/full/4"><img class="grow img-responsive" src="${Constants.URL}img/gallery/countries/slovenia.jpg" alt="" /></a></div>
                                    <div class="country-title"><a href="${Constants.URL}${lan}/articles/full/4">Словения</a></div>
                                </div>	
				<div class="col-md-4">
                                    <div class="image-block"><a href="${Constants.URL}${lan}/articles/full/5"><img class="grow img-responsive " src="${Constants.URL}img/gallery/countries/croatia.jpg" alt="" /></a></div>
                                    <div class="country-title"><a href="${Constants.URL}${lan}/articles/full/5">Хорватия</a></div>
                                </div>	
				<div class="col-md-4">
                                    <div class="image-block"><a href="${Constants.URL}${lan}/articles/full/6"><img class="grow img-responsive " src="${Constants.URL}img/gallery/countries/greece.jpg" alt="" /></a></div>
                                    <div class="country-title"><a href="${Constants.URL}${lan}/articles/full/6">Греция</a></div>
                                </div>	
			</div>		
		</div>
	</section>
	
	<!-- /Section: services -->
	

	
	<!-- /Section: contact -->

	<!-- Section: contact -->
    
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
</body>

</html>
