<%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/27
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="org.entity.User.User" %>
<%@ page import="java.util.*" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
      <%
          //获取数据：
          String username = request.getParameter("username");
          String pwd = request.getParameter("pwd");

          //区分是否已经提交表单：
          String cmdStr = request.getParameter("cmdStr");
          out.print("您输入的内容是：<br>"+username+"<br>"+pwd+"<br>"+cmdStr+"<br>");

          if("post".equals(cmdStr)) {
              if ("admin".equals(username) && "9647".equals(pwd)) {
                  /**登录成功**/
                  User user = new User(username, pwd);
                  request.getSession().setAttribute("userObj", user);
              } else {
                  request.setAttribute("errMSG", "用户名密码不正确！");
                  request.getRequestDispatcher("Register.jsp").forward(request,response);
              }
          }
      %>
      <c:set var="user" value="${sessionScope.userObj}"></c:set>
      欢迎${user.getUsername()}，您已经登录成功！
  </body>
</html>
