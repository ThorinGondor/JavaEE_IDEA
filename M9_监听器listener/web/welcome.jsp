<%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/29
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎页面</title>
</head>
<body>
    <%
        String username = (String)session.getAttribute("login");
        if(username!=null){
            out.print("欢迎你！"+username);
        }
        else {
            response.sendRedirect("index.jsp");
        }
    %>
</body>
</html>
