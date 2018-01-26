package org.HighTech.servlet;

import java.io.Serializable;
import java.util.List;

public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	private String nickname;
    private String city;
    private List<String> langs;
    
    public User(){	
    }
    public User(String nickname, String city, List<String> langs){
    	this.nickname = nickname;
    	this.city = city;
    	this.langs = langs;
    }
    
    public String getNickname(){
    	return this.nickname;
    }
    public String getCity(){
    	return this.city;
    }
    public List<String> getLangs(){
    	return this.langs;
    }
    
}
