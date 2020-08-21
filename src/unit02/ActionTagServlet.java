package unit02;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.rmi.server.Dispatcher;

@WebServlet("/ActionTagServlet")
public class ActionTagServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String userID=request.getParameter("userID");
		String loginCheck=request.getParameter("loginCheck");
		
		request.setAttribute("userID", userID);
		RequestDispatcher dispatcher = null;
		
		if(loginCheck.equals("user")) {
			request.setAttribute("userName", "전고객");
			dispatcher = request.getRequestDispatcher("09_userMain.jsp");
		} else if(loginCheck.equals("manager")) {
			request.setAttribute("userName", "성관리");
			dispatcher = request.getRequestDispatcher("09_managerMain.jsp");
		}
		
		dispatcher.forward(request, response);
	}

}
