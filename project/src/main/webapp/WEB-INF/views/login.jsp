<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<meta charset="utf-8">--%>
    <%--<title>Log in with your account</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<sec:authorize access="isAuthenticated()">--%>
    <%--<% response.sendRedirect("/"); %>--%>
<%--</sec:authorize>--%>
<%--<div>--%>
    <%--<form method="POST" action="/login">--%>
        <%--<h2>Вход в систему</h2>--%>
        <%--<div>--%>
            <%--<input name="username" type="text" placeholder="Username"--%>
                   <%--autofocus="true"/>--%>
            <%--<input name="password" type="password" placeholder="Password"/>--%>
            <%--<button type="submit">Log In</button>--%>
            <%--<h4><a href="/registration">Зарегистрироваться</a></h4>--%>
        <%--</div>--%>
    <%--</form>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>


<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ua">
<head>
    <meta charset="utf-8">
    <link href="../../resources/css/style.css" rel="stylesheet">
    <title>login</title>
    

</head>

<body>


<sec:authorize access="isAuthenticated()">
    <% response.sendRedirect("/"); %>
</sec:authorize>

<div class="main">
    <form method="POST" action="/login">


        <div id = "wrap">
            <header>

                <img class="img" src="../../resources/img/logo.jpg">

                <div class = "title">MyChat</div>
                <ul class = "menu">

                    <li><a href = "#">Контакти</a></li>
                    <li><a href = "#">Про нас</a></li>
                    <li><a href = "#">Послуги</a></li>
                    <li><a href = "#">Блог</a></li>
                </ul>
            </header>


        </div>
        <h2 class="head">Вхід у MyChat </h2>
        <h5>Ще не зареєстровані? Вам сюди... <a  style="color: darkorange" href="/registration">Registration</a></h5>
        <div class="login">
            <input class="input" name="username" type="text" placeholder="Username"
                   autofocus="true"/>
            <input class="input" name="password" type="password" placeholder="Password"/>
            <button class="button" type="submit">Log In</button>

        </div>
    </form>
</div>

</body>
</html>