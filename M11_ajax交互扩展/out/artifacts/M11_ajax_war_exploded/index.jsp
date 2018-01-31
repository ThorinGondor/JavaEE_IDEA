<%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/30
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <form action="##" method="post">
      <p>用户名：
        <label><input id="username" type="text" name="username" onblur="checkUsername()"></label>
        <span id="nameDiv"></span>
      </p>

      <p>密  码：
        <label><input id="pwd" type="password" name="pwd" onblur="checkPWD()"></label>
        <span id="pwdDiv"></span>
      </p>

      <p><input type="submit" value="点击提交"></p>
    </form>
  </body>

  <script type="text/javascript" src="jquery/jquery-3.2.1.js"></script>
  <script type="text/javascript">
      function checkUsername() {
          var username = $("#username").val();
          if(username == null ||username == ""){
              $("#nameDiv").html("用户名不能为空！");
          }
          else {
              $.get("UserServlet","username="+$("#username").val(),callBack);
          }

      }
      function callBack(data) {
          if(data == "true"){
              $("#nameDiv").html("用户名已经存在！");
          }else {
              $("#nameDiv").html("用户名可以使用！");
          }
      }

      /************************************************************************/

      function checkPWD() {
          var pwd = $("#pwd").val();
          if(pwd == null || pwd == ""){
              $("#pwdDiv").html("密码不能为空！");
          }else {
              $.post("UserServlet","pwd="+$("#pwd").val(),feedBack);
          }
      }
      function feedBack(data) {
          if(data == "true"){
              $("#pwdDiv").html("密码已经存在！");
          }else {
              $("#pwdDiv").html("密码可以使用！");
          }
      }

  </script>

</html>
