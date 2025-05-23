<%@ page import="com.tuneinlocal.model.User" %>
<%@ include file="header.jsp" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<div class="container profile-container mt-5 pt-5">
    <h2 class="text-center">Welcome, <%= user.getName() %>!</h2>
    <p>Email: <%= user.getEmail() %></p>
    <p>Instrument: <%= user.getInstrument() %></p>
    <p>Experience: <%= user.getExperience() %></p>
    <a class="btn btn-danger" href="logout.jsp">Logout</a>
</div>
<%@ include file="footer.jsp" %>
