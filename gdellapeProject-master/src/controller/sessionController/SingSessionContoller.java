package controller.sessionController;

import com.sun.deploy.net.HttpRequest;
import dao.implementation.AziendaDaoImp;
import dao.implementation.UserDaoImp;
import dao.interfaces.UserDao;
import model.Admin;
import model.Azienda;
import model.Tirocinante;
import model.User;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.util.Calendar;


public class SingSessionContoller {
    private static SingSessionContoller ourInstance = new SingSessionContoller();

    public static SingSessionContoller getInstance() {
        return ourInstance;
    }

    private SingSessionContoller() {

    }

    //sono minuti
    private int time_life = 15;


    //la uso alla login
    public HttpSession initSession(HttpServletRequest request, Object account) {
        HttpSession session = request.getSession(true);

        if(account instanceof Tirocinante){
            Tirocinante tirocinante =(Tirocinante)account;
            session.setAttribute("IDUnivoco",tirocinante.getIDTirocinante());
            session.setAttribute("Tipo","Tirocinante");

        }else if(account instanceof Admin)
        {
            Admin admin = (Admin)account;
            session.setAttribute("IDUnivoco",admin.getIDadmin());
            session.setAttribute("Tipo","Admin");

        }

        else if(account instanceof Azienda)
        {
            Azienda azienda = (Azienda)account;
            session.setAttribute("IDunivoco",azienda.getIDAzienda());
            session.setAttribute("Tipo","Azienda");
        }
        //poi lo vediamo
        session.setMaxInactiveInterval(time_life * 60);



        return session;
    }


    public void destroy(HttpSession session) {
        session.invalidate();


    }

    //prima di fare la loging mi serve una funzione che sanifica i dati inseriti

    public boolean isValidSession(HttpServletRequest request)
    {
        return(request.getSession(false)!= null);
    }


    public Object getAccount(HttpServletRequest request )
    {
        HttpSession session = request.getSession(false);

        String tipo = (String)session.getAttribute("Tipo");
        int id = (int)session.getAttribute("IDUnivoco");

        switch (tipo) {
            case "Admin":
                try {


                }catch (Exception e){
                    e.printStackTrace();
                }

                break;
            case "Azienda":

                try{
                    AziendaDaoImp daoImp =

                }catch(Exception e){
                    e.printStackTrace();
                }
                break;
            case "Tirocinante":
                try{

                }catch(Exception e){
                    e.printStackTrace();
                }
                break;


        }
    }

}
