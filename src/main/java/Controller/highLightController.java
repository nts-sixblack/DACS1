package Controller;

import Dao.CommentDao;
import Dao.HighLightDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/highLight")
public class highLightController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        HighLightDao highLightDao = new HighLightDao();
        CommentDao commentDao = new CommentDao();
        HttpSession session = req.getSession();
        session.setAttribute("listMatch",highLightDao.loadHighLight());
        session.setAttribute("listComment",commentDao.loadComment());

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/jsp/highLight.jsp");
        requestDispatcher.forward(req,resp);
    }
}
