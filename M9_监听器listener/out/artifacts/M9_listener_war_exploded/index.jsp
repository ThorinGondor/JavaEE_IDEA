<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/28
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.entity.database.Topic" %>
<html>
  <head>
    <title>$Title$</title>
    <style type="text/css">
      .box{
        width: 1000px;
        margin: auto;
        padding: 20px;
        background-color: #f1df1c;
        border: 2px dashed black;
      }
      p{
        font-size: 25px;
        font-weight: bold;
        color: #380e11;
      }
    </style>
  </head>
  <body>
  <div class="box">
    <form action="doLogin.jsp" method="post">
        <p>用户名：<input type="text" name="username"></p>
        <p>密  码：<input type="password" name="pwd"></p>
        <p><input type="submit" value="点击提交"></p>
    </form>
    <p>
    <%
       //传统意义上我们需要通过连接数据库获得数据，这很麻烦，现在我们使用监听器Listener，一旦Tomcat启动就去获得数据存入Attribute中，这样只需要读取Attribute，节约时间和资源
       Object obj = application.getAttribute("LIST");
       if (obj!=null){
         @SuppressWarnings("unchecked")
         List<Topic> list = (List<Topic>)obj;
         for (Topic buffer:list){
           out.print(buffer.getID()+" - - - "+buffer.getTopicName()+"<br>");
         }
       }
       else {
           out.print("新闻获取失败！请检查服务器！");
       }
    %>
    </p>
  </div>
  </body>
</html>
