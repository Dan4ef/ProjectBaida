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
            <title>JSP Page</title>
        </head>
        <body>
            <% User user = (User) request.getAttribute("user");%>
            <h1><h:outputText value="Hello World!"/></h1>
            <p class="inner__text">

            Dear <span>
              <%=user.getName()%> <%=user.getSurname()%>
            </span>. 
            Your car with <span>
              <%
                  if (user.getConfiguration() != null) {
                    out.print(user.getConfiguration());
                  } else {
                     out.print("out top config");
                  }
              %>
            </span> is processing and will have been deliver in one of our spots in 
            <span>
              <%
                  if (user.getCountries() != null) {
                    out.print(user.getCountries());
                  } else {
                     out.print("Nowhere)");
                  }
              %>
            </span>.
          </p>

          <form action="<%=request.getContextPath()%>">
            <button class="submit" type="submit">go home</button>
          </form>
        </body>
    </html>
</f:view>
