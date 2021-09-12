package Dao;

import Connect.Data;
import Model.Team;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TeamDao {
    public List<Team> loadTeam(){
        List<Team> list = new ArrayList<Team>();
        try{
            Connection connection = Data.getConnection();
            String sql = "select * from team";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                Team team = new Team();
                team.setId(resultSet.getString(1));
                team.setName(resultSet.getString(2));

                list.add(team);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

    public String findTeam(String id){
        try{
            Connection connection = Data.getConnection();
            String sql = "select * from team where id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                return resultSet.getString(2);
            }
            return null;
        } catch (Exception e){
            return null;
        }
    }
}
