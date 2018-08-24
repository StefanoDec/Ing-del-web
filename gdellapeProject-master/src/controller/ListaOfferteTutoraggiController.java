package controller;

import dao.implementation.OffertaTirocinioDaoImp;
import dao.implementation.UserDaoImp;
import model.OffertaTirocinio;
import model.User;
import view.TemplateController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class ListaOfferteTutoraggiController extends baseController {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.init(request,response);
        OfferteTut(request,response);
        TemplateController.process("offerte-tutoraggi.ftl", datamodel, response, getServletContext());

    }
    protected void OfferteTut(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        try {
            OffertaTirocinioDaoImp daouser = new OffertaTirocinioDaoImp();

            List<OffertaTirocinio> Offerte = daouser.getAllOffertatr();
            daouser.destroy();
















            datamodel.put("offerte",Offerte);



        }catch (Exception e ){
            e.printStackTrace();
        }
    }
}
