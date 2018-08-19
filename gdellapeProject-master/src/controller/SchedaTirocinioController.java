package controller;

import dao.exception.DaoException;
import dao.implementation.OffertaTirocinioDaoImp;
import model.OffertaTirocinio;
import view.TemplateController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SchedaTirocinioController  extends baseController{











    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {







    }

    protected void setpage (HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException,DaoException {
        try {
            Integer Idtrof = Integer.parseInt((String)request.getParameter("ID"));
            OffertaTirocinioDaoImp ofdao = new OffertaTirocinioDaoImp();

            OffertaTirocinio Oftr = ofdao.getOffertatrByID(Idtrof);

            ofdao.destroy();

            datamodel.put("Titolo",Oftr.getTitolo());
            datamodel.put("DescrizioneBreve",Oftr.getDescrizioneBreve());
            datamodel.put("Descrizione",Oftr.getDescrizione());
            datamodel.put("Orario",Oftr.getOrario());
            datamodel.put("DurataOre",Oftr.getDurataOra());
            datamodel.put("DurataMesi",Oftr.getDurataMesi());
            datamodel.put("PeriodoInizio",Oftr.getPeriodoInizio());
            datamodel.put("PeriodoFine",Oftr.getPeriodoFine());
            datamodel.put("Modalita",Oftr.getModalita());






        }catch (Exception e){
            e.printStackTrace();

        }




    }
}
