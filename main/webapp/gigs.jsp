<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ include file="header.jsp" %>

<main class="content-page">
    <div class="page-header">
        <h1>Available Gigs</h1>
        <p>Find your next performance opportunity</p>
        
        <div class="search-filters">
            <div class="search-input">
                <svg class="input-icon" viewBox="0 0 24 24" width="18" height="18" stroke="currentColor" stroke-width="2" fill="none">
                    <circle cx="11" cy="11" r="8"></circle>
                    <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                </svg>
                <input type="text" placeholder="Search by venue, event type, or location">
            </div>
            
            <div class="filter-group">
                <select class="filter-select">
                    <option value="">Event Type</option>
                    <option value="concert">Concert</option>
                    <option value="wedding">Wedding</option>
                    <option value="corporate">Corporate</option>
                    <option value="bar">Bar/Club</option>
                </select>
                
                <select class="filter-select">
                    <option value="">Payment Range</option>
                    <option value="0-100">$0 - $100</option>
                    <option value="100-500">$100 - $500</option>
                    <option value="500+">$500+</option>
                </select>
                
                <input type="date" class="filter-select" placeholder="Date">
            </div>
        </div>
    </div>

    <div class="gigs-grid">
        <%
            List<String> gigs = (List<String>) request.getAttribute("gigs");
            if (gigs != null && !gigs.isEmpty()) {
                for (String gig : gigs) {
        %>
        <div class="gig-card">
            <div class="gig-image">
                <img src="https://source.unsplash.com/random/400x300?concert" alt="Venue">
                <div class="gig-date">
                    <span class="day">15</span>
                    <span class="month">MAR</span>
                </div>
            </div>
            <div class="gig-info">
                <div class="gig-header">
                    <h3><%= gig %></h3>
                    <span class="gig-payment">$200-300</span>
                </div>
                <div class="gig-details">
                    <div class="gig-detail">
                        <svg viewBox="0 0 24 24" width="16" height="16" stroke="currentColor" stroke-width="2" fill="none">
                            <path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path>
                            <circle cx="12" cy="10" r="3"></circle>
                        </svg>
                        <span>Downtown Music Hall</span>
                    </div>
                    <div class="gig-detail">
                        <svg viewBox="0 0 24 24" width="16" height="16" stroke="currentColor" stroke-width="2" fill="none">
                            <circle cx="12" cy="12" r="10"></circle>
                            <polyline points="12 6 12 12 16 14"></polyline>
                        </svg>
                        <span>8:00 PM - 11:00 PM</span>
                    </div>
                    <div class="gig-detail">
                        <svg viewBox="0 0 24 24" width="16" height="16" stroke="currentColor" stroke-width="2" fill="none">
                            <path d="M9 18V5l12-2v13"></path>
                            <circle cx="6" cy="18" r="3"></circle>
                            <circle cx="18" cy="16" r="3"></circle>
                        </svg>
                        <span>Looking for: Guitarist, Drummer</span>
                    </div>
                </div>
                <p class="gig-description">Join us for an exciting evening of live music at Downtown Music Hall. We're looking for talented musicians to complete our lineup.</p>
                <div class="gig-actions">
                    <button class="btn-primary">Apply Now</button>
                    <button class="btn-secondary">Learn More</button>
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
            <h3>No Gigs Found</h3>
            <p>Try adjusting your search filters or check back later for new opportunities.</p>
        </div>
        <% } %>
    </div>
</main>

<%@ include file="footer.jsp" %>