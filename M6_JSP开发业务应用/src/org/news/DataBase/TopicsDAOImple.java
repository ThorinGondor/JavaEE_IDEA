package org.news.DataBase;

import java.sql.*;
import java.util.*;

public class TopicsDAOImple extends BaseDao implements TopicsDAO {
	public int getTotalCount()throws SQLException{
		int count = -1;
		String sql = "SELECT COUNT('ID') FROM Topics";
		count = this.executeCount(sql);
		System.out.println(count);
		return count;
	}
	
	public List<Topic> getPageTopicList(int pageNo, int pageSize){
		List<Topic> list = new ArrayList<Topic>();
		String sql = "SELECT * FROM Topics LIMIT ?, ?";
		try {
			ResultSet RS = this.executeQuery(sql,(pageNo-1)*pageSize,pageSize);
			while(RS.next()){
				list.add(new Topic(RS.getInt("ID"),RS.getString("TopicName")));
			}
			System.out.println("获取标题ID和内容成功！");
		} catch (SQLException e) {
			System.out.println("ERROR---获取标题ID和内容失败！");
			e.printStackTrace();
		}
		return list;
	}
}
