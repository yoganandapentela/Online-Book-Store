package in.ineuron.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookStoreValidation
 */
@WebServlet("/BookStoreValidation")
public class BookStoreValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double sum = 0;
		Enumeration<String> parameterNames = request.getParameterNames();
		while (parameterNames.hasMoreElements()) {
		  String paramName = parameterNames.nextElement();
		  if (paramName.startsWith("item")) {
		    String paramValue = request.getParameter(paramName);
		    if (paramValue != null && !paramValue.isEmpty()) {
		      sum += Double.parseDouble(paramValue);
		    }
		  }
		}
		
		request.setAttribute("sum",sum);
		RequestDispatcher dispatcher=request.getRequestDispatcher("Result.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
