<%-- 
    Document   : home.jsp
    Created on : 05.03.2021, 18:35:39
    Author     : danila
--%>

<%@page import="org.obrii.mit.dp2021.baida.dp2021project.Data"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/reset.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/table.css">
        
        <title>home</title>
    </head>
    <body id="home__main">
        <h1><a href="index.jsp">Users</a></h1>
        <%
        List<Data> dataList = (List<Data>) request.getAttribute("data");
        %>
        <table class="styled-table">
              <thead>
                  <tr>
                      <th>id</th>
                      <th>name</th>
                      <th>age</th>
                      <th>update</th>
                      <th>delete</th>
                  </tr>
              </thead>
              <tbody>
                  <%for (Data data : dataList) {%>
                  <tr>
                      <td><%=data.getId()%></td>
                      <td><%=data.getName()%></td>
                      <td><%=data.getAge()%></td>
                      <td>
                          <form action="update.jsp" method="post">
                              <input type="hidden" name="id" value="<%=data.getId()%>">
                              <input type="hidden" name="name" value="<%=data.getName()%>">
                              <input type="hidden" name="age" value="<%=data.getAge()%>">
                              <input class="table_btn"type="submit" value="Update">
                          </form>
                      </td>
                      <td>
                          <form action="<%=request.getContextPath()%>/forma" method="get">
                              <input type="hidden" name="id" value="<%=data.getId()%>">
                              <input class="table_btn" type="submit" value="Delete">
                          </form>
                      </td>
                  </tr>
                  <%}%>
                  <tr>
                      <td colspan="4">
                          <form action= "<%=request.getContextPath()%>/Data" method="get">
                              <input class="table_btn" type="text" name="search">
                              <input class="table_btn" type="submit" value="Search data">
                          </form>
                      </td>
                      <td colspan="3">
                          <form action="forma.jsp" methd="get">
                              <input class="table_btn" type="submit" value="Add data" >
                          </form>
                      </td>
                  </tr>
              </tbody>
          </table>
    </body>
</html>