package com.codeup.adlister.dao;

import com.codeup.adlister.Config;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

/**
 * Created by larryg on 6/12/17.
 */
public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config){
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public User findByUsername(String username) {
        String sql = "SELECT * from users WHERE username = ?";
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                User user = new User(rs.getLong(1), rs.getString(2), rs.getString(3), rs.getString(4));
                return user;
            }else{
                User user = null;
                return user;
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error finding user by that name.", e);
        }

    }

    @Override
    public Long insert(User user) {
        String sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
        try {
                PreparedStatement stmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                stmt.setString(1, user.getUsername());
                stmt.setString(2, user.getEmail());
                stmt.setString(3, user.getPassword());
                stmt.executeUpdate();
            return null;
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user!", e);
        }

    }
}
