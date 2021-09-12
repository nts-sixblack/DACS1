package Controller;

import Dao.HighLightDao;
import Dao.TeamDao;
import Model.Match;
import Model.Team;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/createMatch")
public class createMatch extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String id = req.getParameter("team").toString();
        String link = req.getParameter("link").toString();
        String time = req.getParameter("time").toString();

        TeamDao teamDao = new TeamDao();
        String name = teamDao.findTeam(id);

        Match match = new Match();
        match.setLink(link);
        match.setTeamOne(name);
        match.setImageOne(id);
        match.setTeamTwo("Manchester United");
        match.setImageTwo("t1");
        match.setTime(time);

        HighLightDao highLightDao = new HighLightDao();
        if (highLightDao.insertMatch(match)){
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/jsp/main.jsp");
            requestDispatcher.forward(req,resp);
        } else {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/jsp/newMatch.jsp");
            requestDispatcher.forward(req,resp);
        }
    }
}
