package in.ineuron.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.ineuron.dto.Student;
import in.ineuron.service.IStudentService;
import in.ineuron.servicefactory.StudentServiceFactory;

/**
 * Servlet implementation class ValidationServlet
 */
@WebServlet("/valid")
public class ValidationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    RequestDispatcher dipatcher=null;
    /*public ValidationServlet() {
        super();
       
    }

	
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}*/

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		IStudentService stdService = StudentServiceFactory.getStudentService();
		//response.setContentType("text/html");

		System.out.println("Request URI :: " + request.getRequestURI());
		System.out.println("Path info   :: " + request.getPathInfo());

		if (request.getRequestURI().endsWith("valid")) {

			String email = request.getParameter("email");
			String username = request.getParameter("username");
			String address = request.getParameter("address");
			String phone = request.getParameter("phone");
			String state = request.getParameter("state");
			String password = request.getParameter("password");
			
			PrintWriter out=response.getWriter();

			Student student = new Student();
			student.setEmail(email);
			student.setUsername(username);
			student.setAddress(address);
			student.setPhone(phone);
			student.setState(state);
			student.setPassword(password);

			String status = stdService.addStudent(student);
			RequestDispatcher dispatcher=request.getRequestDispatcher("welcome.jsp");
			dispatcher.forward(request,response);
	
	

}
		
	}
	
	
	
	
	
}
