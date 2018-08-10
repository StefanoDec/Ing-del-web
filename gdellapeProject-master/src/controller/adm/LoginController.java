package controller.adm;

import controller.sessionController.SingSessionContoller;
import dao.exception.DaoException;
import view.TemplateController;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


public class LoginController extends HttpServlet {
    public String Email;
    public String Password;

    protected Map<String, Object> datamodel = new HashMap<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException {
        this.Email=(String)request.getParameter("Email");
        this.Password=(String)request.getParameter("Password");
       try{ this.login(request,response);}
       catch (Exception e){
           throw new IOException("Account inesistente",e);
        }

        }




    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        TemplateController.process("login.ftl", datamodel, response, getServletContext());





    }



    protected void login(HttpServletRequest request, HttpServletResponse response) throws DaoException{
        Boolean b = SingSessionContoller.getInstance().login(Email,Password);
        System.out.println(b);


    }
}
