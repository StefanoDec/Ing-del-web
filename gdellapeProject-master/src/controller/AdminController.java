package controller;

import controller.sessionController.SingSessionContoller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.ServerException;

public class AdminController extends baseController {
    protected void accessAdmin(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
        SingSessionContoller session = SingSessionContoller.getInstance();

            if(session.isAdmin(request)){

            }else {
                throw new ServerException("Errore accesso al backend");
                //pagina errore
            }
        }

    @Override
    protected void init(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException {
    super.init(request,response);
    accessAdmin(request,response);
    }

}
