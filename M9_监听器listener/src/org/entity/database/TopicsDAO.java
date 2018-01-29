package org.entity.database;

import java.util.*;

public interface TopicsDAO {
    List<Topic> getAllTopics();
    int deleteTopic(int ID);
}
