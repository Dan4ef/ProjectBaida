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
            <form action="<%=request.getContextPath()%>/form" method="post">
                Your name <br>
                <input type="text" name="name" placeholder="Your name"><br/><br>
                 
                Number:<br>
                <input name="phone" type="tel" pattern="+380\d\d\d\d\d\d\d\d\d" placeholder="+380123456789" minlength="13" maxlength="13" required><br/><br>

                Email: <br>
                <input name="email" type="email" required><br/><br>

                Gender: 
                <input type="radio" name="gender" value="male">Male    
                <input type="radio" name="gender" value="female">Female<br/><br>
                
                <div>
                    Your languages: 
                    <div class="checkb">
                        <input type="checkbox" name="language" value="Ukrainian">Ukrainian
                        <input type="checkbox" name="language" value="Russian">Russian
                        <input type="checkbox" name="language" value="English">English
                        <input type="checkbox" name="language" value="German">German <br/><br>
                    </div>
                </div>
                <div>
                    Country: 
                    <select name="country">
                        <option value="Ukraine">Ukraine</option>
                        <option value="Russia">Russia</option>
                        <option value="United Kingdoms">United Kingdoms</option>
                        <option value="Germany">Germany</option>
                    </select><br/><br>
                </div>
                Receive news of updates?
                <input type="checkbox" name="isCoolguy" value="on"><br>
                <br><button class="button" type="submit">Submit</button></br>
            </form>
        </body>
    </html>
</f:view>
