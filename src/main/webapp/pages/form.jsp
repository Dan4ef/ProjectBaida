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
            <title>JSP Page</title>
        </head>
        <body>
            <h1><h:outputText value="Hello World!"/></h1>
            <form action="<%=request.getContextPath()%>/form" method="post">
                <div class="form__blck">
              <span class="form__input">Please, select your country(-s):</span>

                    <div class="input__outer">
                      <div class="form__wrapper">
                        <input class="form__input" type="checkbox" name="countries" value="England" id="england">
                        <label class="form__label form__label--check" for="england">England</label>
                      </div>
                      <div class="form__wrapper">
                        <input class="form__input" type="checkbox" name="countries" value="French" id="french">
                        <label class="form__label form__label--check" for="french">French</label>
                      </div>
                      <div class="form__wrapper">
                        <input class="form__input" type="checkbox" name="countries" value="Deutch" id="deutch">
                        <label class="form__label form__label--check" for="deutch">Deutch</label>
                      </div>
                      <div class="form__wrapper">
                        <input class="form__input" type="checkbox" name="countries" value="Ukraine" id="ukraine">
                        <label class="form__label form__label--check" for="ukraine">Ukraine</label>
                      </div>                            
                    </div>
                  </div>
                <button type="submit">LOx 20</button>
            </form>
        </body>
    </html>
</f:view>
