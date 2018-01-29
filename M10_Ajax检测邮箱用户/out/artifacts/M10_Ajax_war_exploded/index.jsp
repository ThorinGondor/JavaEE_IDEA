<%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/29
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>邮箱用户注册界面</title>
  </head>
  <body>
      <form action="##" method="post">
        <p>注册邮箱：<input id="mail" type="email" name="mail" onblur="checkMail()"></p>
        <p id="checkMail"></p>
        <p>用户名：<input id="username" type="text" name="username" onblur="checkUsername()"></p>
        <p id="checkUsername"></p>
        <p><input type="submit" value="注册"></p>
      </form>
  </body>
  <script type="text/javascript" src="jquery/jquery-3.2.1.js"></script>
  <script type="text/javascript">
    function checkMail() {
        $.ajax({
           "url"  : "UserServlet",
           "type" : "GET",
           "data" : "mail="+$("#mail").val(),
           "success": callBack,
           "error":function () {
                alert("邮箱验证错误！");
            }
        });
        function callBack(data) {
            if(data == "true"){
                $("#checkMail").html("该邮箱已经被注册！");
            }
            else{
                $("#checkMail").html("该邮箱可以使用！");
            }
        }
    }
    function checkUsername() {
        $.ajax({
            "url":"UserServlet",
            "type":"GET",
            "data":"username="+$("#username").val(),
            "success":callBack,
            "error":function () {
                alert("用户名验证错误！")
            }
        });
        function callBack(data) {
            if(data == "true"){
                $("#checkUsername").html("该用户名已经被注册！");
            }else {
                $("#checkUsername").html("该用户名可以使用！");
            }
        }
    }

  </script>
</html>
