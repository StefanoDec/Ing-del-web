package it.univaq.f4i.iw.examples;

import it.univaq.f4i.iw.framework.result.HTMLResult;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Giuseppe Della Penna
 */
public class Salutami extends HttpServlet {

    private Calendar startup;
    private final SimpleDateFormat sdf = new SimpleDateFormat();

    private void action_error(HttpServletRequest request, HttpServletResponse response) {
        //assumiamo che l'eccezione sia passata tramite gli attributi della request
        //we assume that the exception has been passed using the request attributes
        Exception exception = (Exception) request.getAttribute("exception");
        String message;
        if (exception != null && exception.getMessage() != null) {
            message = exception.getMessage();
        } else {
            message = "Unknown error";
        }
        HTMLResult result = new HTMLResult(getServletContext());
        result.setTitle("ERROR");
        result.setBody("<p>" + message + "</p>");
        try {
            result.activate(request, response);
        } catch (IOException ex) {
            //if error page cannot be sent, try a standard HTTP error message
            //se non possiamo inviare la pagina di errore, proviamo un messaggio di errore HTTP standard
            try {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, ex.getMessage());
            } catch (IOException ex1) {
                //if ALSO this error status cannot be notified, write to the server log
                //se ANCHE questo stato di errore non può essere notificato, scriviamo sul log del server
                Logger.getLogger(Salutami.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
    }

    private void action_saluta_noto(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //preleviamo il nome dalla sessione
        //get the name from the session
        HttpSession s = request.getSession(false);
        String nome = (String) s.getAttribute("n");
        //qualche controllo di sicurezza (ridondante)
        //some (redundant) security check
        if (nome == null || nome.isEmpty()) {
            nome = "sconosciuto";
        } else {
            //qui dovremmo "sanitizzare" il parametro
            //here we should "sanitize" the parameter
        }

        HTMLResult result = new HTMLResult(getServletContext());
        result.setTitle("Salutami!");
        result.setBody("<p>Hello, " + nome + "!</p>");
        result.appendToBody("<p><a href=\"salutami?logout=1\">Forget me</a></p>");
        result.activate(request, response);
    }

    private void action_saluta_anonimo(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HTMLResult result = new HTMLResult(getServletContext());
        result.setTitle("Salutami!");
        result.appendToBody("<p>Hello!</p>");
        result.appendToBody("<form method=\"get\" action=\"salutami\">");
        result.appendToBody("<p>What is your name?");
        result.appendToBody("<input type=\"text\" name=\"n\"/>");
        result.appendToBody("<input type=\"submit\" name=\"s\" value=\"Hello!\"/>");
        result.appendToBody("</p>");
        result.appendToBody("</form>");
        result.appendToBody("<p><small>I'm greeting all users since " + sdf.format(startup.getTime()) + "</small></p>");
        result.activate(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {

        try {
            //prima, otteniamo la sessione
            //first, get the session
            HttpSession s = request.getSession(true);
            //controlliamo se è richiesto il logout
            //check if a logout is required
            if (request.getParameter("logout") == null) {
                //controlliamo se il nome è già presente in sessione
                //check if the name has been already set in the session
                if (s.getAttribute("n") != null && !((String) s.getAttribute("n")).isEmpty()) {
                    action_saluta_noto(request, response);
                } else {
                    //se il nome non è presente, controlliamo se ci viene passato dalla form
                    //if name is not present, check if it is being passed from the form
                    String n = request.getParameter("n");
                    if (n == null || n.isEmpty()) {                       
                        action_saluta_anonimo(request, response);
                    } else {
                        //se il nome arriva dalla form, inserimolo nell sessione
                        //if the name comes from the form, set in in the session
                        s.setAttribute("n", n);
                        action_saluta_noto(request, response);
                    }
                }
            } else {
                //se è stato richiesto il logout, choudiamo la sessione
                //if logout has been selected, close the session
                s.invalidate();
                action_saluta_anonimo(request, response);
            }
        } catch (IOException ex) {
            request.setAttribute("exception", ex);
            action_error(request, response);
        }
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        startup = Calendar.getInstance();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "A kind servlet";

    }// </editor-fold>
}
