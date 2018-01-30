<%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/30
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>管理员登录系统</title>
  </head>
  <body>
    <form action="UserServlet" method="post">
      <P>用户名：<label><input type="text" name="username" required></label></P>
      <p>密  码：<label><input type="password" name="pwd" required></label></p>
      <p><input type="submit" value="点击提交"></p>
    </form>
  </body>
</html>
