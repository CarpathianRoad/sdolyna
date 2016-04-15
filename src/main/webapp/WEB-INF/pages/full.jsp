<%-- 
    Document   : full
    Created on : Mar 11, 2016, 2:20:26 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:indexpage>

<link href="${Constants.URL}bx/jquery.bxslider.css" rel="stylesheet" />
<section id="main" class="home-section">
		<div class="container">
			<div class="row">
				<div class="center-block col-md-7" style="float: none;">
					
						<div class="section-heading text-center">
						<div class="wow bounceInDown" data-wow-delay="0.2s">
							<h2>${article.article_title_ru}</h2>
						</div>
						</div>
					
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row ">	
				<div class="col-md-12 ">
                                    <div class="main-text">
                                   ${article.article_text_ru} 
                                   <c:if test="${article.article_id == 5}">
                                       <script type="text/javascript">
                                            vac_lang='ru'; 
                                            vac_width='940px'; 
                                            vac_height='2200px'; 
                                            vac_aid='ag2064'; 
                                            vac_landing_page='http://www.vacation-croatia.com/ru/chastnoye-zhilyo'; 
                                    </script>
                                    <script type="text/javascript" src="http://www.vacation-croatia.com/services/frame/js/vac.js"></script>
                                    <style>
                                        #ag2064 {
                                            width: 100% !important;
                                            margin-top: 50px;
                                        }
                                    </style>
                                   </c:if>
                                    </div>
				</div>	
                                <c:if test="${not empty article.article_images}">
                                    
				<div id="gallery" class="gallery-items col-md-12">
                                    <div class="bxslider">
                                        <c:forEach items="${article.article_images}" var="image">
                                            <li><img class="show-image-gal" langru="${image.image_title_ru}" langen="${image.image_title_en}" src="${Constants.URL}${image.image_url}"/></li>
                                        </c:forEach>
                                    </div>
				</div>	
                                </c:if>
		</div>
                </div>
                                   <div class="container">
			<div class="row ">	
                            <div class="col-md-12 widget">
                <c:choose>
                    <c:when test="${article.article_id == 1}">
                        <div class="money">
                            <!--Currency Converter widget by FreeCurrencyRates.com -->

<div id='gcw_mainFjK7pDHEf' class='gcw_mainFjK7pDHEf'></div>
<script>function reloadFjK7pDHEf(){ var sc = document.getElementById('scFjK7pDHEf');if (sc) sc.parentNode.removeChild(sc);sc = document.createElement('script');sc.type = 'text/javascript';sc.charset = 'UTF-8';sc.async = true;sc.id='scFjK7pDHEf';sc.src = 'http://freecurrencyrates.com/ru/widget-vertical?iso=UAHEURUSD&df=2&p=FjK7pDHEf&v=fits&source=fcr&width=230&width_title=0&firstrowvalue=1&thm=dddddd,ffffff,dddddd,dddddd,444444,dddddd,ffffff,0073EA,000000&title=%D0%9A%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B5%D1%80%20%D0%B2%D0%B0%D0%BB%D1%8E%D1%82&tzo=-180';var div = document.getElementById('gcw_mainFjK7pDHEf');div.parentNode.insertBefore(sc, div);} reloadFjK7pDHEf(); </script>
<!-- put custom styles here: .gcw_mainFjK7pDHEf{}, .gcw_headerFjK7pDHEf{}, .gcw_ratesFjK7pDHEf{}, .gcw_sourceFjK7pDHEf{} -->
<!--End of Currency Converter widget by FreeCurrencyRates.com -->
                        </div>
                        <div class="wether">
                            <link rel="stylesheet" type="text/css" href="https://s1.gismeteo.ua/static/css/informer2/gs_informerClient.min.css">
<div id="gsInformerID-e5yNNma6MbslY8" class="gsInformer" style="width:192px;height:129px">
  <div class="gsIContent">
   <div id="cityLink">
        <a href="https://www.gismeteo.ua/weather-kyiv-4944/" target="_blank">Погода в Киеве</a><br />
        <a href="https://www.gismeteo.ua/weather-odessa-4982/" target="_blank">Погода в Одессе</a><br />
        <a href="https://www.gismeteo.ua/weather-lviv-4949/" target="_blank">Погода во Львове</a><br />
        <a href="https://www.gismeteo.ua/weather-mukacheve-4960/" target="_blank">Погода в Мукачево</a>
   </div>
   <div class="gsLinks">
     <table><tr><td>
           <div class="leftCol">
            <a href="https://www.gismeteo.ua" target="_blank">
               <img alt="Gismeteo" title="Gismeteo" src="https://s1.gismeteo.ua/static/images/informer2/logo-mini2.png" align="absmiddle" border="0" />
               <span>Gismeteo</span>
            </a>
           </div>
           <div class="rightCol">
             <a href="https://www.gismeteo.ua" target="_blank">Погода на 2 недели</a>
           </div>
             </td></tr></table>
    </div>
  </div>
