<%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/28
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <%
      String warning;
      Object obj = request.getAttribute("warning");
      if(obj!=null) {
        warning = obj.toString();
        out.println(warning);
      }
    %>
    <form action="UserServlet" method="post">
      <p>用户名：<input type="text" name="username"></p>
      <p>密码：<input type="password" name="pwd"></p>
      <p><input type="submit" value="点击提交"></p>
    </form>
  </body>
</html>
