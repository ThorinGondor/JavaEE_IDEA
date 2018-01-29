package org.entity.serve;

import java.io.Serializable;

public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	private String username;
    private String pwd;
    
    public User(){	
    }
    public User(String username, String pwd){
    	this.username = username;
    	this.pwd = pwd;
    }
    
    public String getName(){
    	return this.username;
    }
    public String getPwd(){
    	return this.pwd;
    }
    
}