</div>
<script src="https://www.gismeteo.ua/ajax/getInformer/?hash=e5yNNma6MbslY8" type="text/javascript"></script>
                        </div>
                    </c:when>
                    <c:when test="${article.article_id == 2}">
                        <div class="money">
                            <!--Currency Converter widget by FreeCurrencyRates.com -->

<div id='gcw_mainFjK7pDHEf' class='gcw_mainFjK7pDHEf'></div>
<script>function reloadFjK7pDHEf(){ var sc = document.getElementById('scFjK7pDHEf');if (sc) sc.parentNode.removeChild(sc);sc = document.createElement('script');sc.type = 'text/javascript';sc.charset = 'UTF-8';sc.async = true;sc.id='scFjK7pDHEf';sc.src = 'http://freecurrencyrates.com/ru/widget-vertical?iso=EURUAHUSD&df=2&p=FjK7pDHEf&v=fits&source=fcr&width=230&width_title=0&firstrowvalue=1&thm=dddddd,ffffff,dddddd,dddddd,444444,dddddd,ffffff,0073EA,000000&title=%D0%9A%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B5%D1%80%20%D0%B2%D0%B0%D0%BB%D1%8E%D1%82&tzo=-180';var div = document.getElementById('gcw_mainFjK7pDHEf');div.parentNode.insertBefore(sc, div);} reloadFjK7pDHEf(); </script>
<!-- put custom styles here: .gcw_mainFjK7pDHEf{}, .gcw_headerFjK7pDHEf{}, .gcw_ratesFjK7pDHEf{}, .gcw_sourceFjK7pDHEf{} -->
<!--End of Currency Converter widget by FreeCurrencyRates.com -->
                        </div>
                        <div class="wether">
                            
                        <link rel="stylesheet" type="text/css" href="https://s1.gismeteo.ua/static/css/informer2/gs_informerClient.min.css">
<div id="gsInformerID-47KGR0tny6i331" class="gsInformer" style="width:192px;height:155px">
  <div class="gsIContent">
   <div id="cityLink">
     <a href="https://www.gismeteo.ua/weather-kosice-3000/" target="_blank">Погода в Кошицах</a>
   <br />
<a href="https://www.gismeteo.ua/weather-poprad-2998/" target="_blank">Погода в Попраде</a>
   <br />
<a href="https://www.gismeteo.ua/weather-liptovsky-mikulas-2981/" target="_blank">Погода в Липтовском Микулаше</a>
   <br />
<a href="https://www.gismeteo.ua/weather-tatranska-lomnica-11052/" target="_blank">Погода в Татранска Ломнице</a>
   <br />
<a href="https://www.gismeteo.ua/weather-jasna-11113/" target="_blank">Погода в Ясной</a>
   </div>
   <div class="gsLinks">
     <table>
       <tr>
         <td>
           <div class="leftCol">
             <a href="https://www.gismeteo.ua" target="_blank">
               <img alt="Gismeteo" title="Gismeteo" src="https://s1.gismeteo.ua/static/images/informer2/logo-mini2.png" align="absmiddle" border="0" />
               <span>Gismeteo</span>
             </a>
           </div>
           <div class="rightCol">
             <a href="https://www.gismeteo.ua" target="_blank">Погода на 2 недели</a>
           </div>
           </td>
        </tr>
      </table>
    </div>
  </div>
</div>
<script src="https://www.gismeteo.ua/ajax/getInformer/?hash=47KGR0tny6i331" type="text/javascript"></script>
                        </div>
                    </c:when>
                    <c:when test="${article.article_id == 3}">
                        <div class="money">
                            <!--Currency Converter widget by FreeCurrencyRates.com -->

