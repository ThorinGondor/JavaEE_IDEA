package org.news.DataBase;

import java.sql.*;
import java.util.List;

public interface TopicsDAO {
    public int getTotalCount()throws SQLException;
    public List<Topic> getPageTopicList(int pageNo, int pageSize);
}
