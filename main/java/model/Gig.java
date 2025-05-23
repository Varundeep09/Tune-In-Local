package com.tuneinlocal.model;

import java.util.Date;

public class Gig {
    private int id;
    private String name;
    private String location;
    private Date date;
    private String organizer;

    public Gig() {}

    public Gig(int id, String name, String location, Date date, String organizer) {
        this.id = id;
        this.name = name;
        this.location = location;
        this.date = date;
        this.organizer = organizer;
    }

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getLocation() { return location; }
    public void setLocation(String location) { this.location = location; }
    public Date getDate() { return date; }
    public void setDate(Date date) { this.date = date; }
    public String getOrganizer() { return organizer; }
    public void setOrganizer(String organizer) { this.organizer = organizer; }
}
