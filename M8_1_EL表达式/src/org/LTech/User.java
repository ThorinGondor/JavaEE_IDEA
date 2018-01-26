package org.LTech;

import java.util.List;

public class User {
    private String username;
    private String pwd;
    private List<String> habits;
    
    public User(){	
    }
    public User(String username, String pwd, List<String> habits){
    	this.username = username;
    	this.pwd = pwd;
    	this.habits = habits;
    }
    
    public String getName(){
    	return this.username;
    }
    public String getPwd(){
    	return this.pwd;
    }
    public List<String> getHabits(){
    	return this.habits;
    }
    
}
