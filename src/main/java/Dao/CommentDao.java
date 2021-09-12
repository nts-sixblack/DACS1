package Dao;

import Connect.Data;
import Model.Comment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CommentDao {
    public List<Comment> loadComment(){
        try{
            Connection connection = Data.getConnection();
            String sql = "select * from comment";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            List<Comment> list = new ArrayList<Comment>();
            while (resultSet.next()){
                Comment comment = new Comment();
                comment.setId(resultSet.getInt(1));
                comment.setEmail(resultSet.getString(2));
                comment.setName(resultSet.getString(3));
                comment.setText(resultSet.getString(4));

                list.add(comment);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

    public boolean deleteComment(String id){
        try{
            Connection connection = Data.getConnection();
            String sql = "delete from comment where id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, id);
            if(preparedStatement.executeUpdate() > 0){
                return true;
            } else {
                return false;
            }
        } catch (Exception e){
            return false;
        }
    }

    public boolean newComment(Comment comment){
        try{
            Connection connection = Data.getConnection();
            String sql = "insert into comment (email, name, text) values (?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,comment.getEmail());
            preparedStatement.setString(2,comment.getName());
            preparedStatement.setString(3, comment.getText());
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
