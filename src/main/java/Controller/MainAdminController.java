package Controller;

import Dao.HighLightDao;
import Dao.PlayerDao;
import Dao.TeamDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/mainAdmin")
public class MainAdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HighLightDao highLightDao = new HighLightDao();
        HttpSession session = req.getSession();
        session.setAttribute("listMatch",highLightDao.loadHighLight());

        PlayerDao playerDao = new PlayerDao();
        session.setAttribute("listPlayer",playerDao.loadPlayer());

        TeamDao teamDao = new TeamDao();
        session.setAttribute("listTeam",teamDao.loadTeam());

        RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/main.jsp");
        rd.forward(req,resp);

    }
}
