<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>--%>

<%--<!DOCTYPE HTML>--%>
<%--<html>--%>
<%--<head>--%>
<%--<title>Главная</title>--%>
<%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>--%>
<%--<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div>--%>
<%--<h3>${pageContext.request.userPrincipal.name}</h3>--%>
<%--<sec:authorize access="!isAuthenticated()">--%>
<%--<h4><a href="/login">Войти</a></h4>--%>
<%--<h4><a href="/registration">Зарегистрироваться</a></h4>--%>
<%--</sec:authorize>--%>
<%--<sec:authorize access="isAuthenticated()">--%>
<%--<h4><a href="/logout">Выйти</a></h4>--%>
<%--</sec:authorize>--%>
<%--<h4><a href="/admin">Пользователи (только админ)</a></h4>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!DOCTYPE HTML>
<html lang="ua">
<head>
    <title>Главная</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link href="../../resources/css/style.css" rel="stylesheet">
</head>
<body>

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


    <div class="login">
        <div class="head">
            <sec:authorize access="isAuthenticated()">
                <h3> Ви авторизувались як ${pageContext.request.userPrincipal.name}</h3>
            </sec:authorize>
            <sec:authorize access="!isAuthenticated()">
                <h3>Ми раді Вас вітати у MyChat</h3>
                <h4>Якщо ви зареєстровані, то вам сюди... <a style="color: darkorange" href="/login">Войти</a></h4>
                <h4>Ви хочете зареєструватися? Переходьте сюди... <a style="color: darkorange" href="/registration">Зареєструватися</a></h4>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <h4><a style="color: darkorange" href="/logout">Выйти</a></h4>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <h4><a style="color: darkorange" href="/admin">Пользователи</a></h4>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <h4><a style="color: darkorange" href="/store/profile">Моя сторінка</a></h4>
            </sec:authorize>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <h4><a style="color: darkorange" href="/admins">ADMINKA</a></h4>
            </sec:authorize>
        </div>
    </div>
</div>
</body>
</html>