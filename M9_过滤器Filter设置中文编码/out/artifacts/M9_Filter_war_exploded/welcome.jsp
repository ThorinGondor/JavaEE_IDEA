<%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/28
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.entity.Filter.User" %>
<html>
<head>
    <title>欢迎页面</title>
</head>
<body>
  <%
      User user = null;
      Object obj= request.getAttribute("userObj");
      if(obj!=null){
          user = (User)obj;
      }
  %>
  <p>欢迎<%=user.getName() %>来到登录界面！ </p>
</body>
</html>
