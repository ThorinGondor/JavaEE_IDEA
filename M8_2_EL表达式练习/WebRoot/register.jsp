<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    <form action="UserServlet" method="post">
        <p>昵称：<input type="text" name="nickname"></p>
        <p>所在城市：<input type="text" name="city"></p>
        <p>
                             您所使用的开发语言：<input type="checkbox" name="langs" value="Java">Java&nbsp;&nbsp;
                             <input type="checkbox" name="langs" value="C++">C++&nbsp;&nbsp;
                             <input type="checkbox" name="langs" value="PHP">PHP&nbsp;&nbsp;
                             <input type="checkbox" name="langs" value="Fortran">Fortran&nbsp;&nbsp;
                             <input type="checkbox" name="langs" value="Python">PYTHON&nbsp;&nbsp;
        </p>
        <p><input type="submit" value="点击提交"></p>
    </form>
  </body>
</html>
