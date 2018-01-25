<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="org.topics.servlet.Topic" %>
<%@ page import="org.topics.servlet.TopicsService" %>
<%@ page import="org.topics.servlet.TopicsServiceImple" %>
<%@ page import="org.topics.servlet.TopicsDAO" %>
<%@ page import="org.topics.servlet.TopicsDAOImple" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'topic_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div class="box">
        <p>所有新闻：</p>
        <% 
            List<Topic> list = new ArrayList<Topic>();
            list = (List<Topic>)request.getAttribute("LIST");
            for(Topic buffer:list){
        %><p>
        <%
                out.print(buffer.getID()+" - - - "+buffer.getTopicName());
        %>
        </p>
        <%
            }
        %>
    <input type="button" value="点击返回" onclick="back()">
    </div>
    
    <script type="text/javascript">
        function back(){
            history.back();
        }
    </script>
  </body>
</html>
