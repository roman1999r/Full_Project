<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<meta charset="utf-8">--%>
    <%--<title>Регистрация</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<div>--%>
    <%--<form:form method="POST" modelAttribute="userForm">--%>
        <%--<h2>Регистрация</h2>--%>
        <%--<div>--%>
            <%--<form:input type="text" path="username" placeholder="Username"--%>
                        <%--autofocus="true"></form:input>--%>
            <%--<form:errors path="username"></form:errors>--%>
                <%--${usernameError}--%>
        <%--</div>--%>
        <%--<div>--%>
            <%--<form:input type="password" path="password" placeholder="Password"></form:input>--%>
        <%--</div>--%>
        <%--<div>--%>
            <%--<form:input type="password" path="passwordConfirm"--%>
                        <%--placeholder="Confirm your password"></form:input>--%>
            <%--<form:errors path="password"></form:errors>--%>
                <%--${passwordError}--%>
        <%--</div>--%>
        <%--<button type="submit">Зарегистрироваться</button>--%>
    <%--</form:form>--%>
    <%--<a href="/">Главная</a>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>



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

         <div>
             <form:form method="POST" modelAttribute="userForm">
              <h2 class="head" title>Реєстрація</h2>
                 <div class="login">
              <form action="">

                <div class="group">
                    <form:input type="text" path="username" placeholder="Username"
                                autofocus="true"></form:input>
                    <form:errors path="username"></form:errors>
                        ${usernameError}
                 </div>

                <div class="group">
                    <form:input type="password" path="password" placeholder="Password"></form:input>
                </div>

                <div class="group">
                    <form:input type="password" path="passwordConfirm"
                                placeholder="Confirm your password"></form:input>
                    <form:errors path="password"></form:errors>
                        ${passwordError}
                </div>

                <div class="group">
                    <form:input type="text" path="number" placeholder="Telephone"></form:input>
                </div>

                <div class="group">
                    <form:input type="email" path="mail" placeholder="@Main"></form:input>
                </div>
                    <div class="group">
                      <button class="button" type="submit"> Registration</button>
                   </div>

                </form>
                 </div>
             </form:form>
         </div>

        </div>

    </body>
</html>