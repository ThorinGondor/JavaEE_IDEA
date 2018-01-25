package org.topics.servlet;

import java.util.*;

public interface TopicsService {
    public List<Topic> findAllTopics();
    public int deleteTopics(int ID);
}
