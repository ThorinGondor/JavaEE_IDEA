package org.topics.servlet;

import java.util.*;

public class Test {

	public static void main(String[] args) {
        TopicsService TS = new TopicsServiceImple();
        List<Topic> list =  TS.findAllTopics();
        for(Topic buff:list){
        	System.out.println(buff.getID()+" - - - "+buff.getTopicName());
        }
	}

}
