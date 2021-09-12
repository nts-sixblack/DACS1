package Controller;

import Dao.AdminDao;
import Model.Admin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/createAccount")
public class createAccount extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String name = req.getParameter("name").toString();
        String email = req.getParameter("email").toString();
        String password = req.getParameter("password").toString();

        if (email.equals("")){
            resp.sendRedirect(req.getContextPath()+"/register");
        } else {
            Admin admin = new Admin();
            admin.setName(name);
            admin.setEmail(email);
            admin.setPassword(password);
            admin.setType(1);
            AdminDao adminDao = new AdminDao();

            if (adminDao.createAccount(admin)){
                resp.sendRedirect(req.getContextPath()+"/login");
            } else {
                resp.sendRedirect(req.getContextPath()+"/register");
            }
        }


    }
}
