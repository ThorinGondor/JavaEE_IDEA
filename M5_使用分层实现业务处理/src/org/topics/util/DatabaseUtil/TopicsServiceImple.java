package org.topics.util.DatabaseUtil;
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
}
