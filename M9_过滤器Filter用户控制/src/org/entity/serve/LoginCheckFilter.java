package org.entity.serve;

import com.sun.org.apache.regexp.internal.RE;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;


@WebFilter(filterName = "LoginCheckFilter")
public class LoginCheckFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("进入登录控制Filter");
        String username = req.getParameter("username");
        System.out.println("test"+username);
        if(username!=null){
            if(username.contains("FUCK")){
                System.out.println("不准骂人！");
                HttpServletRequest request = (HttpServletRequest)req;
                request.setAttribute("warning","敏感字眼FUCK!");
                request.getRequestDispatcher("index.jsp").forward(request,resp);
            }
            else{
                chain.doFilter(req,resp);
            }
        }else {
            chain.doFilter(req,resp);
        }


    }

    public void init(FilterConfig config) throws ServletException {
        //暂无需求
    }

}
