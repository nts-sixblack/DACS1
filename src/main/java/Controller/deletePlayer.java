package Controller;

import Dao.PlayerDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/deletePlayer")
public class deletePlayer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String id = req.getParameter("id").toString();
        HttpSession session = req.getSession();
        PlayerDao playerDao = new PlayerDao();
        if(playerDao.deletePlayer(id)){
            session.setAttribute("listPlayer",playerDao.loadPlayer());
        }

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/jsp/player.jsp");
        requestDispatcher.forward(req,resp);
    }
}
