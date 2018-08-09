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


public class HomeController extends HttpServlet {
    protected static DataSource ds;
    protected Map<String, Object> datamodel = new HashMap<>();




    @Override
    public void init() throws ServletException{

        super.init();



    }





    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        TemplateController.process("index.ftl",this.datamodel,response,getServletContext());


    }

}
