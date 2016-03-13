<%-- 
    Document   : redirect
    Created on : Aug 22, 2015, 7:20:44 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="Constants" class="ua.aits.sdolyna.functions.Constants" scope="session"/>
<%
    String redirectURL = Constants.URL+"ru/index";
    response.sendRedirect(redirectURL);
%>
