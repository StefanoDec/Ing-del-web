package controller;

import view.TemplateController;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;
import java.lang.String;

public class HomeController extends HttpServlet {
//    protected static DataSource ds;
    protected Map<String, Object> datamodel = new HashMap<>();

    protected void prova (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.datamodel.put("user", "mario");

        this.datamodel.put("nameServlet","Home");

        TemplateController.process("index.ftl", datamodel, response, getServletContext());
    }



//    @Override
//    public void init() throws ServletException{
//
//        super.init();
//
//
//
//    }





    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        prova(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        prova(request, response);

//        TemplateController.process("index.ftl",this.datamodel,response,getServletContext());


    }

}
