package org.entity.database;
import java.sql.*;
import java.util.*;

public class TopicsServiceImpl implements TopicsService{
	public List<Topic> findAllTopics(){
		Connection conn  = DataBaseUtil.getConnect();
		TopicsDAO tDAO = new TopicsDAOImpl(conn);
		List<Topic> list = tDAO.getAllTopics();
		DataBaseUtil.closeAll(conn, null, null);
		return list;
	}

	public int deleteTopic(int ID){
		int result = -1;
		Connection conn = DataBaseUtil.getConnect();
		TopicsDAO tDAO = new TopicsDAOImpl(conn);
		result = tDAO.deleteTopic(ID);
		return  result;
	}
}
