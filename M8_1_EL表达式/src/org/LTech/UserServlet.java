package org.LTech;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/** * * 三步常规操作：* * **/
		//（1）获取来自页面的所有填写内容
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String[] habits = request.getParameterValues("habits");
		
		//（2）内容存入user，放入Attribute
		User user = new User(username,pwd,java.util.Arrays.asList(habits));
		request.setAttribute("userObj", user);
		
		//（3）发送Attribute的user
		request.getRequestDispatcher("regSucess.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
