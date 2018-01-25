<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delete_topic.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style type="text/css">
      .hide{
          display:none;
      }
  </style>
  <body>
    <form action="TopicsServlet" method="post">
        <p>请输入您要删除的新闻编号：<input type="text" name="tid"></p>
        <p class="hide"><input type="text" value="del" name="opr"></p> 
        <p><input type="submit" value="点击提交"></p>
    </form>
    <input type="button" value="点击返回" onclick="back()">
    <script type="text/javascript">
       function back(){
            history.back();
        }
    </script>
  </body>
</html>
