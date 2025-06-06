package com.tuneinlocal.model;

import java.util.Date;

public class Post {
    private int id;
    private String title;
    private String description;
    private Date date;
    private String postedBy;

    public Post() {}

    public Post(int id, String title, String description, Date date, String postedBy) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.date = date;
        this.postedBy = postedBy;
    }

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    public Date getDate() { return date; }
    public void setDate(Date date) { this.date = date; }
    public String getPostedBy() { return postedBy; }
    public void setPostedBy(String postedBy) { this.postedBy = postedBy; }
}
