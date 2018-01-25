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
    
    <title>ServerResponse</title>
    
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
    <!-- 该代码实现了上传文件的格式的限制，这里规定只能上传jpg、png、bmp格式的文件 -->
    <% 
        List<String> qualifiedTypes = Arrays.asList("jpg","bmp","png");
    %>
    <% 
        String uploadFileName = "";
        String fieldName = "";  //文件的名称
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        String uploadFilePath = "F:/UploadStorage/";
        System.out.println("存储到："+uploadFilePath);
        if(isMultipart){
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            try{
                List<FileItem> items = upload.parseRequest(request);
                Iterator<FileItem> it = items.iterator();
                while(it.hasNext()){
                    FileItem item = (FileItem)it.next();
                    if(!item.isFormField()){  //非普通表单字段，即文件表单字段
                        String fileName = item.getName();  //获取该文件的名称
                        String ext = fileName.substring(fileName.lastIndexOf(".")+1);
                        if(!qualifiedTypes.contains(ext)){
                            out.print("上传失败！");
                        }
                        else{
                            if(fileName!=null&&!fileName.equals("")){
                                File fullFile = new File(item.getName());
                                File saveFile = new File(uploadFilePath,fullFile.getName());
                                item.write(saveFile);
                                uploadFileName = fullFile.getName();
                                out.print("上传成功的文件是："+uploadFileName);
                            }
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
