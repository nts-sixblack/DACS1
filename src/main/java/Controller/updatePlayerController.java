package Controller;

import Dao.PlayerDao;
import Model.Player;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updatePlayerController")
public class updatePlayerController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        Player player = new Player();

        player.setTen(req.getParameter("name").toString());
        player.setSoAo(req.getParameter("number").toString());
        player.setViTri(req.getParameter("position").toString());
        player.setQuocTich(req.getParameter("national").toString());
        player.setChieuCao(req.getParameter("height").toString());
        player.setCanNang(req.getParameter("weigh").toString());

        PlayerDao playerDao = new PlayerDao();
        if (playerDao.updatePlayer(player)){
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/jsp/main.jsp");
            requestDispatcher.forward(req,resp);
        } else {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/jsp/player.jsp");
            requestDispatcher.forward(req,resp);
        }
    }
}
