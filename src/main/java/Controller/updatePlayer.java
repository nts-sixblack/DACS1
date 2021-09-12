package Controller;

import Dao.PlayerDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updatePlayer")
public class updatePlayer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String id = req.getParameter("id").toString();
        PlayerDao playerDao = new PlayerDao();

        req.setAttribute("player",playerDao.findPlayer(id));
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/jsp/updatePlayer.jsp");
        requestDispatcher.forward(req,resp);
    }
}
