package org.topics.servlet;

import java.sql.*;
import java.util.*;

public class TopicsDAOImple extends BaseDAO implements TopicsDAO{
	public TopicsDAOImple(Connection conn) {
		super(conn);
	}
    //获取所有新闻Topics
	public List<Topic> getAllTopics(){
		List<Topic> list = new ArrayList<Topic>();
		ResultSet RS = null;
		String sql = "SELECT * FROM Topics";
		try {
			RS = this.executeQuery(sql);
			System.out.println("获取数据成功！");
			while(RS.next()){	
				list.add(new Topic(RS.getInt("ID"),RS.getString("TopicName")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public int deleteTopics(int ID){
		int result = -1;
		String sql = "DELETE FROM Topics WHERE ID = ?";
		try {
			result = this.executeUpdate(sql, ID);
			if(result!=-1)
				System.out.println("删除数据库指定内容成功！");
			else
				System.out.println("您输入的ID号不存在！");
		} catch (SQLException e) {
			System.out.println("ERROR---删除数据库指定内容失败！");
			e.printStackTrace();
		}
		return result;
	}
}
