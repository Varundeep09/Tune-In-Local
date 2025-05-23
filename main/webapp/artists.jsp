<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ include file="header.jsp" %>

<main class="content-page">
    <div class="page-header">
        <h1>Find Your Perfect Bandmate</h1>
        <p>Connect with talented musicians in your area</p>
        
        <div class="search-filters">
            <div class="search-input">
                <svg class="input-icon" viewBox="0 0 24 24" width="18" height="18" stroke="currentColor" stroke-width="2" fill="none">
                    <circle cx="11" cy="11" r="8"></circle>
                    <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                </svg>
                <input type="text" placeholder="Search by name, instrument, or genre">
            </div>
            
            <div class="filter-group">
                <select class="filter-select">
                    <option value="">All Instruments</option>
                    <option value="guitar">Guitar</option>
                    <option value="piano">Piano</option>
                    <option value="drums">Drums</option>
                    <option value="vocals">Vocals</option>
                </select>
                
                <select class="filter-select">
                    <option value="">All Genres</option>
                    <option value="rock">Rock</option>
                    <option value="jazz">Jazz</option>
                    <option value="classical">Classical</option>
                    <option value="pop">Pop</option>
                </select>
                
                <select class="filter-select">
                    <option value="">Experience Level</option>
                    <option value="beginner">Beginner</option>
                    <option value="intermediate">Intermediate</option>
                    <option value="advanced">Advanced</option>
                </select>
            </div>
        </div>
    </div>

    <div class="artists-grid">
        <%
            List<String> artists = (List<String>) request.getAttribute("artists");
            if (artists != null && !artists.isEmpty()) {
                for (String artist : artists) {
        %>
        <div class="artist-card">
            <div class="artist-image">
                <img src="https://source.unsplash.com/random/400x400?musician" alt="Musician">
                <div class="artist-status online"></div>
            </div>
            <div class="artist-info">
                <h3><%= artist %></h3>
                <p class="artist-instruments">Guitar, Vocals</p>
                <p class="artist-genres">Rock, Blues, Jazz</p>
                <div class="artist-rating">
                    <div class="stars">
                        ★★★★☆
                    </div>
                    <span>4.0 (15 reviews)</span>
                </div>
                <div class="artist-actions">
                    <button class="btn-primary">
                        <svg viewBox="0 0 24 24" width="16" height="16" stroke="currentColor" stroke-width="2" fill="none">
                            <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path>
                        </svg>
                        Message
                    </button>
                    <button class="btn-secondary">View Profile</button>
                </div>
            </div>
        </div>
        <%
                }
            } else {
        %>
        <div class="no-results">
            <svg viewBox="0 0 24 24" width="48" height="48" stroke="currentColor" stroke-width="2" fill="none">
                <circle cx="12" cy="12" r="10"></circle>
                <line x1="12" y1="8" x2="12" y2="12"></line>
                <line x1="12" y1="16" x2="12" y2="16"></line>
            </svg>
            <h3>No Artists Found</h3>
            <p>Try adjusting your search filters or check back later.</p>
        </div>
        <% } %>
    </div>
</main>

<%@ include file="footer.jsp" %>