package controller;

import controller.sessionController.SingSessionContoller;
import dao.exception.DaoException;
import org.apache.catalina.Session;
import view.TemplateController;

import javax.print.attribute.standard.RequestingUserName;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialException;

import java.io.IOException;

public class BackEndController extends baseController  {

    protected void access(HttpServletRequest request, HttpServletResponse response) throws DaoException,IOException,SerialException{
        SingSessionContoller session = SingSessionContoller.getInstance();
        String Url = request.getServletPath();
        datamodel.put("url",Url);
        TemplateController.process("foglioprove.ftl", datamodel, response, getServletContext());

    }
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try { access(request,response);


}catch (Exception e){
    e.printStackTrace();
}


    }






}
