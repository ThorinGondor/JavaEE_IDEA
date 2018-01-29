package org.entity.database;

import java.util.*;

public interface TopicsService {
    List<Topic> findAllTopics();
    int deleteTopic(int ID);
}
