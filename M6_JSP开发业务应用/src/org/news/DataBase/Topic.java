package org.news.DataBase;

public class Topic {
    private int ID = 1;
    private String TopicName = "NULL";
    public Topic(){
    	
    }
    public Topic(int ID,String TopicName){
    	this.ID =ID;
    	this.TopicName = TopicName;
    }
    public void setID(int ID){
    	this.ID = ID;
    }
    public void setTopciName(String TopicName){
    	this.TopicName = TopicName;
    }
    public int getID(){
    	return this.ID;
    }
    public String getTopicName(){
    	return this.TopicName;
    }
}
