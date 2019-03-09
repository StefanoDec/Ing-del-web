package controller.adm.Azienda;

import controller.sessionController.SingSessionContoller;
import controller.utility.Validation;
import dao.exception.DaoException;
import dao.implementation.OffertaTirocinioDaoImp;
import dao.implementation.TirocinanteDaoImp;
import dao.implementation.TirocinioDaoImp;
import dao.implementation.UserDaoImp;
import model.*;
import view.TemplateController;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.*;
import java.io.IOException;
import java.util.*;

public class GestioneModuliAzienda {
    protected Map<String, Object> datamodel;
    protected HttpServletRequest request;
    protected HttpServletResponse response;
    protected ServletContext context;
    private Azienda azienda;

    public  GestioneModuliAzienda(Map<String, Object> datamodel, HttpServletRequest request, HttpServletResponse response, ServletContext context){
        this.datamodel = datamodel;
        this.request = request;
        this.response = response;
        this.context = context;
        this.azienda = null;
    }

    private void ritornaAzienda(HttpServletRequest request, HttpServletResponse response){
        try {
            SingSessionContoller session = SingSessionContoller.getInstance();
            this.azienda = session.getAzienda(request,response);
        }
        catch (IOException e){
            e.printStackTrace();
        }
    }

    private void fillConvenzione(){
        //TODO Implementare controllo data di convenzione
        datamodel.put("DataConvenzione", azienda.getDataConvenzione());
        datamodel.put("DataUpdate", azienda.getUpdateDate());
        datamodel.put("DataCreate", azienda.getCreateDate());
    }

    private List<OffertaTirocinio> ritornaOfferte(){
        OffertaTirocinioDaoImp daoOfferte = new OffertaTirocinioDaoImp();
        List<OffertaTirocinio> offertaTirocinios = new ArrayList<>();
        try {
            offertaTirocinios.addAll(daoOfferte.getOffertatrBYAzienda(azienda));
            daoOfferte.destroy();
        }
        catch (DaoException e ){
            e.printStackTrace();
        }
        //System.out.println(offertaTirocinios.toString());
        return offertaTirocinios;
    }

    private List<Tirocinio> ritornaTirocinii(List<OffertaTirocinio> offertaTirocinios){
        TirocinioDaoImp daoTirocinio = new TirocinioDaoImp();
        List<Tirocinio> listaTirocini = new ArrayList<>();
        for(OffertaTirocinio offertaTirocinio : offertaTirocinios){
            try {
                listaTirocini.addAll(daoTirocinio.getTrByOfferta(offertaTirocinio));
                daoTirocinio.destroy();
            } catch (DaoException e) {
                e.printStackTrace();
            }
        }
        //System.out.println(listaTirocini.toString());
        return listaTirocini;
    }

    private List<Tirocinante> ritornaTirocinanti(List<Tirocinio> listaTirocini) {
        TirocinanteDaoImp daoTirocinante = new TirocinanteDaoImp();
        List<Tirocinante> listaTirocinanti = new ArrayList<>();
        for (Tirocinio tirocinio: listaTirocini){
            try {
                listaTirocinanti.add(daoTirocinante.getTirocianteByID(tirocinio.getTirocinante()));
                daoTirocinante.destroy();
            } catch (DaoException e) {
                e.printStackTrace();
            }
        }
        //System.out.println(listaTirocinanti.toString());
        return  listaTirocinanti;
    }

    private void creaDatamodel(List<Tirocinante> tirocinantes, List<OffertaTirocinio> offertaTirocinios, List<Tirocinio> tirocinios){
        List<Object> lista = new ArrayList<>();
        int idOfferta = 0;
        int idTircinante = 0;
        for (Tirocinio tirocinio : tirocinios){
            Map<String, Object> mappa = new HashMap<String, Object>();
            idOfferta = tirocinio.getOffertaTirocinio();
            idTircinante = tirocinio.getTirocinante();

            mappa.put("tirocinio", tirocinio);
            for (OffertaTirocinio offertaTirocinio: offertaTirocinios){
                if (offertaTirocinio.getIDOffertaTirocinio() == idOfferta){
                    mappa.put("offerta", offertaTirocinio);
                    break;
                }
            }
            for (Tirocinante tirocinante: tirocinantes){
                if (tirocinante.getIDTirocinante() == idTircinante){
                    mappa.put("tirocinante", tirocinante);
                    UserDaoImp daoUser = new UserDaoImp();
                    try {
                        User user = daoUser.getUserByid(tirocinante.getUser());
                        mappa.put("userMail", user.getEmail());
                        daoUser.destroy();
                    } catch (DaoException e) {
                        e.printStackTrace();
                    }

                    break;
                }
            }
            lista.add(mappa);
        }
        datamodel.put("Lista", lista);

    }
    public void get(){
        ritornaAzienda(request,response);
        List<OffertaTirocinio> offert = ritornaOfferte();
        List<Tirocinio> tiro = ritornaTirocinii(offert);
        List<Tirocinante> tirocinante = ritornaTirocinanti(tiro);
        creaDatamodel(tirocinante,offert,tiro);
        fillConvenzione();
        TemplateController.process("moduli-aziendale.ftl", datamodel, response, context);
    }

    public void post(){
        Map params = request.getParameterMap();
        List<String> parametri = new ArrayList<String>();
        for (Object o : params.keySet()) {
            String key = (String) o;
            String value = ((String[]) params.get(key))[0];
            if (key.startsWith("fin_") && value.equals("1")){
                parametri.add(key);
            }
        }
        System.out.println(parametri);
    }

}