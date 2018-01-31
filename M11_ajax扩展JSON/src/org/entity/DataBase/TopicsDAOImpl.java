package org.entity.DataBase;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TopicsDAOImpl extends BaseDAO implements TopicsDAO {
	public TopicsDAOImpl(Connection conn) {
		super(conn);
	}

	public List<Topic> getAllTopics(){
		List<Topic> list = new ArrayList<Topic>();
		ResultSet RS = null;
		String sql = "SELECT * FROM Topics";
		try {
			RS = this.executeQuery(sql);
			System.out.println("获取数据库内容成功!");
			while(RS.next()){	
				list.add(new Topic(RS.getInt("ID"),RS.getString("TopicName")));
			}
		} catch (SQLException e) {
			System.out.println("ERROR---获取数据库内容失败!");
			e.printStackTrace();
		}
		return list;
	}

	public int deleteTopic(int ID){
		String sql = "DELETE FROM Topics WHERE ID = ?";
		int result = -1;
		try {
			result = this.executeUpdate(sql,ID);
		}catch (SQLException e){
			e.printStackTrace();
		}
		return  result;
	}
}
