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
import javax.servlet.http.HttpSession;

import com.tuneinlocal.model.User;
import com.tuneinlocal.util.DBConnection;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        System.out.println("LoginServlet triggered! Email: " + email + " | Password: " + password);

        if (email == null || password == null || email.isEmpty() || password.isEmpty()) {
            System.out.println("Email or password is empty");
            response.sendRedirect("login.jsp?error=Email and password are required");
            return;
        }

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE email = ? AND password = ?")) {

            stmt.setString(1, email);
            stmt.setString(2, password);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    User user = new User(
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("instrument"),
                        rs.getInt("experience")
                    );

                    HttpSession session = request.getSession();
                    session.setAttribute("loggedInUser", user);
                    
                    System.out.println("Login successful, redirecting to profile.jsp");
                    response.sendRedirect("profile.jsp");
                } else {
                    System.out.println("Invalid credentials entered.");
                    response.sendRedirect("login.jsp?error=Invalid email or password");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=Something went wrong. Try again.");
        }
    }
}
