package controller.adm;

import controller.adm.Azienda.GestioneModuliAzienda;
import controller.baseController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BackEndModuliController extends baseController {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        super.init(request,response);
        int tipo= (int)request.getAttribute("tipo");
        if (tipo == 3){
            System.out.println("Devo entra dentro la pagina del azienda");
            //TemplateController.process("moduli-aziendale.ftl", datamodel, response, getServletContext());
            GestioneModuliAzienda moduliaz = new GestioneModuliAzienda(datamodel, request, response, getServletContext());
            System.out.println("creato");
            moduliaz.get();
            System.out.println("getttato");

        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws  ServletException, IOException{
        super.init(request,response);
        int tipo= (int)request.getAttribute("tipo");
        if (tipo == 3){
            System.out.println("Devo entra dentro la pagina del azienda");
            GestioneModuliAzienda moduliaz = new GestioneModuliAzienda(datamodel, request, response, getServletContext());
            moduliaz.post();
        }
    }
}