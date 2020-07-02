<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%--<!DOCTYPE HTML>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Главная</title>--%>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>--%>
    <%--<link href="../../resources/css/style.css" rel="stylesheet">--%>
    <%--<style type="text/css">--%>
        <%--#maket {--%>
            <%--width: 100%; /* Ширина всей таблицы в процентах */--%>
        <%--}--%>
        <%--#maket TD {--%>
            <%--vertical-align: top; /* Вертикальное выравнивание в ячейках */--%>
        <%--}--%>
        <%--TD#leftcol {--%>
            <%--left: 100%; /* Ширина левой колонки в пикселах */--%>

        <%--}--%>
        <%--TD#righttcol {--%>
            <%--right: 100%;--%>

        <%--}--%>
    <%--</style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<div id = "wrap">--%>
    <%--<header>--%>

        <%--<img src="../../resources/img/logo.jpg">--%>

        <%--<div class = "title">MyChat</div>--%>
        <%--<ul class = "menu">--%>

            <%--<li><a href = "#">Контакти</a></li>--%>
            <%--<li><a href = "#">Про нас</a></li>--%>
            <%--<li><a href = "#">Послуги</a></li>--%>
            <%--<li><a href = "#">Блог</a></li>--%>
        <%--</ul>--%>
    <%--</header>--%>
<%--</div>--%>

<%--<div class="store-container">--%>

    <%--<div class="user-info">--%>

        <%--&lt;%&ndash;<div class="user-container">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<span id="username" th:utext="${username}"></span>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<img width="100%" alt="User image" src="/images/${user.photoUrl}">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<h3>NAME: ${user.username} </h3>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<h3>@MAIL: ${user.mail} </h3>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<h3>number: ${user.number} </h3>&ndash;%&gt;--%>

            <%--<table border="1">--%>
                <%--<tr><td rowspan="2"><img src="/images/${user.photoUrl}"></td>--%>
                <%--<td>NickName:</td><td>${user.username}</td></tr>--%>
                <%--<tr><td>Telephone:</td><td>${user.number}</td></tr>--%>
                <%--<tr><td>@Mail:</td><td>${user.mail}</td></tr>--%>

            <%--</table>--%>

    <%--</div>--%>

    <%--<div>--%>

        <%--<form:form class="form-horizontal"--%>
                   <%--action="/store/profile" method="POST" enctype="multipart/form-data">--%>
            <%--<div class="form-group">--%>
                <%--<label for="file" class="control-label col-sm-2">Select img:</label>--%>
                <%--<div class="col-sm-10">--%>
                    <%--<input name="image" id="image" type="file">--%>
                <%--</div>--%>

                <%--<div class="group">--%>
                    <%--<button type="submit"> ОПУБЛІКУВАТИ</button>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</form:form>--%>

    <%--</div>--%>


    <%--<hr/>--%>

    <%--<div class="login">--%>

        <%--<form:form action="/store/${user.id}" method="post" >--%>
            <%--<div class="input-post">--%>
                <%--<input type="text" id="post" autocomplete="off"--%>
                       <%--name="text"--%>
                       <%--placeholder="Type a post..."/>--%>
                <%--<button type="submit"> Send </button>--%>
            <%--</div>--%>
        <%--</form:form>--%>

    <%--</div>--%>


    <%--<div>--%>
        <%--<table cellspacing="0" cellpadding="0" id="maket">--%>
            <%--<tr>--%>
                <%--<td id="leftcol">--%>
                    <%--<c:forEach var="post" items="${post}">--%>
                    <%--<p> Text: ${post.text}</p>--%>
                    <%--<p> Data:${post.date}</p>--%>
                    <%--<p> NickName: ${post.whoUser}<p>--%>
                    <%--</c:forEach>--%>
                <%--</td>--%>
                <%--<td id ="righttcol">--%>
                    <%--<c:forEach var="posts" items="${posts}">--%>
                    <%--<p> Text: ${posts.text}</p>--%>
                    <%--<p>  Data:${posts.date}</p>--%>
                    <%--<p> NickName: ${posts.whomUser}<p>--%>
                    <%--</c:forEach>--%>
                <%--</td>--%>
            <%--</tr>--%>

        <%--</table>--%>
    <%--</div>--%>
<%--</div>--%>




<%--</body>--%>
<%--</html>--%>



<!DOCTYPE HTML>
<html>
<head>
    <title>Главная</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link href="../../resources/css/style.css" rel="stylesheet">
    <style type="text/css">
        #maket {
            width: 100%; /* Ширина всей таблицы в процентах */
        }
        #maket TD {
            vertical-align: top; /* Вертикальное выравнивание в ячейках */
        }
        TD#leftcol {
            left: 100%; /* Ширина левой колонки в пикселах */

        }
        TD#righttcol {
            right: 100%;

        }
    </style>
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

<div class="card">
    <img class="avatar" src="/images/${user.photoUrl}">
    <h1>${user.username}</h1>
    <h3 class="titles">Telephone: ${user.number}</h3>
    <h3 class="titles">@Mail: ${user.mail}</h3>
    <%--<h3 class="titles">Country: ${user.country}</h3>--%>

    <div style="margin: 24px 0;">
        <!--
            <a href="#"><i class="fa fa-dribbble"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-facebook"></i></a>
        -->
    </div>
    <p><button class="buttons"><a href="/news/${user.id}">Повідомлення</a></button></p>
    <p><button class="buttons"><a href="/store/profile/edit">Редагувати</a></button></p>
</div>
<div class="login">
<form:form class="form-horizontal"
           action="/store/profile" method="POST" enctype="multipart/form-data">
    <div class="form-group">
        <label for="file" class="control-label col-sm-2">Select img:</label>
        <input name="image" id="image" type="file" class="inputfile">
        <div class="group">
            <button class="button" type="submit"> ОПУБЛІКУВАТИ</button>
        </div>
    </div>
</form:form>
</div>
<hr>


<div class="store-container">
    <div class="login">
        <form:form action="/store/${user.id}" method="post" >
            <div class="input-post">
                <input class="post" type="text" id="post" autocomplete="off"
                       name="text"
                       placeholder="Type a post..."/>
                <table>
                    <tr><button class="button" type="submit"> Send </button></tr>
                    <tr><button class="button" type="reset"> Clear </button></tr>
                </table>
            </div>
        </form:form>

    </div>
<div>
<c:forEach var="post" items="${post}">
    <div class="posts">

            <table class="table" cellspacing="0" cellpadding="0" id="maket">
                <tr>
                    <td id="leftcool">
                        <p class="nick">${post.whoUser}</p>
                    <td id="rightcool">
                        <p class="nick">${post.date}</p>
                    </td>
                </tr>
            </table>
            <hr>
            <p class="text"> ${post.text}</p>


    </div>
</c:forEach>
    </div>

    <!--

    <div>
        <table cellspacing="0" cellpadding="0" id="maket">
            <tr>
                <td id="leftcol">
                    <c:forEach var="post" items="${post}">
                    <p> Text: ${post.text}</p>
                    <p> Data:${post.date}</p>
                    <p> NickName: ${post.whoUser}<p>
                    </c:forEach>
                </td>
                <td id ="righttcol">
                    <c:forEach var="posts" items="${posts}">
                    <p> Text: ${posts.text}</p>
                    <p>  Data:${posts.date}</p>
                    <p> NickName: ${posts.whomUser}<p>
                    </c:forEach>
                </td>
            </tr>

        </table>
    </div>
-->
</div>




</body>
</html>




