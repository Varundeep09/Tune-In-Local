package com.tuneinlocal.dao;

import java.sql.Connection;
import com.tuneinlocal.util.DBConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tuneinlocal.model.User;
import com.tuneinlocal.util.DBConnection;


public class UserDAO {
    public static boolean registerUser(User user) {
        try (Connection con = DBConnection.getConnection()) {
            String query = "INSERT INTO users (name, email, password, instrument, experience) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, user.getName());
            pst.setString(2, user.getEmail());
            pst.setString(3, user.getPassword());
            pst.setString(4, user.getInstrument());
            pst.setString(5, user.getExperience());
            return pst.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static User getUser(String email, String password) {
        try (Connection con = DBConnection.getConnection()) {
            String query = "SELECT * FROM users WHERE email=? AND password=?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                return new User(rs.getInt("id"), rs.getString("name"), rs.getString("email"),
                                rs.getString("password"), rs.getString("instrument"),
                                rs.getString("experience"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
