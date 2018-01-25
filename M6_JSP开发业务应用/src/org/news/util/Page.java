package org.news.util;
import java.util.*;
import org.news.DataBase.*;

public class Page {
    private int totalPageCount = 0;  //总页数
    private int pageSize = 5;  //每页显示数
    private int totalCount; //记录总数
    private int currentPageNo = 1; //当前页码
    private List<Topic> topicList; //每页的新闻的集合
    
    public int getCurrentPageNo(){
    	if(totalPageCount == 0){
    		return 0;
    	}
    	else{
    		return this.currentPageNo;
    	}
    }
    public void setCurrentPageNo(int currentPageNo){
    	if(currentPageNo>0){
    		this.currentPageNo = currentPageNo;
    	}
    }
    public int getPageSize(){
    	return pageSize;
    }
    public void setPageSize(int pageSize){
    	if(pageSize>0)
    	{
    		this.pageSize = pageSize;
    	}
    }
    public int getTotalCount(){
    	return this.totalCount;
    }
    public void setTotalCount(int totalCount){
    	if(totalCount>0){
    		this.totalCount = totalCount;
    		totalPageCount = this.totalCount%pageSize == 0?(this.totalCount/pageSize):(this.totalCount/pageSize+1);
    	}
    }
    public int getTotalPageCount(){
    	return this.totalPageCount;
    }
    public void setTotalPageCount(int totalPageCount){
    	this.totalPageCount = totalPageCount;
    }
    public List<Topic> getTopicsList(){
    	return this.topicList;
    }
    public void setTopicsList(List<Topic> topicList){
    	this.topicList = topicList;
    }
}
