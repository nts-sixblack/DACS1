package Controller;

import Dao.HighLightDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteMatch")
public class deleteMatch extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String id = req.getParameter("id").toString();
        HighLightDao highLightDao = new HighLightDao();
        if (highLightDao.deleteMatch(id)){
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/jsp/main.jsp");
            requestDispatcher.forward(req,resp);
        } else {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/jsp/highLight.jsp");
            requestDispatcher.forward(req,resp);
        }

    }
}
