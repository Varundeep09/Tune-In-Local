package com.tuneinlocal.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuneinlocal.util.DBConnection;

@WebServlet("/ArtistsServlet")
public class ArtistsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Connection conn = DBConnection.getConnection();
            String sql = "SELECT * FROM artists";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            List<String> artists = new ArrayList<>();
            while (rs.next()) {
                artists.add(rs.getString("name") + " - " + rs.getString("instrument"));
            }
            request.setAttribute("artists", artists);
            request.getRequestDispatcher("artists.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
