package org.entity.serve;

import org.entity.object.Comment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "PostBarServlet")
public class PostBarServlet extends HttpServlet {
    List<Comment> list = new ArrayList<Comment>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入doPost()流程！");

        String username = request.getParameter("username");
        String commentInput = request.getParameter("commentInput");
        String address = request.getParameter("address");

        Comment cmt = new Comment(username,commentInput,address);
        list.add(cmt);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入doGet()流程！");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        StringBuffer newList = new StringBuffer("");
        for (int i=0;i<list.size();i++){
            Comment cmt = list.get(i);
            newList.append("<li>"+cmt.getUsername()+" --- "+cmt.getContent()+" --- "+cmt.getAddress()+"</li>");
        }
        System.out.println("新闻评论内容："+newList);
        out.print(newList);
        out.flush();
        out.close();
    }
}
