package org.abstergo.tech;

import java.io.Serializable;
import java.util.List;

public class User implements Serializable {
	private static final long serialVersionUID = 1L;
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
    public void setUsername(String username){
    	this.username = username;
    }
    public void setPwd(String pwd){
    	this.pwd = pwd;
    }
    public String getUsername(){
    	return this.username;
    }
    public String getPwd(){
    	return this.pwd;
    }
    public List<String> getHabits(){
    	return this.habits;
    }
    
}
