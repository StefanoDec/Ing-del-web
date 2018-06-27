package it.univaq.f4i.iw.examples;

import it.univaq.f4i.iw.framework.result.HTMLResult;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class hello1 extends HttpServlet {
    private String Username;
    private String Password;
    public void init() throws ServletException
    {


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {






    }






    public void destroy(){
        //do nothing
    }
}
