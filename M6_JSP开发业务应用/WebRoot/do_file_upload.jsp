<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="java.io.*,java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'do_file_upload.jsp' starting page</title>
    
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
          String uploadFileName = "";  //上传的文件名
          String fieldName = "";  //form字段元素的name属性值
          boolean isMultipart = ServletFileUpload.isMultipartContent(request);  //判断请求信息中的内容是否是multipart类型
          String uploadFilePath = "F:/UploadStorage/";  //上传文件的存储路径
          System.out.println("存储到："+uploadFilePath);
          if(isMultipart){
              //FileFactory工厂接口的实现类DiskFileItemFactory
              FileItemFactory factory = new DiskFileItemFactory();
              ServletFileUpload upload = new ServletFileUpload(factory);
              try{
                  //将form表单中的所有文件存入list
                  List<FileItem> items = upload.parseRequest(request);
                  Iterator<FileItem> it = items.iterator();
                  //遍历这些文件
                  while(it.hasNext()){
                      FileItem item = (FileItem)it.next();
                      if(item.isFormField()){//普通表单字段
                          fieldName = item.getFieldName(); //表单字段的name属性值
                          if(fieldName.equals("username")){
                              out.print(item.getString("UTF-8")+"上传了文件。<br/>");
                          }
                      }else{  //文件表单字段
                          String fileName = item.getName();
                          if(fileName!=null&&!fileName.equals("")){
                              File fullFile = new File(item.getName());
                              File saveFile = new File(uploadFilePath,fullFile.getName());
                              item.write(saveFile);   //将上传的文件保存到文件中
                              uploadFileName = fullFile.getName();
                              out.print("上传成功后的文件名是："+uploadFileName);
                          }
                      }
                  }
              }
              catch(Exception e){
                  e.printStackTrace();
              }
          }
      %>
  </body>
</html>
