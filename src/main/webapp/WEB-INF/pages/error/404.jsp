<%-- 
    Document   : 404
    Created on : Apr 3, 2015, 10:43:14 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="Constants" class="ua.aits.Carpath.functions.Constants" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>404 page</title>
        <style>
            body {
                background-color: #DBDCDC;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <a href="${Constants.URL}en/index">
            <img src="${Constants.URL}img/404.png"/>
        </a>
    </body>
</html>
