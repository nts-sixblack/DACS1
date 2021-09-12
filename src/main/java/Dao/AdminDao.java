package Dao;

import Connect.Data;
import Model.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDao {
    public Admin checkLogin(String tenDangNhap, String matKhau){
        try{
            Connection connection = Data.getConnection();
            String sql = "select * from account where email=? and password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,tenDangNhap);
            preparedStatement.setString(2,matKhau);

            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                Admin admin = new Admin();
                admin.setEmail(resultSet.getString(1));
                admin.setPassword(resultSet.getString(2));
                admin.setName(resultSet.getString(3));
                admin.setType(resultSet.getInt(4));
                return admin;
            } else {
                return null;
            }
        } catch (Exception e){
            return null;
        }
    }

    public boolean createAccount(Admin admin){
        try{
            Connection connection = Data.getConnection();
            String sql = "insert into account values (?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,admin.getEmail());
            preparedStatement.setString(2,admin.getPassword());
            preparedStatement.setString(3,admin.getName());
            preparedStatement.setInt(4,admin.getType());

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

    public List<Admin> loadAccount(){
        try{
            Connection connection = Data.getConnection();
            String sql = "select * from account order by type desc";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            List<Admin> list = new ArrayList<Admin>();
            while (resultSet.next()){
                Admin admin = new Admin();
                admin.setEmail(resultSet.getString(1));
                admin.setPassword(resultSet.getString(2));
                admin.setName(resultSet.getString(3));
                admin.setType(resultSet.getInt(4));

                list.add(admin);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

    public boolean deleteAccount(String email){
        try{
            Connection connection = Data.getConnection();
            String sql = "delete from account where email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            if (preparedStatement.executeUpdate() > 0){
                return true;
            } else {
                return false;
            }
        } catch (Exception e){
            return false;
        }
    }

    public boolean upgradeAccount(String email){
        try{
            Connection connection = Data.getConnection();
            String sql = "update account set type = ? where email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,2);
            preparedStatement.setString(2, email);
            if (preparedStatement.executeUpdate() > 0){
                return true;
            } else {
                return false;
            }
        } catch (Exception e){
            return false;
        }
    }
    public boolean downgradeAccount(String email){
        try{
            Connection connection = Data.getConnection();
            String sql = "update account set type = ? where email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,1);
            preparedStatement.setString(2, email);
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
