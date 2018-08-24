package controller.adm;

import controller.sessionController.SingSessionContoller;
import dao.exception.DaoException;
import dao.implementation.AziendaDaoImp;
import dao.implementation.TirocinanteDaoImp;
import dao.implementation.UserDaoImp;
import model.Azienda;
import model.Tirocinante;
import model.User;
import view.TemplateController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class RegistrationController extends HttpServlet  {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        }
        protected void registrationAzienda(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException,DaoException
        {
            try {


                User user = new User();
                Azienda azienda = new Azienda();

                user.setEmail((String) request.getParameter("Email"));
                user.setPassword((String) request.getParameter("Password"));
                user.setTipologiaAccount(3);

                azienda.setRagioneSociale((String) request.getParameter("NomeAzienda"));
                azienda.setIndirizzoSedeLegale((String) request.getParameter("SedeLegale"));
                azienda.setCFiscalePIva((String) request.getParameter("PartitaIVA"));
                azienda.setNomeLegaleRappresentante((String) request.getParameter("NomeRappresentante"));
                azienda.setCognomeResponsabileConvenzione((String) request.getParameter("CognomeRappresentante"));
                azienda.setNomeResponsabileConvenzione((String) request.getParameter("NomeResponsabile"));
                azienda.setCognomeResponsabileConvenzione((String) request.getParameter("CognomeResponsabile"));
                azienda.setTelefonoResponsabileConvenzione((String) request.getParameter("NumeroTelefonoResponsabile"));
                azienda.setEmailResponsabileConvenzione((String) request.getParameter("NumeroTelefonoResponsabile"));

                UserDaoImp daouser = new UserDaoImp();

                daouser.setUser(user);
                User userconid = daouser.getUserByMail(user.getEmail());
                daouser.destroy();

                AziendaDaoImp daoAzienda = new AziendaDaoImp();

                daoAzienda.setAzienda(azienda, userconid);
            }catch (Exception e){
                //pagina di errore
            }








        }
        protected void AccountEsistente(HttpServletResponse response,HttpServletRequest request)throws IOException,ServletException,DaoException
        {
            SingSessionContoller session = SingSessionContoller.getInstance();
            String email = (String)request.getParameter("Email");
            if(session.isAccount(email)){
                //pagina di errore
            }



        }

        protected void logged(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{


        SingSessionContoller session = SingSessionContoller.getInstance();
        if(session.isValidSession(request)){
            //pagina di e di errore
        }

        }
    protected void registrationTirocinante(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException,DaoException {
        try {


            User user = new User();
            Tirocinante tirocinante = new Tirocinante();

            user.setEmail((String) request.getParameter("Email"));
            user.setPassword((String) request.getParameter("Password"));
            user.setTipologiaAccount(2);

            tirocinante.setNome(request.getParameter("Nome"));
            tirocinante.setCognome(request.getParameter("Cognome"));
            tirocinante.setLuogoDiNascita(request.getParameter("LuogoNascita"));
            tirocinante.setProvinciaDiNascita(request.getParameter("ProvinciaNascita"));

            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            try {
                Date parser = sdf.parse((String) request.getParameter("DataNascita"));
                tirocinante.setDataDiNascita(parser);
            } catch (ParseException e) {
                e.printStackTrace();
            }

            tirocinante.setLuogoDiResidenza(request.getParameter("LuogoResidenza"));
            tirocinante.setProvinciaDiResidenza(request.getParameter("ProvinciaResidenza"));
            tirocinante.setCodiceFiscale(request.getParameter("CodiceFiscale"));
            tirocinante.setTelefono(request.getParameter("NumeroTelefono"));

            String CKstudCorso = (String) request.getParameter("CKStudenteCorsoLaurea");
            if (CKstudCorso.equals("1")) {
                tirocinante.setCorsoDiLaurea(request.getParameter("StudenteCorsoLaurea"));
            }

            String CKdipuni = (String) request.getParameter("CKDiplomaUniversitario");
            if (CKdipuni.equals("1")) {
                tirocinante.setDiplomaUniversitario(request.getParameter("DiplomaUniversitario"));
            }


            String CKlaureain = (String) request.getParameter("CKLaureaIn");
            if (CKlaureain.equals("1")) {
                tirocinante.setLaureatoUniversitario(request.getParameter("LaureaIn"));
            }

            String CKdotRic = (String) request.getParameter("CKDottoratoRicerca");
            if (CKdotRic.equals("1")) {
                tirocinante.setDottoratoDiRicerca(request.getParameter("DottoratoRicerca"));
            }

            String CKalSc = (String) request.getParameter("CKScuolaAltro");
            if (CKalSc.equals("1")) {
                tirocinante.setScuolaAltro(request.getParameter("ScuolaAltro"));
            }

            String CKha = (String) request.getParameter("Handicap");
            if (CKha.equals("Si")) {
                tirocinante.setHandicap(true);
            }


            UserDaoImp daouser = new UserDaoImp();

            daouser.setUser(user);

            User userconid = daouser.getUserByMail(user.getEmail());

            daouser.destroy();

            tirocinante.setUser(userconid.getIDUser());


            TirocinanteDaoImp daotr = new TirocinanteDaoImp();

            daotr.setTirocinante(tirocinante);
        } catch (Exception e) {
            //pagina di errore
        }
    }



}
