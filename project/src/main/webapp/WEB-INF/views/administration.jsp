<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--<meta charset="utf-8">--%>
<%--<title>Log in with your account</title>--%>

<%--<link href="../../resources/css/style.css" rel="stylesheet">--%>
<%--</head>--%>

<%--<body>--%>
<%--<div>--%>
<%--<table>--%>
<%--<thead>--%>
<%--<th>ID</th>--%>
<%--<th>UserName</th>--%>
<%--<th>Password</th>--%>
<%--<th>Role</th>--%>
<%--</thead>--%>
<%--<c:forEach items="${allUsers}" var="user">--%>
<%--<tr>--%>
<%--<td>${user.id}</td>--%>
<%--<td>${user.username}</td>--%>
<%--<td>${user.password}</td>--%>
<%--<td>--%>
<%--<c:forEach items="${user.roles}" var="role">${role.name}; </c:forEach>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form action="${pageContext.request.contextPath}/admin" method="post">--%>
<%--<input type="hidden" name="userId" value="${user.id}"/>--%>
<%--<input type="hidden" name="action" value="delete"/>--%>
<%--<button class="button" type="submit">Delete</button>--%>
<%--<input type="hidden" name="action" value="message"/>--%>
<%--<a href="/news/${user.id}"> <button class="button" type="submit">Mesage</button> </a>--%>


<%--<a href="/store/${user.id}" target="_blank"> СТОРЫНКА</a>--%>
<%--</form>--%>

<%--</td>--%>

<%--</tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>
<%--<--%>
<%--<a href="/">Главная</a>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Log in with your account</title>

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

    <div class="navigation">
        <ul class="navigations">
            <li><a href="#" onclick="history.back();return false;">Назад</a></li>
            <li><a href = "/">Головна</a></li>
            <li><a href = "/store/profile">Моя сторінка</a></li>
            <li><a href = "/admin">Контакти</a></li>
        </ul>

    </div>

</div>
<hr>

<div>

    <c:forEach items="${allUsers}" var="user">
        <div class="posts">
            <table>
                <tr>
                    <td>${user.id}</td>
                    <td><img class="avatars" src="/images/${user.photoUrl}"></td>
                    <td>${user.username}</td>
                    <td>

                        <div class="navigation" >
                            <ul class="navigations">
                                <li style="display: inline-block"><a href="/news/${user.id}">Повідомлення</a></li>
                                <li style="display: inline-block"><a href="/store/${user.id}">Сторінка</a></li>
                                <li style="display: inline-block">
                                    <form:form action="/admins/${user.id}" method="post">
                                        <input type="hidden" name="action" value="delete"/>
                                    <button class="button" type="submit">Delete</button>
                                    </form:form>
                                </li>
                            </ul>
                        </div>
                    </td>

                </tr>
            </table>
        </div>
    </c:forEach>
</div>
</body>
</html>