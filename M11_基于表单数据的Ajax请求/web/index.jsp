<%--
  Created by IntelliJ IDEA.
  User: 李鑫泽
  Date: 2018/1/31
  Time: 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.net.InetAddress" %>

<html>
  <head>
    <title>新闻评论墙</title>
  </head>
  <body>
    <%
      InetAddress address = InetAddress.getLocalHost();
      String hostAddress = address.getHostAddress();
    %>
    <ul class="classList">
      <form action="" method="post">
        <ul id="commentList"></ul>
        <input type="hidden" id="commentID" name="commentID">
        <table width="80%" align="center">
          <tr>
            <td>用户名：
              <label><input type="text" name="username" id="username" value="这家伙很懒"></label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              IP：<strong><%=hostAddress%></strong><input type="hidden" value=<%=hostAddress %> name="address">
            </td>
          </tr>
          <tr>
            <td><textarea name="commentInput" id="commentInput" style="width: 1000px;height: 200px;"></textarea></td>
          </tr>
          <tr>
            <td><input type="button" value="点击发布" name="publish" id="commentPublish"></td>
          </tr>
        </table>
      </form>
    </ul>
  </body>

  <script type="text/javascript" src="jquery/jquery-3.2.1.js"></script>
  <script type="text/javascript">
      /* * 每次刷新页面都会从Servlet获取新闻评论内容，并打印输出 * */
      $.ajax({
          "url":"PostBarServlet",
          "dataType":"html",
          "error":function () {
              alert("获取新闻评论失败！");
          },
          "success":processList
      });
      function processList(data) {
          $("#commentList").empty().html(data);
      }

      /* * 提交新闻评论 * */
      $(document).ready(function () {
        $("#commentPublish").click(function () {
              $.ajax({
                  "url":"PostBarServlet",
                  "type":"POST",
                  "data":$("form").serialize(), //序列化form的所有数据，输出到Servlet
                  "error":function () {
                      alert("提交失败！");
                  },
                  "success":afterComment
              });
              function afterComment() {
                  alert("提交成功！");
                  location.reload();
              }
            }
        );

    })
  </script>
</html>
