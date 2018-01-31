<%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/31
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>获取新闻界面</title>
  </head>
  <body>
    <p>获取新闻：<input type="button" onclick="getTopics()" value="获取新闻"></p>
    <ul id="TopicsList">
    </ul>
  </body>
  <script type="text/javascript" src="jquery/jquery-3.2.1.js"></script>
  <script type="text/javascript">
    function getTopics() {
        $.getJSON("TopicsServlet","opr=list",processTopicsList);
    }
    function processTopicsList(data) {
        //先清空
        $("#TopicsList").empty();
        //再遍历data数据
        for (var i =0; i<data.length;i++){
            $("#TopicsList").append("<li>"+data[i].ID+" - - - "+data[i].TopicName+"</li>");
        }
    }
  </script>
</html>
