package Controller;

import Dao.AdminDao;
import Model.Admin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "login", urlPatterns = "/checkLogin")
public class checkLogin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String tenDangNhap = req.getParameter("email").toString();
        String matKhau = req.getParameter("password").toString();
        HttpSession session = req.getSession();
        AdminDao adminDao = new AdminDao();
        Admin admin = adminDao.checkLogin(tenDangNhap,matKhau);
        if(admin != null){
            session.setAttribute("admin",admin);
            session.setAttribute("check",admin.getType());
            resp.sendRedirect(req.getContextPath()+"/main");
        } else {
            resp.sendRedirect(req.getContextPath()+"/login");
        }
    }
}
