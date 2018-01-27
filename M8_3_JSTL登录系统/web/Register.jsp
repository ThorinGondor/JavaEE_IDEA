<%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/27
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>客户端登录界面</title>
</head>
<body>
    <%
        String errMSG;
        Object obj = request.getAttribute("errMSG");
        if(obj!=null) {
            errMSG = obj.toString();
            out.println(errMSG);
        }
    %>
    <form action="LogIn.jsp" method="post">
        <p><input type="hidden" value="post" name="cmdStr"></p>  <!--用于让目标页面判断是否已经提交-->
        <p>用户名：<input type="text" name="username"/></p>
        <P>密码：<input type="password" name="pwd"/></P>
        <p><input type="submit" value="点击提交"></p>
    </form>
</body>
</html>
