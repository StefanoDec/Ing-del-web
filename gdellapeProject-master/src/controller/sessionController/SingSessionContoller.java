package controller.sessionController;

import dao.implementation.UserDaoImp;
import dao.interfaces.UserDao;
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

    //da definire
    private int time_life = 10;


    //la uso alla login
    public HttpSession initSession(HttpServletRequest request, User user, DataSource ds) {
        //devo distruggerla

        //creo la sessione
        HttpSession session = request.getSession(true);

        if (user != null) {
            session.setAttribute("User", user);
        }

        session.setAttribute("Ip_adress", request.getRemoteHost());
        session.setAttribute("Access_time", Calendar.getInstance());


        //tempo massimo uso trattera sessione
        session.setMaxInactiveInterval(10 * 60);

        return session;
    }


    public void destroy(HttpSession session) {
        session.invalidate();


    }

    //prima di fare la loging mi serve una funzione che sanifica i dati inseriti
    public Boolean login(String Mail, String Password) {
        UserDaoImp dao = new UserDaoImp();


        return null;


    }
}
