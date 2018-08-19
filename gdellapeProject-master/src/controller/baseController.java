package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "baseController")
public class baseController extends HttpServlet {

    @Resource(name = "jdbc/ingdelweb")
    protected static DataSource ds;

    protected Map<String, Object> datamodel = new HashMap<>();
}
