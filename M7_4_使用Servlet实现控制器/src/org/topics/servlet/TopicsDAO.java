package org.topics.servlet;

import java.util.*;

public interface TopicsDAO {
    public List<Topic> getAllTopics();
    public int deleteTopics(int ID);
}
