package org.entity.serve;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserServlet")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入doPost()流程！");
        request.setCharacterEncoding("UTF-8");
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入doGet()流程！");
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");
        //登录状态：
        boolean logStatus = false;

        if(username.equals("admin") && pwd.equals("9647")){
            logStatus = true;
            request.setAttribute("logStatus",logStatus);
            request.getRequestDispatcher("controlCenter.jsp").forward(request,response);
        }
        else {
            logStatus = false;
            request.setAttribute("logStatus",logStatus);
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
    }
}