<div id='gcw_mainFjK7pDHEf' class='gcw_mainFjK7pDHEf'></div>
<script>function reloadFjK7pDHEf(){ var sc = document.getElementById('scFjK7pDHEf');if (sc) sc.parentNode.removeChild(sc);sc = document.createElement('script');sc.type = 'text/javascript';sc.charset = 'UTF-8';sc.async = true;sc.id='scFjK7pDHEf';sc.src = 'http://freecurrencyrates.com/ru/widget-vertical?iso=HUFEURUAHUSD&df=2&p=FjK7pDHEf&v=fits&source=fcr&width=230&width_title=0&firstrowvalue=1&thm=dddddd,ffffff,dddddd,dddddd,444444,dddddd,ffffff,0073EA,000000&title=%D0%9A%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B5%D1%80%20%D0%B2%D0%B0%D0%BB%D1%8E%D1%82&tzo=-180';var div = document.getElementById('gcw_mainFjK7pDHEf');div.parentNode.insertBefore(sc, div);} reloadFjK7pDHEf(); </script>
<!-- put custom styles here: .gcw_mainFjK7pDHEf{}, .gcw_headerFjK7pDHEf{}, .gcw_ratesFjK7pDHEf{}, .gcw_sourceFjK7pDHEf{} -->
<!--End of Currency Converter widget by FreeCurrencyRates.com -->
                        </div>
                        <div class="wether">
                           
                        <link rel="stylesheet" type="text/css" href="https://s1.gismeteo.ua/static/css/informer2/gs_informerClient.min.css">
<div id="gsInformerID-q08p58pyEt5AS2" class="gsInformer" style="width:192px;height:129px">
  <div class="gsIContent">
   <div id="cityLink">
     <a href="https://www.gismeteo.ua/weather-budapest-3227/" target="_blank">Погода в Будапеште</a>
   <br />
<a href="https://www.gismeteo.ua/weather-debrecen-3228/" target="_blank">Погода в Дебрецене</a>
   <br />
<a href="https://www.gismeteo.ua/weather-balaton-53284/" target="_blank">Погода в Балатоне</a>
   <br />
<a href="https://www.gismeteo.ua/weather-heviz-52613/" target="_blank">Погода в Хевизе</a>
   </div>
   <div class="gsLinks">
     <table>
       <tr>
         <td>
           <div class="leftCol">
             <a href="https://www.gismeteo.ua" target="_blank">
               <img alt="Gismeteo" title="Gismeteo" src="https://s1.gismeteo.ua/static/images/informer2/logo-mini2.png" align="absmiddle" border="0" />
               <span>Gismeteo</span>
             </a>
           </div>
           <div class="rightCol">
             <a href="https://www.gismeteo.ua" target="_blank">Погода на 2 недели</a>
           </div>
           </td>
        </tr>
      </table>
    </div>
  </div>
</div>
<script src="https://www.gismeteo.ua/ajax/getInformer/?hash=q08p58pyEt5AS2" type="text/javascript"></script> 
                        </div>
                    </c:when>
                    <c:when test="${article.article_id == 4}">
                        <div class="money">
                            <!--Currency Converter widget by FreeCurrencyRates.com -->

<div id='gcw_mainFjK7pDHEf' class='gcw_mainFjK7pDHEf'></div>
<script>function reloadFjK7pDHEf(){ var sc = document.getElementById('scFjK7pDHEf');if (sc) sc.parentNode.removeChild(sc);sc = document.createElement('script');sc.type = 'text/javascript';sc.charset = 'UTF-8';sc.async = true;sc.id='scFjK7pDHEf';sc.src = 'http://freecurrencyrates.com/ru/widget-vertical?iso=EURUAHUSD&df=2&p=FjK7pDHEf&v=fits&source=fcr&width=230&width_title=0&firstrowvalue=1&thm=dddddd,ffffff,dddddd,dddddd,444444,dddddd,ffffff,0073EA,000000&title=%D0%9A%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B5%D1%80%20%D0%B2%D0%B0%D0%BB%D1%8E%D1%82&tzo=-180';var div = document.getElementById('gcw_mainFjK7pDHEf');div.parentNode.insertBefore(sc, div);} reloadFjK7pDHEf(); </script>
<!-- put custom styles here: .gcw_mainFjK7pDHEf{}, .gcw_headerFjK7pDHEf{}, .gcw_ratesFjK7pDHEf{}, .gcw_sourceFjK7pDHEf{} -->
<!--End of Currency Converter widget by FreeCurrencyRates.com -->
                        </div>
                        <div class="wether">
                            
                        <link rel="stylesheet" type="text/css" href="https://s1.gismeteo.ua/static/css/informer2/gs_informerClient.min.css">
