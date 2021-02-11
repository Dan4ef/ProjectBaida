<%-- 
    Document   : submit
    Created on : Feb 10, 2021, 7:43:16 PM
    Author     : danila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List, org.obrii.mit.dp2021.baida.dp2021project.User"%>

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
            <% User user = (User) request.getAttribute("user");%>
            <h1><h:outputText value="Hello World!"/></h1>
            <p class="inner__text">

            <span>
              <%=user.getName()%>
            </span>
            Ми підтвердили вашу пошту 
            <span>
              <%
                  if (user.getEmail() != null) {
                    out.print(user.getEmail());
                  } else {
                     out.print("out top config");
                  }
              %>
            </span> і ваш телефон
            <span>
              <%
                  if (user.getPhone() != null) {
                    out.print(user.getPhone());
                  } else {
                     out.print("Nowhere)");
                  }
              %>
            </span>
            <span>, а також дату народження
              <%
                  if (user.getPhone() != null) {
                    out.print(user.getDate());
                  } else {
                     out.print("Nowhere)");
                  }
              %>
            </span>. На жаль, ви не виграли жодного призу.
          </p>

          <form action="<%=request.getContextPath()%>">
            <button class="submit" type="submit">Повернутися на головну</button>
          </form>
        </body>
    </html>
</f:view>
