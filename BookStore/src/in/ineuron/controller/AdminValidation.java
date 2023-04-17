package in.ineuron.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminValidation
 */
@WebServlet("/admin")
public class AdminValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String uname=request.getParameter("uname");
			String pass=request.getParameter("pass");
			
			if("yoga".equalsIgnoreCase(uname)||"yoga".equalsIgnoreCase(pass))
			{
				RequestDispatcher rd=request.getRequestDispatcher("adminselect.jsp");
				rd.forward(request, response);
			}
			
			
	}

}
