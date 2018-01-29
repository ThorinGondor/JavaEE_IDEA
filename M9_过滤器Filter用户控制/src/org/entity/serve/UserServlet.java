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
        System.out.println("进入doPost！");
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");

        if(username.equals("江泽民")&&pwd.equals("9647")){
            System.out.println("登录成功！");
            User user = new User(username,pwd);
            request.setAttribute("userObj",user);
            request.getRequestDispatcher("welcome.jsp").forward(request,response);
        }
        else{
            System.out.println("用户名或密码不正确！");
            request.setAttribute("errMSG","用户名或者密码不正确！");
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入doGet！");
        this.doPost(request,response);
    }
}
