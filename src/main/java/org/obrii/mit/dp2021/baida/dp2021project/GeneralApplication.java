/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.baida.dp2021project;

import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author danila
 */
public class GeneralApplication extends Application {

    @Override
    public void setUser(HttpServletRequest request, boolean isCoolguy) {
        user = new User(
                
                request.getParameter("name"),
                request.getParameter("phone"),
                request.getParameter("email"),
                request.getParameter("gender"),
                request.getParameterValues("language"),
                request.getParameter("country"),isCoolguy);
    }
}
