<%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/29
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>控制界面</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");
        boolean status = false;
        if(username.equals("admin")&&pwd.equals("9647")){
            status = true;
            session.setAttribute("status",status);
            session.setAttribute("login",username);
            session.setMaxInactiveInterval(15);
            request.getRequestDispatcher("welcome.jsp").forward(request,response);
        }
        else{
            System.out.println("用户名或密码不正确！");
            response.sendRedirect("index.jsp");
        }
    %>
</body>
</html>
