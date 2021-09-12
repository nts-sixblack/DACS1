package Dao;

import Connect.Data;
import Model.Match;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HighLightDao {
    public List<Match> loadHighLight(){
        List<Match> list = new ArrayList<Match>();
        try{
            Connection connection = Data.getConnection();
            String sql = "select * from Match";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                Match match = new Match();
                match.setIdMatch(resultSet.getInt(1));
                match.setLink(resultSet.getString(2));
                match.setTeamOne(resultSet.getString(3));
                match.setImageOne(resultSet.getString(4));
                match.setTeamTwo(resultSet.getString(5));
                match.setImageTwo(resultSet.getString(6));
                match.setTime(resultSet.getString(7));
                list.add(match);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

    public Match findMatch(String id){
        try{
            Connection connection = Data.getConnection();
            String sql = "select * from Match where id=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            Match match = new Match();
            if (resultSet.next()){

                match.setIdMatch(resultSet.getInt(1));
                match.setLink(resultSet.getString(2));
                match.setTeamOne(resultSet.getString(3));
                match.setImageOne(resultSet.getString(4));
                match.setTeamTwo(resultSet.getString(5));
                match.setImageTwo(resultSet.getString(6));
                match.setTime(resultSet.getString(7));
            }
            return match;
        } catch (Exception e){
            return null;
        }
    }

    public boolean insertMatch(Match match){
        try{
            Connection connection = Data.getConnection();
            String sql = "insert into match (link, teamOne, imageOne, teamTwo, imageTwo, time) values (?,?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, match.getLink());
            preparedStatement.setString(2, match.getTeamOne());
            preparedStatement.setString(3, match.getImageOne());
            preparedStatement.setString(4, match.getTeamTwo());
            preparedStatement.setString(5, match.getImageTwo());
            preparedStatement.setString(6, match.getTime());

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

    public boolean deleteMatch(String id){
        try{
            Connection connection = Data.getConnection();
            String sql = "delete from match where id=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,id);

            if (preparedStatement.executeUpdate() > 0){
                return true;
            } else {
                return false;
            }
        } catch (Exception e){
            return false;
        }
    }
}
