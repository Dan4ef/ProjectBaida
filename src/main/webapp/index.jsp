<%-- 
    Document   : index
    Created on : Feb 10, 2021, 8:06:54 PM
    Author     : danila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/reset.css">
            <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/style.css">
            <title>JSP Page</title>
        </head>
        <body>
        <header class="header">
            <div class="verti">
                <h1><a href="index.html">Лото навар</a></h1>
            </div>

            <menu id="menu">
                <input type="checkbox" id="toggle" />
                <label for="toggle" class="toggle" onclick> </label>
                <ul class="menu">
                    <li><a href="#">Гарантія</a></li>
                    <li><a href="#">Переможці</a></li>
                    <li><a href="#">Історія</a></li>
                    <li><a href="#">Наші партнери</a></li>
                    <li><a href="#">Наші вітділення</a></li>
                    <li><a href="#">Наші акціі</a></li>
                </ul>
            </menu>
        </header>   

    <article class="article">
        <div class="article__sect">
            <div>
                <h1>Це державна лотерея</h1>
                <p>Бажаєте прийняти участь в грі?</p>
            </div>

            <div class="article__buttons">
                <form action="<%=request.getContextPath()%>/form" method="get"><button class="submit" type="submit">Так, починаємо!</button></form>
            </div>
        </div>

    </article>

    <div class="section">
        <div class="text text1">
            <img src="assets/img/rebenok_reka_mechty_127495_1920x1080.jpg" class="text__img" alt="photo does not exist" />
            <div class="text__block">
                <p style="color: black;"><b>Put something here</b></p>
                <p>Lorem</p>

                <p class="put">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat corrupti commodi minima veritatis laboriosam, a quo accusantium distinctio molestiae earum rem, ad in. Vitae, rerum nesciunt! Ad hic architecto dicta.
                </p>
            </div>
        </div>
        <div class="text text2">
            <img src="assets/img/pejzazh_art_doroga_127350_1920x1080.jpg" class="text__img" alt="photo does not exist" />
            <div class="text__block">
                <p style="color: black;"><b>Put something here</b></p>
                <p>Lorem</p>

                <p class="put">
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptate suscipit perspiciatis, placeat animi officia perferendis omnis libero sed architecto numquam, delectus soluta alias quo porro totam in necessitatibus rerum. Fugiat?
                </p>
            </div>

        </div>
        <div class="text text3">
            <img src="assets/img/texture.jpg" class="text__img" alt="photo does not exist" />
            <div class="text__block">
                <p style="color: black;"><b>Put something here</b></p>
                <p>Lorem</p>

                <p class="put">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Id nemo soluta veniam dolore totam consequatur quas deleniti itaque ad ipsa similique, accusamus eius dignissimos doloribus quibusdam fugit, facere molestias quaerat.
                </p>
            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="footer__item">
            <h3>Random Stuff</h3>
            <ul class="footer__item1">
                <li><a href="#">Etiam feugiat condimentum</a></li>
                <li><a href="#">Aliquam imperdiet suscipit odio</a></li>
                <li><a href="#">Sed porttitor cras in erat nec</a></li>
                <li><a href="#">Felis varius pellentesque potenti</a></li>
                <li><a href="#">Nullam scelerisque blandit leo</a></li>
            </ul>
        </div>
        <div class="footer__item">
            <h3>Random Stuff</h3>
            <ul class="footer__item2">
                <li><a href="#">Etiam feugiat condimentum</a></li>
                <li><a href="#">Aliquam imperdiet suscipit odio</a></li>
                <li><a href="#">Sed porttitor cras in erat nec</a></li>
                <li><a href="#">Felis varius pellentesque potenti</a></li>
                <li><a href="#">Nullam scelerisque blandit leo</a></li>
            </ul>
        </div>
        <div class="footer__item">
            <h3>Random Stuff</h3>
            <ul class="footer__item3">
                <li><a href="#">Etiam feugiat condimentum</a></li>
                <li><a href="#">Aliquam imperdiet suscipit odio</a></li>
                <li><a href="#">Sed porttitor cras in erat nec</a></li>
                <li><a href="#">Felis varius pellentesque potenti</a></li>
                <li><a href="#">Nullam scelerisque blandit leo</a></li>
            </ul>
        </div>

        <div class="footer__item contact">
            <h3>Contact Us</h3>
            <div class="cards">
                <a href="#" class="brands"><span class="label"><img src="img/inst.png" alt="nan"/></span></a>
                <a href="#" class="brands "><span class="label"><img src="img/face.png" alt="nan" /></span></a>
                <a href="#" class="brands"><span class="label"><img src="img/twit.png" alt="nan"/></span></a>
                <a href="#" class="brands"><span class="label"><img src="img/drib.png" alt="nan"/></span></a>
                <a href="#" class="brands"><span class="label"><img src="img/pint.png" alt="nan"/></span></a>
            </div>
            <p>
                1234 Fictional Road<br /> Nashville, TN 00000<br /> (800) 555-0000
            </p>
        </div>


    </footer>
    <section class="row">
        <div class="copyright">
            &copy; Untitled. All rights reserved
        </div>
    </section>
        </body>
    </html>
</f:view>
