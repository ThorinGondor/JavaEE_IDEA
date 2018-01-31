package org.entity.servlet;

import org.entity.DataBase.DataBaseUtil;
import org.entity.DataBase.Topic;
import org.entity.DataBase.TopicsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "TopicsServlet")
public class TopicsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String buffer = request.getParameter("opr");
        if(buffer.equals("list")){
            //获取标题内容
            List<Topic> list = new TopicsServiceImpl().findAllTopics();

            //存入JSON数据格式
            Topic topic;
            StringBuffer newJSON = new StringBuffer("");
            for (int i = 0;i<list.size();i++){
                topic = list.get(i);
                newJSON.append("<li>ID："+topic.getID()+" 标题："+topic.getTopicName()+"</li>");
            }

            //发送给客户端
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print(newJSON);
            out.flush();
            out.close();
        }
    }
}
