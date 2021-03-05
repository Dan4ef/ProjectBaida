<%-- 
    Document   : update
    Created on : 05.03.2021, 18:40:34
    Author     : danila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/reset.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/table.css">
    
    </head>
     <body id="update__main">
         <h1><a href="index.jsp">Update</a></h1>
        
        <form action= "<%=request.getContextPath()%>/forma" method="post"">
            <input type="hidden" name="id" value="<%=request.getParameter("id")%>">
            Name:    <input type="text" placeholder="Your name" name="name" required value="<%=request.getParameter("name")%>"></br>
            Age:    <input type="text" placeholder="Your age" name="age" maxlength="9" required value="<%=request.getParameter("age")%>"></br>
            <input type="submit" value="Update Data">
        </form>
    </body>
</html>
