<%-- 
    Document   : submit
    Created on : Feb 10, 2021, 7:43:16 PM
    Author     : danila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="org.obrii.mit.dp2021.baida.dp2021project.Interface"%>
<%@page import="org.obrii.mit.dp2021.baida.dp2021project.Application"%>

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
            <div class="form_wrapper">
                <%

                    Application app = (Application)request.getAttribute("app");
                    Interface user = app.getUser();
                %>
                <p><%= user.getName()%> your data is:</p><br>
                
                <p>Phone:
                <%
                  if (user.getPhone() != null) {
                    out.print(user.getPhone());
                  } else {
                     out.print("Nowhere)");
                  }
                %>
                </p><br>
                
                <p>Email:
                <%
                  if (user.getEmail() != null) {
                    out.print(user.getEmail());
                  } else {
                     out.print("out top config");
                  }
                %>
                </p><br>
                
                <p>Gender: 
                <%
                String gender = user.getGender();
                if (gender == null) {
                    out.print("unknown");
                }
                else out.print(gender);
                %>
                </p><br>

                <p>Languages:
                <%
                List<String> languages = user.getLanguage();
                if (languages != null) {
                for (int i = 0; i < languages.size(); i++) {
                        out.print(languages.get(i)+" ");
                    }                 
                    }else {
                    out.print("no choose");
                    }
                %>
                </p><br>
                <br>
                <p>Country: 
                <%
                String country = user.getCountry();
                if (country == null) {
                    out.print("unknown");
                }
                else out.print(country);
                %>
                </p>
                <br>
                <p>
                <%=
                    user.getIsCoolguy()
                %>
                </p>
            </div> 

          <form action="<%=request.getContextPath()%>">
            <button class="submit" type="submit">Повернутися на головну</button>
          </form>
        </body>
    </html>
</f:view>
