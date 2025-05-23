<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="header.jsp" %>

<main class="auth-page">
    <div class="auth-container">
        <div class="auth-card">
            <div class="auth-header">
                <svg class="icon-music" viewBox="0 0 24 24" width="32" height="32" stroke="currentColor" stroke-width="2" fill="none">
                    <path d="M9 18V5l12-2v13"></path>
                    <circle cx="6" cy="18" r="3"></circle>
                    <circle cx="18" cy="16" r="3"></circle>
                </svg>
                <h2>Create Account</h2>
                <p>Join the musician community</p>
            </div>

            <form action="RegisterServlet" method="post" class="auth-form">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <div class="input-group">
                        <svg class="input-icon" viewBox="0 0 24 24" width="18" height="18" stroke="currentColor" stroke-width="2" fill="none">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                            <circle cx="12" cy="7" r="4"></circle>
                        </svg>
                        <input type="text" id="name" name="name" placeholder="Enter your full name" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <div class="input-group">
                        <svg class="input-icon" viewBox="0 0 24 24" width="18" height="18" stroke="currentColor" stroke-width="2" fill="none">
                            <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                            <polyline points="22,6 12,13 2,6"></polyline>
                        </svg>
                        <input type="email" id="email" name="email" placeholder="Enter your email" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <div class="input-group">
                        <svg class="input-icon" viewBox="0 0 24 24" width="18" height="18" stroke="currentColor" stroke-width="2" fill="none">
                            <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                            <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                        </svg>
                        <input type="password" id="password" name="password" placeholder="Create a password" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="instrument">Primary Instrument</label>
                    <div class="input-group">
                        <svg class="input-icon" viewBox="0 0 24 24" width="18" height="18" stroke="currentColor" stroke-width="2" fill="none">
                            <path d="M9 18V5l12-2v13"></path>
                            <circle cx="6" cy="18" r="3"></circle>
                            <circle cx="18" cy="16" r="3"></circle>
                        </svg>
                        <select id="instrument" name="instrument" required>
                            <option value="">Select your instrument</option>
                            <option value="guitar">Guitar</option>
                            <option value="piano">Piano</option>
                            <option value="drums">Drums</option>
                            <option value="bass">Bass</option>
                            <option value="violin">Violin</option>
                            <option value="vocals">Vocals</option>
                            <option value="other">Other</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label for="experience">Years of Experience</label>
                    <div class="input-group">
                        <svg class="input-icon" viewBox="0 0 24 24" width="18" height="18" stroke="currentColor" stroke-width="2" fill="none">
                            <circle cx="12" cy="12" r="10"></circle>
                            <polyline points="12 6 12 12 16 14"></polyline>
                        </svg>
                        <input type="number" id="experience" name="experience" min="0" max="70" placeholder="Years of experience" required>
                    </div>
                </div>

                <button type="submit" class="btn-auth">Create Account</button>
            </form>

            <div class="auth-footer">
                <p>Already have an account? <a href="login.jsp" class="auth-link">Sign In</a></p>
            </div>
        </div>
    </div>
</main>

<%@ include file="footer.jsp" %>