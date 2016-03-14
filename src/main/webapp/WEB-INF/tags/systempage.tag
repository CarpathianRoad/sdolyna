<%-- 
    Document   : systempage
    Created on : Mar 7, 2016, 5:13:13 PM
    Author     : kiwi
--%>

<%@tag description="Oblenergo - Admin page" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="Constants" class="ua.aits.sdolyna.functions.Constants" scope="session"/>
<c:if test="${sessionScope.user == null && pageContext.request.servletPath.substring(pageContext.request.servletPath.lastIndexOf('/')) != '/Login.jsp'}">
    <style>
        body {
            display:none;
        }
    </style>
    <script>window.location.href = "${Constants.URL}system/login";</script>
</c:if>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Управление проектом</title>
    <link href="${Constants.URL}css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
    <link href="${Constants.URL}css/main.css" rel="stylesheet">
  </head>

  <body>

<nav class="navbar navbar-own">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        <a class="navbar-brand" href="#"></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="main-header-title">
      <ul class="nav nav-pills navbar-left">
        <li id="category1">
            <a href="${Constants.URL}system/index/1">
                <span>Фестивали</span>
            </a>
        </li>
        <li id="index">
            <a href="${Constants.URL}system/index">
                <span>Страны</span>
            </a>
        </li>
        <li style="display:none" id="category2">
            <a href="${Constants.URL}system/index/2">
                <span>Другое</span>
            </a>
        </li>
        <li id="category3">
            <a href="${Constants.URL}system/index/3">
                <span>Детские лагеря</span>
            </a>
        </li>
      </ul>
      <ul class="nav nav-pills navbar-right">
          
          <li><a href="${Constants.URL}system/logout.do" class="btn-exit">Выход</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    <div class="container">
      <jsp:doBody/>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <script src="${Constants.URL}js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var index = 6;
            if('${Constants.URL}' === '/') { index = 5; }
            var url = window.location.href.split('/')[index];
            if(url === "" || url === "0" || url === undefined) {
                $("#index").addClass('active');
            }
            else {
                $("#category"+url).addClass('active');
            }
        });
    </script>
  </body>
</html>