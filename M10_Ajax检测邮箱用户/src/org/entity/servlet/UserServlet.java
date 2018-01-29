package org.entity.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UserServlet")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入doPost()流程！");
        request.setCharacterEncoding("UTF-8");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入doGet()流程！");
        //(1)从Ajax获取数据
        String mail = request.getParameter("mail");
        String username = request.getParameter("username");

        //(2)根据数据，自定义逻辑确定返回值
        boolean usedStatus = false;
        if(mail!=null){
            if(mail.equals("1360002051@qq.com")){
                usedStatus = true;
            }
            else {
                usedStatus = false;
            }
        }
        if(username!=null){
            if(username.equals("ThorinGondor")){
                usedStatus = true;
            }
            else {
                usedStatus = false;
            }
        }

        //(3)将返回值反馈给客户端ajax
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.print(usedStatus);
        out.flush();
        out.close();
    }
}
