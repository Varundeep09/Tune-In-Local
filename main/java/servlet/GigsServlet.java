package com.tuneinlocal.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuneinlocal.util.DBConnection;

import java.util.ArrayList;
import java.util.List;

@WebServlet("/GigsServlet")
public class GigsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Connection conn = DBConnection.getConnection();
            String sql = "SELECT * FROM gigs";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            List<String> gigs = new ArrayList<>();
            while (rs.next()) {
                gigs.add(rs.getString("title") + " - " + rs.getDate("date"));
            }
            request.setAttribute("gigs", gigs);
            request.getRequestDispatcher("gigs.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
