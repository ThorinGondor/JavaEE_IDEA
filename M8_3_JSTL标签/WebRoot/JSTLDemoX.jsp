<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'JSTLDemoX.jsp' starting page</title>
    
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
      <p>设置变量之前的值是：MSG= <c:out value="${msg}" default="ORIGIN"></c:out></p>
      <p><c:set var="msg" value="HelloJSTL!" scope="page"></c:set></p>
      <p>设置page范围内的新值以后：MSG= <c:out value="${msg}"></c:out></p>
      <p><c:remove var="msg" scope="page"/></p>
      <p>移除page范围内的变量以后：MSG= <c:out value="${msg}" default="NULL"></c:out></p>
  </body>
</html>
