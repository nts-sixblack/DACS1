package Controller;

import Dao.PlayerDao;
import Model.Player;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/player")
public class playerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PlayerDao playerDao = new PlayerDao();
        HttpSession session = req.getSession();
        session.setAttribute("listPlayer",playerDao.loadPlayer());

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/jsp/player.jsp");
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
//        int number = 3;
        int number = Integer.parseInt(req.getParameter("number").toString());
        String value = req.getParameter("check").toString();
        int check;
        if (value == ""){
            check = 0;
        } else {
            check = Integer.parseInt(value);
        }
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        PlayerDao playerDao = new PlayerDao();
        List<Player> list = playerDao.loadNextPlayer(number);
        for (Player player:list){
            out.println("                        <div class=\"col match\">\n" +
                    "                            <div class=\"card shadow-sm\">\n" +
                    "                                <div class=\"card-header\">\n" +
                    "                                    <div class=\"infor\">\n" +
                    "                                        <br>\n" +
                    "                                        <p class=\"name\">"+player.getTen()+"</p>\n" +
                    "                                        <p class=\"number\">"+player.getSoAo()+"</p>\n" +
                    "                                        <p class=\"position\">"+player.getViTri()+"</p>\n" +
                    "\n" +
                    "                                    </div>\n" +
                    "                                    <img src=\"image/player/"+player.getAnh()+"\" alt=\"ImagePlayer\" height=\"150em\" width=auto>\n" +
                    "                                </div>\n" +
                    "                                <div class=\"card-body\">\n" +
                    "                                    <div class=\"nationality\">\n" +
                    "                                        <p>National</p>\n" +
                    "                                        <p>"+player.getQuocTich()+"</p>\n" +
                    "                                    </div>\n" +
                    "                                    <div class=\"weight\">\n" +
                    "                                        <p>Height</p>\n" +
                    "                                        <p>"+player.getChieuCao()+"cm</p>\n" +
                    "                                    </div>\n" +
                    "                                    <div class=\"height\">\n" +
                    "                                        <p>Weigh</p>\n" +
                    "                                        <p>"+player.getCanNang()+"kg</p>\n" +
                    "                                    </div>\n");
            if (check > 1){
                out.println("<div class=\"d-flex justify-content-between align-items-center mt-3\">\n" +
                        "                                            <div class=\"btn-group\">\n" +
                        "                                                <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\"><a href=\"updatePlayer?id="+player.getSoAo()+"\" style=\"text-decoration: none\">UPGRATE</a></button>\n" +
                        "                                                <button type=\"button\" class=\"btn btn-sm btn-outline-secondary\"><a href=\"deletePlayer?id="+player.getSoAo()+"\" style=\"text-decoration: none\">DELETE</a></button>\n" +
                        "                                            </div>\n" +
                        "                                        </div>");
            }
            out.println(""+
                    "                                </div>\n" +
                    "                            </div>\n" +
                    "                        </div>\n");
        }
    }
}
