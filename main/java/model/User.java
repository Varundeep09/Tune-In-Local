package com.tuneinlocal.model;

public class User {
    private int id;
    private String name;
    private String email;
    private String password;
    private String instrument;
    private String experience;

    public User() {}

    public User(int id, String name, String email, String password, String instrument, String experience) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.instrument = instrument;
        this.experience = experience;
    }

    public User(String string, String string2, String string3, int int1) {
		// TODO Auto-generated constructor stub
	}

	// Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    public String getInstrument() { return instrument; }
    public void setInstrument(String instrument) { this.instrument = instrument; }
    public String getExperience() { return experience; }
    public void setExperience(String experience) { this.experience = experience; }
}
