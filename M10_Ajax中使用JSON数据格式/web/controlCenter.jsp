<%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/30
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询页面</title>
</head>
<body>
  <%
    String logStatus;
    Object obj = request.getAttribute("logStatus");
    if(obj!=null){
        logStatus = obj.toString();
        if(!logStatus.equals("true")){
            response.sendRedirect("index.jsp");
        }
    }
    else {
        response.sendRedirect("index.jsp");
    }
  %>
  <%
      String username = request.getParameter("username");
  %>
  <p>欢迎 <%=username %> 登录管理员界面！</p>
  <p><input type="button" onclick="initTopics()" value="显示新闻"></p>
  <p id="topicsList"></p>
</body>
<script type="text/javascript" src="jquery/jquery-3.2.1.js"></script>
<script type="text/javascript">
    function initTopics() {
        $.ajax({
            "url":"TopicsServlet",
            "type":"GET",
            "data":"opr=list",
            "dataType":"json",
            "error":function () {
                alert("响应失败！");
            },
            "success":processTopicsList
        });
    }
    function processTopicsList(data) {
        if(data == "2"){
            $("#topicsList").html("GET!");
        }
        else {
            $("#topicsList").html("JSON!");
        }
    }
</script>
</html>
