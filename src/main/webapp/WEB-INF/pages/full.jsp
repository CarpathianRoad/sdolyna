<%-- 
    Document   : full
    Created on : Mar 11, 2016, 2:20:26 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:indexpage>
    
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
				<div class="gallery-items col-md-12 main-text">
                                    <div id="slider1">
                                            <a class="buttons prev" href="#">&#60;</a>
                                            <div class="viewport">
                                                    <ul class="overview">
                                                        <c:forEach items="${article.article_images}" var="image">
                                                                    <li><img src="${Constants.URL}${image.image_url}"/></li>
                                                        </c:forEach>
                                                    </ul>
                                            </div>
                                            <a class="buttons next" href="#">&#62;</a>
                                    </div>
				</div>	
		</div>
                </div>
	</section>
</t:indexpage>

<script type="text/javascript" src="${Constants.URL}js/jquery.tinycarousel.js"></script>

	<script type="text/javascript">
		$(document).ready(function()
		{
			$('#slider1').tinycarousel();
		});
	</script>