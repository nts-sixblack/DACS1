package Controller;

import Dao.HighLightDao;
import Model.Match;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/match")
public class matchController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String idMatch = req.getParameter("id").toString();
        HighLightDao highLightDao = new HighLightDao();
        req.setAttribute("match",highLightDao.findMatch(idMatch));

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/jsp/match.jsp");
        requestDispatcher.forward(req,resp);
    }
}
