<%-- 
    Document   : forma.jsp
    Created on : 05.03.2021, 18:10:11
    Author     : danila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/reset.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/table.css">
        <title>forma</title>
    </head>
    <body id="forma__main">
        <h1><a href="index.jsp">Fill the form</a></h1>
        
        
        <form action= "<%=request.getContextPath()%>/Data" method="post">
            <input type="hidden" name="id" value="0">
            Name:   <input type="text" placeholder="Your name" name="name" required></br>
            Age:    <input type="text" placeholder="Your age" name="age" maxlength="9" required></br>
            <input type="submit" value="Create Data">
        </form>
    </body>
</html>
