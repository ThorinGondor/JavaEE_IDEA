package org.entity.Filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(filterName = "CharacterEncodingFilter")
public class CharacterEncodingFilter implements Filter {
    //设置全局变量
    String charset = null;

    public void destroy() {
        //暂无需求
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("进入doFilter()流程！");
        if(charset!=null){
            req.setCharacterEncoding(charset);
            resp.setCharacterEncoding(charset);
        }
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {
        String initParam = config.getInitParameter("charset");
        if(initParam!=null){
            charset = initParam;
        }
    }

}
