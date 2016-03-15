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
<section id="about" class="home-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					
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
				<div class="col-md-12 main-text">
                                   ${article.article_text_ru} 
				</div>		
				<div id="gallery" class="gallery-items col-md-12 main-text">
                                    <div class="bxslider">
                                        <c:forEach items="${article.article_images}" var="image">
                                            <li><img class="show-image-gal" langru="${image.image_title_ru}" langen="${image.image_title_en}" src="${Constants.URL}${image.image_url}"/></li>
                                        </c:forEach>
</div>
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
  minSlides: 3,
  maxSlides: 4,
  slideWidth: 250,
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