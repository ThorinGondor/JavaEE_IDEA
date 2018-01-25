<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="org.news.DataBase.Topic"%>
<%@ page import="org.news.DataBase.TopicsDAO"%>
<%@ page import="org.news.DataBase.TopicsDAOImple"%>
<%@ page import="org.news.util.Page"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>分页显示效果</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <% 
        Integer currentPageNo = (Integer)application.getAttribute("pageIndex");
        if(currentPageNo==null){
            currentPageNo = 1;
            System.out.println("application:当前页面是："+currentPageNo);
            application.setAttribute("pageIndex", currentPageNo);
        }
        else{
            System.out.println("application:当前页面是："+currentPageNo);
        }
    %>
    <%
        TopicsDAO TDAO = new TopicsDAOImple();
        int totalCount = TDAO.getTotalCount();
        out.print("新闻总数："+totalCount);
        Page pg = new Page();
        pg.setCurrentPageNo(currentPageNo); //第X页
        pg.setPageSize(5); //本页显示五条新闻
        pg.setTotalCount(totalCount); //一共有20条新闻需要显示
    %>
    <br>
    <%
        out.print("当前是第"+pg.getCurrentPageNo()+"页");
    %>
    <br>
    <%
        List<Topic> list = TDAO.getPageTopicList(pg.getCurrentPageNo(), pg.getPageSize());
        pg.setTopicsList(list);
        
        for(Topic topic:pg.getTopicsList()){
            out.println(topic.getID()+" - - - "+topic.getTopicName());
    %>
    <br>
    <%
        }
    %>
    <br>
    <a href="pageIndexControlFirst.jsp">首页</a>
    <a href="pageIndexControlMinus.jsp">上一页</a>
    <a href="pageIndexControlPlus.jsp">下一页</a>
    <a href="pageIndexControlEnd.jsp">尾页</a>
  </body>
</html>
