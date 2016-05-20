<%-- 
    Document   : 500
    Created on : Apr 7, 2015, 9:52:03 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<t:indexpage>
    <style>
        .login-block{
            text-align: center;
        }
        .login-block h3 {
            font: 20px 'Open Sans';
            font-weight: 600;
            color: rgb(84,182,157);
        }
    </style>
    <section id="content">
        <div class="login-block">
            <img src="${Constants.URL}img/500.png" />
            <h3>We got a bug report and fix it soon.</h3>
        </div>
    </section>
</t:indexpage>