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

    <%--<div class="user-container">--%>
    <%--<span id="username" th:utext="${username}"></span>--%>
    <%--</div>--%>
    <%--<img width="100%" alt="User image" src="/images/${user.photoUrl}">--%>
    <%--<h3>NAME: ${user.username} </h3>--%>
    <%--<h3>@MAIL: ${user.mail} </h3>--%>
    <%--<h3>number: ${user.number} </h3>--%>

     <%--</div>--%>

      <%--&lt;%&ndash;<div>&ndash;%&gt;--%>

          <%--&lt;%&ndash;<form:form class="form-horizontal"&ndash;%&gt;--%>
                     <%--&lt;%&ndash;action="/store/profile" method="POST" enctype="multipart/form-data">&ndash;%&gt;--%>
              <%--&lt;%&ndash;<div class="form-group">&ndash;%&gt;--%>
                  <%--&lt;%&ndash;<label for="file" class="control-label col-sm-2">Select img:</label>&ndash;%&gt;--%>
                  <%--&lt;%&ndash;<div class="col-sm-10">&ndash;%&gt;--%>
                      <%--&lt;%&ndash;<input name="image" id="image" type="file">&ndash;%&gt;--%>
                  <%--&lt;%&ndash;</div>&ndash;%&gt;--%>

                  <%--&lt;%&ndash;<div class="group">&ndash;%&gt;--%>
                      <%--&lt;%&ndash;<button type="submit"> ОПУБЛІКУВАТИ</button>&ndash;%&gt;--%>
                  <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
              <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
          <%--&lt;%&ndash;</form:form>&ndash;%&gt;--%>

      <%--&lt;%&ndash;</div>&ndash;%&gt;--%>


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

<!--
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css">

<title>Две колонки</title>
</head>
<body>

<div class="login">


<div class="cards">
<img src="img/1.jpg" alt="John" style="width:100%">
<h1>HTML CSS</h1>
<p class="titles">CEO & Founder, Example</p>
<p>Harvard University</p>
<as href="#"><i class="fa fa-dribbble"></i></as>
<as href="#"><i class="fa fa-twitter"></i></as>
<as href="#"><i class="fa fa-linkedin"></i></as>
<as href="#"><i class="fa fa-facebook"></i></as>
<p><buttons>Contact</button></p>
</div>
</body>
</html>



-->


<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="../../resources/css/style.css" rel="stylesheet">
    <style>
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
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 300px;
            margin: auto;
            text-align: center;
            font-family: arial;
        }

        .titles {
            color: grey;
            font-size: 18px;
        }

        .buttons {
            border: none;
            outline: 0;
            display: inline-block;
            padding: 8px;
            color: white;
            background-color: darkorange;
            text-align: center;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
        }

        as {
            text-decoration: none;
            font-size: 22px;
            color: orange;
        }

        buttons:hover, a:hover {
            opacity: 0.7;
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
        <c:forEach var="posts" items="${posts}">
            <div class="posts">

                <table class="table" cellspacing="0" cellpadding="0" id="maket">
                    <tr>
                        <td id="leftcool">
                            <p class="nick">${posts.whoUser}</p>
                        <td id="rightcool">
                            <p class="nick">${posts.date}</p>
                        </td>
                    </tr>
                </table>
                <hr>
                <p class="text"> ${posts.text}</p>


            </div>
        </c:forEach>
        <%--<c:forEach var="post" items="${posts}">--%>
            <%--<div class="posts">--%>

                <%--<table class="table" cellspacing="0" cellpadding="0" id="maket">--%>
                    <%--<tr>--%>
                        <%--<td id="leftcool">--%>
                            <%--<p class="nick">${posts.user}</p>--%>
                        <%--<td id="rightcool">--%>
                            <%--<p class="nick">${posts.date}</p>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                <%--</table>--%>
                <%--<hr>--%>
                <%--<p class="text"> ${posts.text}</p>--%>


            <%--</div>--%>
        <%--</c:forEach>--%>

    </div>

</div>

</body>
</html>








