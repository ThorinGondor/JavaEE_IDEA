package org.entity.serve;

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
        //(1)获取
        String pwd = request.getParameter("pwd");
        boolean usedStatus;

        //(2)确定逻辑判断
        if(pwd.equals("9647")){
            usedStatus = true;
        }else {
            usedStatus = false;
        }

        //(3)响应客户端
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.print(usedStatus);
        out.flush();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入doGet()流程！");
        request.setCharacterEncoding("UTF-8");
        //(1)获取
        String username = request.getParameter("username");
        boolean usedStatus;

        //(2)确定逻辑判断
        if(username.equals("admin")){
            usedStatus = true;
        }else {
            usedStatus = false;
        }

        //(3)响应客户端
        PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UT-8");
        out.print(usedStatus);
        out.flush();
        out.close();
    }
}
