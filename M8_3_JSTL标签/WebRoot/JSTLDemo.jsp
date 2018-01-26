<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="org.abstergo.tech.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'JSTLDemo.jsp' starting page</title>
    
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
    <% 
        User user = new User();
        request.setAttribute("userObj", user);
    %>
    <c:out value="${userObj.username}" default="NULL"></c:out>
    <c:set target="${userObj}" property="username" value="Kimi"></c:set>
    <c:out value="${userObj.username}" default="NULL"></c:out>
  </body>
</html>
