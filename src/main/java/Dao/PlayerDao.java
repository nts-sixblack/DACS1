package Dao;

import Connect.Data;
import Model.Player;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PlayerDao {
    public List<Player> loadPlayer(){
        List<Player> list = new ArrayList<Player>();
        try{
            Connection connection = Data.getConnection();
            String sql = "select top 6 * from Player";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                Player player = new Player();
                player.setSoAo(resultSet.getString(1));
                player.setTen(resultSet.getString(2));
                player.setViTri(resultSet.getString(3));
                player.setQuocTich(resultSet.getString(4));
                player.setChieuCao(resultSet.getString(5));
                player.setCanNang(resultSet.getString(6));
                player.setAnh(resultSet.getString(7));
                list.add(player);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

    public List<Player> loadNextPlayer(int number){
        List<Player> list = new ArrayList<Player>();
        try{
            Connection connection = Data.getConnection();
            String sql = "select * from Player order by soao offset ?  rows fetch next 6 rows only ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, number);

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                Player player = new Player();
                player.setSoAo(resultSet.getString(1));
                player.setTen(resultSet.getString(2));
                player.setViTri(resultSet.getString(3));
                player.setQuocTich(resultSet.getString(4));
                player.setChieuCao(resultSet.getString(5));
                player.setCanNang(resultSet.getString(6));
                player.setAnh(resultSet.getString(7));
                list.add(player);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

    public static void main(String[] args) {
        PlayerDao playerDao = new PlayerDao();
        List<Player> list = playerDao.loadNextPlayer(3);
        for (Player player:list){
            System.out.println(player.getSoAo());
        }
    }

    public boolean deletePlayer(String id){
        try{
            Connection connection = Data.getConnection();
            String sql = "delete from player where soao = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,id);

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

    public Player findPlayer(String id){
        try{
            Player player = new Player();
            Connection connection = Data.getConnection();
            String sql = "select * from player where soao = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                player.setSoAo(resultSet.getString(1));
                player.setTen(resultSet.getString(2));
                player.setViTri(resultSet.getString(3));
                player.setQuocTich(resultSet.getString(4));
                player.setChieuCao(resultSet.getString(5));
                player.setCanNang(resultSet.getString(6));
                player.setAnh(resultSet.getString(7));
            }
            return player;
        } catch (Exception e){
            return null;
        }
    }

    public boolean updatePlayer(Player player){
        try{
            Connection connection = Data.getConnection();
            String sql = "update player set ten = ?, vitri = ?, quoctich = ?, chieucao = ?, cannang = ? where soao = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(6,player.getSoAo());
            preparedStatement.setString(1,player.getTen());
            preparedStatement.setString(2,player.getViTri());
            preparedStatement.setString(3,player.getQuocTich());
            preparedStatement.setString(4,player.getChieuCao());
            preparedStatement.setString(5,player.getCanNang());

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

    public boolean newPlayer(Player player){
        try{
            Connection connection = Data.getConnection();
            String sql = "insert into player (soao, ten, vitri, quoctich, chieucao, cannang) values (?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, player.getSoAo());
            preparedStatement.setString(2, player.getTen());
            preparedStatement.setString(3, player.getViTri());
            preparedStatement.setString(4, player.getQuocTich());
            preparedStatement.setString(5, player.getChieuCao());
            preparedStatement.setString(6, player.getCanNang());
            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }
}
