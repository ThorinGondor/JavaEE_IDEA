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
    <% 
        Map<String,String> names = new HashMap<String,String>();
        names.put("one", "斯蒂芬库里");
        names.put("two","勒布朗詹姆斯");
        names.put("three", "凯文杜兰特");
        request.setAttribute("NamesList",names);
    %>
    <!-- EL写法一： -->
    <p>姓名：${NamesList.one }</p>
    <p>姓名：${NamesList.two }</p>
    <!-- EL写法二： -->
    <p>姓名：${NamesList["three"] }</p>
  </body>
</html>
