<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="header.jsp" %>

<main>
    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1 class="animate-fade-in">Connect. Collaborate. Create.</h1>
            <p>Join the largest community of local musicians and performers</p>
            <div class="hero-buttons">
                <button class="btn-primary">
                    <svg class="icon" viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none">
                        <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                        <circle cx="9" cy="7" r="4"></circle>
                        <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                        <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                    </svg>
                    Find Musicians
                </button>
                <button class="btn-primary">
                    <svg class="icon" viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none">
                        <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                        <line x1="16" y1="2" x2="16" y2="6"></line>
                        <line x1="8" y1="2" x2="8" y2="6"></line>
                        <line x1="3" y1="10" x2="21" y2="10"></line>
                    </svg>
                    Browse Gigs
                </button>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <h2>Find Your Perfect Musical Match</h2>
        <div class="features-grid">
            <div class="feature-card">
                <svg class="icon" viewBox="0 0 24 24" width="48" height="48" stroke="currentColor" stroke-width="2" fill="none">
                    <path d="M12 1a3 3 0 0 0-3 3v8a3 3 0 0 0 6 0V4a3 3 0 0 0-3-3z"></path>
                    <path d="M19 10v2a7 7 0 0 1-14 0v-2"></path>
                    <line x1="12" y1="19" x2="12" y2="23"></line>
                    <line x1="8" y1="23" x2="16" y2="23"></line>
                </svg>
                <h3>Vocalists</h3>
                <p>Connect with talented singers and vocalists in your area</p>
            </div>
            
            <div class="feature-card">
                <svg class="icon" viewBox="0 0 24 24" width="48" height="48" stroke="currentColor" stroke-width="2" fill="none">
                    <path d="M12 1L2 7l10 6 10-6-10-6z"></path>
                    <path d="M2 17l10 6 10-6"></path>
                    <path d="M2 12l10 6 10-6"></path>
                </svg>
                <h3>Instrumentalists</h3>
                <p>Find guitarists, bassists, and other instrumentalists</p>
            </div>
            
            <div class="feature-card">
                <svg class="icon" viewBox="0 0 24 24" width="48" height="48" stroke="currentColor" stroke-width="2" fill="none">
                    <circle cx="12" cy="12" r="10"></circle>
                    <circle cx="12" cy="12" r="3"></circle>
                </svg>
                <h3>Percussionists</h3>
                <p>Discover skilled drummers and percussion artists</p>
            </div>
        </div>
    </section>

    <!-- Featured Artists -->
    <section class="featured-artists">
        <h2>Featured Artists</h2>
        <div class="artists-grid">
            <div class="artist-card">
                <img src="https://source.unsplash.com/random/400x400?musician&sig=1" alt="Musician">
                <div class="artist-info">
                    <h3>Sarah Johnson</h3>
                    <p>Vocalist • Jazz, Soul</p>
                    <button class="btn-secondary">View Profile</button>
                </div>
            </div>
            
            <div class="artist-card">
                <img src="https://source.unsplash.com/random/400x400?musician&sig=2" alt="Musician">
                <div class="artist-info">
                    <h3>Mike Chen</h3>
                    <p>Guitarist • Rock, Blues</p>
                    <button class="btn-secondary">View Profile</button>
                </div>
            </div>
            
            <div class="artist-card">
                <img src="https://source.unsplash.com/random/400x400?musician&sig=3" alt="Musician">
                <div class="artist-info">
                    <h3>Emma Davis</h3>
                    <p>Pianist • Classical</p>
                    <button class="btn-secondary">View Profile</button>
                </div>
            </div>
            
            <div class="artist-card">
                <img src="https://source.unsplash.com/random/400x400?musician&sig=4" alt="Musician">
                <div class="artist-info">
                    <h3>James Wilson</h3>
                    <p>Drummer • Rock, Jazz</p>
                    <button class="btn-secondary">View Profile</button>
                </div>
            </div>
        </div>
    </section>
</main>

<%@ include file="footer.jsp" %>
