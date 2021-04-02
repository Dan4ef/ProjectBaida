package org.obrii.mit.dp2021.baida.dp2021project;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author danila
 */
@WebServlet(name = "FormUPD", urlPatterns = {"/forma"})
public class FormServlet extends HttpServlet {

    DataServlet DBServlet = new DataServlet();

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        DBServlet = new DataServlet();
        DBServlet.init(config);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DBServlet.doDelete(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DBServlet.doPut(request, response);
    }
}
