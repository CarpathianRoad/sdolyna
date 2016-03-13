<%-- 
    Document   : index
    Created on : Mar 7, 2016, 4:06:05 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<t:systempage>
    
    <div class="page-header main-page-title second-order-title">
      <div class="container">
      </div>
    </div>
     <div class="row article-list">
                    <div class="col-lg-12">
                        <h4>${title}</h4>
                        <c:if test="${category != '0'}">
                            <div class="add-button-panel"><button class="btn btn-success btn-mini" id="sudmitData" type="submit"><a href="${Constants.URL}system/add/${category}">+ Добавить</a></button></div>
                        
                        </c:if>
                        <div class="row">
                	<div class="col-lg-12">
                    	<div class="table-responsive">
                        	<table class="article-table table table-bordered table-hover table-striped">
                            	<thead>
                                	<tr>
                                    	<th class="text-center" style="width:3%">#</th>
                                    	<th style="width:40%">Название</th>
                                    	<th class="text-center" style="width:10%">Языки</th>
                                    	<th style="width:3%;"></th>
                                    	<th style="width:3%;"></th>
                                	</tr>
                            	</thead>
                            	<tbody>
                                	<c:if test="${empty articles}">
                                    	<tr><td colspan="6">No articles in this category...</td></tr>
                                	</c:if>
                                	<c:set var="count" value="1" scope="page" />
                                	<c:forEach items="${articles}" var="item">
                                            <tr class="table-item">
                                                <td class="text-center counter">${count}</td>
                                                <td>${item.article_title_ru}</td>
                                                <td class="text-center">${item.article_lang}</td>
                                                <td class="text-center"><a href="<c:url value="/system/edit/${item.article_id}"/>"><img class="article-buttons" src="${Constants.URL}img/edit.png" /></a></td>
                                                <td class="text-center"><a href="<c:url value="/system/delete/${item.article_id}"/>"><img class="article-buttons" src="${Constants.URL}img/delete.png" /></a></td>
                                            </tr>
                                    	<c:set var="count" value="${count + 1}" scope="page"/>
                                	</c:forEach>
                            	</tbody>
                        	</table>
                    	</div>
                	</div>
            	</div>
                    </div>
                </div>
    <div id="showItems" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Замовлення №</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                       <table class="table table-hover table-bordered table-items">
                            <thead>
                              <tr class="tr-head">
                                <th class="text-center">Артикул</th>
                                <th>Назва</th>
                                <th class="text-center" style="width: 9%;">Кількість</th>
                                <th class="text-center" style="width: 10%;">Ціна ГРН</th>
                                <th class="text-center">Сума ГРН</th>
                              </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                        <div class="modal-summ"></div>
                        <label>Примітка:</label>
                        <div class="modal-descr"></div>
                    </div>
                </div>
          </div>
        </div>
    </div>
</t:systempage>