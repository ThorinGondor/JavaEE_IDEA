package org.topics.servlet;
import java.sql.*;
import java.util.*;

public class TopicsServiceImple implements TopicsService{
	public List<Topic> findAllTopics(){
		List<Topic> list = new ArrayList<Topic>();
		Connection conn = null;
		conn = DataBaseUtil.getConnect();
		TopicsDAO TDAO = new TopicsDAOImple(conn);
		list = TDAO.getAllTopics();
		DataBaseUtil.closeAll(conn, null, null);
		return list;
	}
	 public int deleteTopics(int ID){
		 int result = -1;
		 Connection conn = null;
		 conn = DataBaseUtil.getConnect();
		 TopicsDAO TDAO = new TopicsDAOImple(conn);
		 result = TDAO.deleteTopics(ID);
		 if(ID>30||ID<1){
			 result = -1;
		 }
		 return result;
	 }
}
