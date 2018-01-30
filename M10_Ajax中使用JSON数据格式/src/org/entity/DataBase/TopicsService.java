package org.entity.DataBase;

import java.util.List;

public interface TopicsService {
    List<Topic> findAllTopics();
    int deleteTopic(int ID);
}
