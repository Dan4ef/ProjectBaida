<%-- 
    Document   : form
    Created on : Feb 10, 2021, 7:27:30 PM
    Author     : danila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/new.css">
            <title>JSP Page</title>
        </head>
        <body>
            <h1><h:outputText value="Hello World!"/></h1>
            <form action="<%=request.getContextPath()%>/form" method="post">
                <fieldset title="necessarily">
                    <p>
                        <label>Ім'я(англійською)</label>
                        <input name="name" type="text" required>
                    </p>

                    <p>
                        <label>Телефон</label>
                        <input name="phone" type="tel" pattern="+380\d\d\d\d\d\d\d\d\d" placeholder="+380123456789" minlength="13" maxlength="13" required>
                    </p>

                    <p>
                        <label>Пошта</label>
                        <input name="email" type="email" required>
                    </p>
                
                    <p>
                        <label>Дата нарождення</label>
                        <input name="date" type="date">
                    </p>
                </fieldset>

            <p>
                <label id="license">Прочитайте<a href="#" id="lic"> ліцензійну угоду</a></label>
                <input name="contract" type="checkbox" required>Вже
            </p>

            <p>
                <input type="reset" value="Очистити">
            </p>
                <button type="submit">Відправити запит</button>
            </form>
        </body>
    </html>
</f:view>
