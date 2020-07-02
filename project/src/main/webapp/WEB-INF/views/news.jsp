<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>--%>
<%--<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>--%>


<%--<!DOCTYPE html>--%>
<%--<html xmlns:th="http://www.thymeleaf.org">--%>
<%--<head>--%>
    <%--<title>Spring Boot WebSocket</title>--%>
    <%--<link rel="stylesheet" th:href="@{/css/main.css}" />--%>

    <%--<!-- https://cdnjs.com/libraries/sockjs-client -->--%>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>--%>
    <%--<!-- https://cdnjs.com/libraries/stomp.js/ -->--%>
    <%--<script  src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>--%>
    <%--<style type="text/css">--%>
        <%--#maket {--%>
            <%--width: 100%; /* Ширина всей таблицы в процентах */--%>
        <%--}--%>
        <%--#maket TD {--%>
            <%--vertical-align: top; /* Вертикальное выравнивание в ячейках */--%>
        <%--}--%>
        <%--TD#leftcol {--%>
             <%--left: 100%; /* Ширина левой колонки в пикселах */--%>
             <%--background: yellow;--%>
         <%--}--%>
        <%--TD#righttcol {--%>
            <%--background: chartreuse;--%>
        <%--}--%>
    <%--</style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div id="chat-container">--%>
    <%--<div class="chat-header">--%>
        <%--<div class="user-container">--%>
            <%--<span id="username" th:utext="${username}"></span>--%>
        <%--</div>--%>
        <%--<h3>MESSAGES WITH ${user.username} </h3>--%>
        <%--<a href="/" target="_blank"> <button type="submit">ГЛАВНАЯ</button> </a>--%>
        <%--<a href="/admin" target="_blank"> <button type="submit">КОНТАКТИ</button> </a>--%>
    <%--</div>--%>

    <%--<hr/>--%>

    <%--<div id="connecting">Connecting...</div>--%>
    <%--<ul id="messageArea">--%>
    <%--</ul>--%>
    <%--<form:form action="/news/${user.id}" method="post" >--%>
        <%--<div class="input-message">--%>
            <%--<input type="text" id="message" autocomplete="off"--%>
                   <%--name="text"--%>
                   <%--placeholder="Type a message..."/>--%>
            <%--<button type="submit">Send</button>--%>
        <%--</div>--%>
    <%--</form:form>--%>

    <%--<div>--%>
        <%--<table cellspacing="0" cellpadding="0" id="maket">--%>
            <%--<tr>--%>
                <%--<td id="leftcol">--%>
                    <%--<c:forEach var="message" items="${message}">--%>
                    <%--<p> Text: ${message.text}</p>--%>
                    <%--<p> Data:${message.date}</p>--%>
                    <%--<H5> NickName: ${message.user}</H5>--%>
                    <%--</c:forEach>--%>
                <%--</td>--%>
                <%--<td id ="righttcol">--%>
                <%--<c:forEach var="message1" items="${message1}">--%>
                    <%--<p> Text: ${message1.text}</p>--%>
                    <%--<p>  Data:${message1.date}</p>--%>
                    <%--<H5> NickName: ${message1.user}</H5>--%>
                <%--</c:forEach>--%>
            <%--</td>--%>
            <%--</tr>--%>

        <%--</table>--%>
    <%--</div>--%>
<%--</div>--%>

<%--<script th:src="@{/js/main.js}"></script>--%>

<%--</body>--%>
<%--</html>--%>




<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Spring Boot WebSocket</title>
    <link href="../../resources/css/style.css" rel="stylesheet">

    <!-- https://cdnjs.com/libraries/sockjs-client -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
    <!-- https://cdnjs.com/libraries/stomp.js/ -->
    <script  src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
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
</div>


<%--<div id="chat-container">--%>
    <%--<div class="login">--%>
        <%--<div class="user-container">--%>
            <%--<span id="username" th:utext="${username}"></span>--%>
        <%--</div>--%>
        <%--<h3>MESSAGES WITH ${user.username} </h3>--%>
        <%--<a href="/" target="_blank"> <button type="submit">ГЛАВНАЯ</button> </a>--%>
        <%--<a href="/admin" target="_blank"> <button type="submit">КОНТАКТИ</button> </a>--%>
    <%--</div>--%>

<div class="navigation">
    <ul class="navigations">
        <h3>MESSAGES WITH ${user.username} </h3>
        <li><a href="#" onclick="history.back();return false;">Назад</a></li>
        <li><a href = "/">Головна</a></li>
        <li><a href = "/store/profile">Моя сторінка</a></li>
        <li><a href = "/admin">Контакти</a></li>
    </ul>

</div>



    <hr/>
    <div class="login">
        <ul id="messageArea">
        </ul>
        <form:form action="/news/${user.id}" method="post" >
            <div class="input-message">
                <input type="text" id="message" autocomplete="off"
                       name="text"
                       placeholder="Type a message..."/>
                <button class="button" type="submit">Send</button>
            </div>
        </form:form>
    </div>

    <div class="chat">
        <table cellspacing="0" cellpadding="0" id="maket">
            <tr>
                <td id="leftcol">
                    <c:forEach var="message" items="${message}">

                        <div class="message">
                            <table class="table">
                                <tr>
                                    <td id="leftcool">
                                        <p class="nick">${message.user}</p>
                                    <td id="rightcool">
                                        <p class="nick">${message.date}</p>
                                    </td>
                                </tr>
                            </table>
                            <p class="text"> ${message.text}</p>

                        </div>
                    </c:forEach>
                </td>
                <td id ="righttcol">
                    <c:forEach var="message1" items="${message1}">

                        <div class="messages">
                            <table class="table">
                                <tr>
                                    <td id="leftcool">
                                        <p class="nick">${message1.date}</p>
                                    <td id="rightcool">
                                        <p class="nicks">${message1.user}</p>
                                    </td>
                                </tr>
                            </table>
                            <p class="texts"> ${message1.text}</p>

                        </div>
                    </c:forEach>
                </td>
            </tr>

        </table>

    </div>
</div>

<script th:src="@{/js/main.js}"></script>

</body>
</html>