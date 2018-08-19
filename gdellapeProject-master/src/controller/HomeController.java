package controller;

import view.TemplateController;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;
import java.util.HashMap;
import java.lang.String;

public class HomeController extends baseController {
//    protected static DataSource ds;


    protected void prova (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.init(request,response);



        TemplateController.process("index.ftl", datamodel, response, getServletContext());
    }



    





    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        prova(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        prova(request, response);

//        TemplateController.process("index.ftl",this.datamodel,response,getServletContext());


    }

}