<div id="gsInformerID-eh2o1p5h2iBW67" class="gsInformer" style="width:192px;height:103px">
  <div class="gsIContent">
   <div id="cityLink">
     <a href="https://www.gismeteo.ua/weather-ljubljana-3259/" target="_blank">Погода в Любляне</a>
   <br />
<a href="https://www.gismeteo.ua/weather-bled-3275/" target="_blank">Погода в Бледе</a>
   <br />
<a href="https://www.gismeteo.ua/weather-portoroz-10922/" target="_blank">Погода в Портороже</a>
   </div>
   <div class="gsLinks">
     <table>
       <tr>
         <td>
           <div class="leftCol">
             <a href="https://www.gismeteo.ua" target="_blank">
               <img alt="Gismeteo" title="Gismeteo" src="https://s1.gismeteo.ua/static/images/informer2/logo-mini2.png" align="absmiddle" border="0" />
               <span>Gismeteo</span>
             </a>
           </div>
           <div class="rightCol">
             <a href="https://www.gismeteo.ua" target="_blank">Погода на 2 недели</a>
           </div>
           </td>
        </tr>
      </table>
    </div>
  </div>
</div>
<script src="https://www.gismeteo.ua/ajax/getInformer/?hash=eh2o1p5h2iBW67" type="text/javascript"></script>
                        </div>
                    </c:when>
                    <c:when test="${article.article_id == 5}">
                        <div class="money">
                            <!--Currency Converter widget by FreeCurrencyRates.com -->

<div id='gcw_mainFjK7pDHEf' class='gcw_mainFjK7pDHEf'></div>
<script>function reloadFjK7pDHEf(){ var sc = document.getElementById('scFjK7pDHEf');if (sc) sc.parentNode.removeChild(sc);sc = document.createElement('script');sc.type = 'text/javascript';sc.charset = 'UTF-8';sc.async = true;sc.id='scFjK7pDHEf';sc.src = 'http://freecurrencyrates.com/ru/widget-vertical?iso=HRKEURUAHUSD&df=2&p=FjK7pDHEf&v=fits&source=fcr&width=230&width_title=0&firstrowvalue=1&thm=dddddd,ffffff,dddddd,dddddd,444444,dddddd,ffffff,0073EA,000000&title=%D0%9A%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B5%D1%80%20%D0%B2%D0%B0%D0%BB%D1%8E%D1%82&tzo=-180';var div = document.getElementById('gcw_mainFjK7pDHEf');div.parentNode.insertBefore(sc, div);} reloadFjK7pDHEf(); </script>
<!-- put custom styles here: .gcw_mainFjK7pDHEf{}, .gcw_headerFjK7pDHEf{}, .gcw_ratesFjK7pDHEf{}, .gcw_sourceFjK7pDHEf{} -->
<!--End of Currency Converter widget by FreeCurrencyRates.com -->
                        </div>
                        <div class="wether">
                            
                        <link rel="stylesheet" type="text/css" href="https://s1.gismeteo.ua/static/css/informer2/gs_informerClient.min.css">
<div id="gsInformerID-q25aL2F7UIeA51" class="gsInformer" style="width:192px;height:155px">
  <div class="gsIContent">
   <div id="cityLink">
     <a href="https://www.gismeteo.ua/weather-zadar-3301/" target="_blank">Погода в Задаре</a>
   <br />
<a href="https://www.gismeteo.ua/weather-sibenik-69292/" target="_blank">Погода в Шибенике</a>
   <br />
<a href="https://www.gismeteo.ua/weather-split-3302/" target="_blank">Погода в Сплите</a>
   <br />
<a href="https://www.gismeteo.ua/weather-makarska-69226/" target="_blank">Погода в Макарске</a>
   <br />
<a href="https://www.gismeteo.ua/weather-dubrovnik-3303/" target="_blank">Погода в Дубровнике</a>
   </div>
   <div class="gsLinks">
     <table>
       <tr>
         <td>
           <div class="leftCol">
             <a href="https://www.gismeteo.ua" target="_blank">
               <img alt="Gismeteo" title="Gismeteo" src="https://s1.gismeteo.ua/static/images/informer2/logo-mini2.png" align="absmiddle" border="0" />
               <span>Gismeteo</span>
             </a>
           </div>
           <div class="rightCol">
             <a href="https://www.gismeteo.ua" target="_blank">Погода на 2 недели</a>
           </div>
           </td>
        </tr>
      </table>
    </div>
  </div>
