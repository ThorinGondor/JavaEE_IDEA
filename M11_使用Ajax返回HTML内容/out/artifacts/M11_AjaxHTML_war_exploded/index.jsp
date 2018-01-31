<%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/31
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <p>获取新闻：<input type="button" onclick="getTopics()" value="获取新闻"></p>
    <ul id="TopicsList">
    </ul>
  </body>
  <script type="text/javascript" src="jquery/jquery-3.2.1.js"></script>
  <script type="text/javascript">
    function getTopics() {
        $.ajax({
            "url":"TopicsServlet",
            "type":"GET",
            "data":"opr=list",
            "dataType":"html",
            "success":processTopicsList
        });
    }
    function processTopicsList(data) {
        alert("response!");
        $("#TopicsList").html(data);
    }
  </script>
</html>
