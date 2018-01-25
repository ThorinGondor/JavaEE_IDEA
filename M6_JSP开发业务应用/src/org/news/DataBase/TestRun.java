package org.news.DataBase;

import java.sql.*;
import java.util.*;

public class TestRun {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        TopicsDAO td = new TopicsDAOImple();
        try {
			int num = td.getTotalCount();
			System.out.println("标题数量："+num);
			List<Topic> list = new ArrayList<Topic>();
			list = td.getPageTopicList(2, 5);
			for(Topic buff:list){
				System.out.println(buff.getTopicName());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