</div>
<script src="https://www.gismeteo.ua/ajax/getInformer/?hash=q25aL2F7UIeA51" type="text/javascript"></script>
                        </div>
                    </c:when>
                    <c:when test="${article.article_id == 6}">
                        <div class="money">
                            <!--Currency Converter widget by FreeCurrencyRates.com -->

<div id='gcw_mainFjK7pDHEf' class='gcw_mainFjK7pDHEf'></div>
<script>function reloadFjK7pDHEf(){ var sc = document.getElementById('scFjK7pDHEf');if (sc) sc.parentNode.removeChild(sc);sc = document.createElement('script');sc.type = 'text/javascript';sc.charset = 'UTF-8';sc.async = true;sc.id='scFjK7pDHEf';sc.src = 'http://freecurrencyrates.com/ru/widget-vertical?iso=EURUAHUSD&df=2&p=FjK7pDHEf&v=fits&source=fcr&width=230&width_title=0&firstrowvalue=1.00&thm=dddddd,ffffff,dddddd,dddddd,444444,dddddd,ffffff,0073EA,000000&title=%D0%9A%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B5%D1%80%20%D0%B2%D0%B0%D0%BB%D1%8E%D1%82&tzo=-180';var div = document.getElementById('gcw_mainFjK7pDHEf');div.parentNode.insertBefore(sc, div);} reloadFjK7pDHEf(); </script>
<!-- put custom styles here: .gcw_mainFjK7pDHEf{}, .gcw_headerFjK7pDHEf{}, .gcw_ratesFjK7pDHEf{}, .gcw_sourceFjK7pDHEf{} -->
<!--End of Currency Converter widget by FreeCurrencyRates.com -->
                        </div>
                        <div class="wether">
                            
                        <link rel="stylesheet" type="text/css" href="https://s1.gismeteo.ua/static/css/informer2/gs_informerClient.min.css">
<div id="gsInformerID-hPaNh6u37Dulwn" class="gsInformer" style="width:192px;height:77px">
  <div class="gsIContent">
   <div id="cityLink">
     <a href="https://www.gismeteo.ua/weather-khalkidiki-3636/" target="_blank">Погода в Халкидики</a>
   <br />
<a href="https://www.gismeteo.ua/weather-rhodes-3678/" target="_blank">Погода в Родосе</a>
   </div>
   <div class="gsLinks">
     <table>
       <tr>
         <td>
           <div class="leftCol">
             <a href="https://www.gismeteo.ua" target="_blank">
               <img alt="Gismeteo" title="Gismeteo" src="https://s1.gismeteo.ua/static/images/informer2/logo-mini2.png" align="absmiddle" border="0" />
               <span>Gismeteo</span>
             </a>
           </div>
           <div class="rightCol">
             <a href="https://www.gismeteo.ua" target="_blank">Погода на 2 недели</a>
           </div>
           </td>
        </tr>
      </table>
    </div>
  </div>
</div>
<script src="https://www.gismeteo.ua/ajax/getInformer/?hash=hPaNh6u37Dulwn" type="text/javascript"></script>
                        </div>
                    </c:when>
                    <c:otherwise></c:otherwise>
                </c:choose>
                                
                            </div>
                        </div>
                                   </div>
	</section>
    <div id="showItems" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                </div>
                    <h3 class="modal-title"></h3>
          </div>
        </div>
    </div>
</t:indexpage>


  <script src="${Constants.URL}bx/jquery.bxslider.min.js"></script>
	<script type="text/javascript">
		$(window).load(function(){
  $('.bxslider').bxSlider({
      adaptiveHeight: true,
      adaptiveWidth: true,
  minSlides: 3,
  maxSlides: 4,
  slideWidth: 300,
  slideMargin: 10
});
 initModal();
    });
                function initEvent(){
                $("#slider1 .buttons").click(function(){
                    initModal();
                });
                }
            function initModal() {
               $(".show-image-gal").click(function(){
                   $('#showItems').modal('toggle');
                   var img = "<img src=\""+$(this).attr("src")+"\"/>";
                   $(".modal-title").html($(this).attr("langru"));
                   $(".modal-body").html(img);

               });
            }         
	</script>