package com.tuneinlocal.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tuneinlocal.util.DBConnection;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Connection conn = DBConnection.getConnection();
            String sql = "INSERT INTO users (name, email, password, instrument, experience) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setString(1, request.getParameter("name"));
            stmt.setString(2, request.getParameter("email"));
            stmt.setString(3, request.getParameter("password")); // Hash password in production
            stmt.setString(4, request.getParameter("instrument"));
            stmt.setInt(5, Integer.parseInt(request.getParameter("experience")));

            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                response.sendRedirect("login.jsp?success=Registered successfully");
            } else {
                response.sendRedirect("register.jsp?error=Registration failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp?error=Something went wrong");
        }
    }
}
