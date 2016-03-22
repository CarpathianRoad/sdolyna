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
				<div class="col-md-12 festival-table">
                                    <div id="mobile-content">
                                        <ul>
                                        <c:forEach items="${festivals}" var="item">
                                            <c:out value="${name}"/><p>
                                        <li>
                                            <a href="${Constants.URL}${lan}/articles/full/${item.article_id}">${item.article_date} - ${item.article_date_end}<br>
                                            ${item.article_title_ru} 
                                                <c:if test="${not empty item.article_images}">
                                                    <a href="${Constants.URL}${lan}/articles/full/${item.article_id}#gallery"><i style="margin-left: 10px;" class="fa fa-picture-o"></i></a>
                                                </c:if>
                                            </a>
                                            </li>
                                         </c:forEach>
                                            
                                        </ul>
                                    </div>
                                   <table id="table-content"  class="table red-hr">
                                    <thead class="thead-inverse">
                                      <tr>
                                        <th style="width:30%">Дата</th>
                                        <th style="width:70%">Название</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${festivals}" var="item">
                                            <c:out value="${name}"/><p>
                                      <tr>
                                        <td><a href="${Constants.URL}${lan}/articles/full/${item.article_id}">${item.article_date} - ${item.article_date_end}</a></td>
                                        <td><a href="${Constants.URL}${lan}/articles/full/${item.article_id}">${item.article_title_ru}</a><c:if test="${not empty item.article_images}">
                                                    <a href="${Constants.URL}${lan}/articles/full/${item.article_id}#gallery"><i style="margin-left: -23px;" class="fa fa-picture-o"></i></a>
                                                </c:if></td>
                                        
                                      </tr>
                                         </c:forEach>
                                    </tbody>
                                  </table> 
				</div>		
		</div>
                </div>
	</section>
</t:indexpage>
