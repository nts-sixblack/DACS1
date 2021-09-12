package Controller;

import Dao.CommentDao;
import Model.Comment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/comment")
public class comment extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        Comment comment = new Comment();
        comment.setEmail(req.getParameter("email"));
        comment.setName(req.getParameter("name"));
        comment.setText(req.getParameter("text"));
        CommentDao commentDao = new CommentDao();

        if (commentDao.newComment(comment)){
            resp.sendRedirect(req.getContextPath()+"/highLight");
        } else {
            resp.sendRedirect(req.getContextPath()+"/main");
        }
    }
}
