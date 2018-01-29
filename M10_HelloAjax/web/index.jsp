<%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/29
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>AJAX注册界面</title>
  </head>
  <body>
    <form>
      <p>用户名：<input id="sth" type="text" onblur="check()"></p>
      <p id="check"></p>
    </form>

    <script type="text/javascript" src="jquery/jquery-3.2.1.js"></script>
    <script type="text/javascript">
      function check() {
          $.ajax({
              "url" :"UserServlet",
              "type": "GET",
              "data":"username="+$("#sth").val(),
              "success":callBack,
              "error":function () {
                  alert("验证错误！")
              }
          });

          function callBack(data) {
              if(data == "true"){
                  $("#check").html("用户名已经被使用！");
              }else {
                  $("#check").html("用户名可以使用！");
              }
          }
      }
    </script>
  </body>
</html>
