/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.baida.dp2021project;

import javax.servlet.http.HttpServletRequest;

public abstract class Application {

    protected Interface user;
    public Application() {
    }
    
    public void setUser(HttpServletRequest request){
        user = new User(
        request.getParameter("name"),
        request.getParameter("phone"),
        request.getParameter("email"),
        request.getParameter("gender"),
        request.getParameterValues("language"),
        request.getParameter("country"),false);
    }
    
    public abstract void setUser(HttpServletRequest request, boolean isCoolguy);
    
    final public Interface getUser(){
    return user;
    }
    
}