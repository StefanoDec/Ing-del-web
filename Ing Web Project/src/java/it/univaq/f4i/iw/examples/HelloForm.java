package it.univaq.f4i.iw.examples;

// Import required java libraries
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

// Extend HttpServlet class
public class HelloForm extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Set response content type
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        String title = "Using GET Method to Read Form Data";
        String docType =
                "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";

        out.println(docType +
                "<html>\n" +
                "   <body>\n" +
                "      <form action = \"prova2\" method = \"POST\">\n" +
                "         First Name: <input type = \"text\" name = \"first_name\">\n" +
                "         <br />\n" +
                "         Last Name: <input type = \"text\" name = \"last_name\" />\n" +
                "         <input type = \"submit\" value = \"Submit\" />\n" +
                "      </form>\n" +
                "   </body>\n" +
                "</html>"
        );




    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {







    }
}