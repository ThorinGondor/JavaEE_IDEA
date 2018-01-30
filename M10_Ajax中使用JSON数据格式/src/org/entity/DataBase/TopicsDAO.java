package org.entity.DataBase;

import java.util.List;

public interface TopicsDAO {
    List<Topic> getAllTopics();
    int deleteTopic(int ID);
}
