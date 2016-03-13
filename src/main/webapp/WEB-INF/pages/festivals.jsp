<%-- 
    Document   : festivals
    Created on : Mar 11, 2016, 2:20:58 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:indexpage>
<section id="main" class="home-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					
						<div class="section-heading text-center">
						<div class="wow bounceInDown" data-wow-delay="0.2s">
							<h2>Фестивали</h2>
						</div>
						</div>
					
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row page-scroll">	
				<div class="col-md-10 festival-table">
                                   <table class="table red-hr">
                                    <thead class="thead-inverse">
                                      <tr>
                                        <th>Дата</th>
                                        <th>Название</th>
                                        <th>Галерея</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${festivals}" var="item">
                                            <c:out value="${name}"/><p>
                                      <tr>
                                        <td><a href="${Constants.URL}${lan}/articles/full/${item.article_id}">${item.article_date} - ${item.article_date_end}</a></td>
                                        <td><a href="${Constants.URL}${lan}/articles/full/${item.article_id}">${item.article_title_ru}</a></td>
                                        <td>
                                            <img src="${Constants.URL}img/gallery/ukraine.jpg"/>
                                            <img src="${Constants.URL}img/gallery/cr.jpg"/>
                                            <img src="${Constants.URL}img/gallery/gr.jpg"/>
                                            <img src="${Constants.URL}img/gallery/hu.jpg"/>
                                            <img src="${Constants.URL}img/gallery/slk.jpg"/>
                                        </td>
                                      </tr>
                                         </c:forEach>
                                    </tbody>
                                  </table> 
				</div>		
		</div>
                </div>
	</section>
</t:indexpage>
