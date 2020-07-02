

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link href="../../resources/css/style.css" rel="stylesheet">
    <title>Регистрация</title>
</head>

<body>
<div class="main">
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
    <div class="navigation">
        <ul class="navigations">
            <li><a href="#" onclick="history.back();return false;">Назад</a></li>
            <li><a href = "/">Головна</a></li>
            <li><a href = "/store/profile">Моя сторінка</a></li>
            <li><a href = "/admin">Контакти</a></li>
        </ul>

    </div>
    <div>
        <h2 class="head" title>Редагування профілю</h2>
        <form:form method="POST" modelAttribute="userForm">
            <div class="login">

                <form action="">

                    <div class="group">
                        <h3>User Name</h3>
                        <input name="username" type="text" path="username" placeholder="UserName"
                                    autofocus="true">
                    </div>

                    <div class="group">
                        <h3>User Number</h3>
                        <input name="number" type="text" path="number" placeholder="Telephone">
                    </div>

                    <div class="group">
                        <h3>User Mail</h3>
                        <input name="mail" type="email" path="mail" placeholder="Mail">
                    </div>

                    <div class="group">

                        <button class="button" type="submit"> Редагувати</button>
                    </div>

                </form>
            </div>
        </form:form>

        <%--<div class="group">--%>
            <%--<form:form class="form-horizontal"--%>
                       <%--action="/store/profile" method="POST" enctype="multipart/form-data">--%>
                <%--<div class="form-group">--%>
                    <%--<label for="file" class="control-label col-sm-2">Select img:</label>--%>
                    <%--<div class="col-sm-10">--%>
                        <%--<input name="image" id="image" type="file">--%>
                    <%--</div>--%>

                    <%--<div class="group">--%>
                        <%--<button class="button" type="submit"> Опублікувати</button>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</form:form>--%>
        <%--</div>--%>

    </div>
</div>
</body>
</html>