package in.ineuron.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.ineuron.service.IBookService;
import in.ineuron.servicefactory.BookServiceFactory;

/**
 * Servlet implementation class BookDeletion
 */
@WebServlet("/delete")
public class BookDeletion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
			IBookService bkService = BookServiceFactory.getBookService();
			//response.setContentType("text/html");

			System.out.println("Request URI :: " + request.getRequestURI());
			System.out.println("Path info   :: " + request.getPathInfo());

			if (request.getRequestURI().endsWith("delete")) {

				String id = request.getParameter("bookid");
			PrintWriter out=response.getWriter();

	String msg = bkService.deleteBook(id);
	out.println("<html><head><title></title></head><body>");
	if (msg.equalsIgnoreCase("success")) {
		out.println("<h1>Rcord deleted Successfully</h1>");
	} else if (msg.equalsIgnoreCase("not found")) {
		out.println("<h1>record not avilable for the given id</h1>");
	} else {
		out.println("<h1>record deletion failed</h1>");
	}
	
	out.println("<a href='store.jsp'>Go to homepage</a>");
	out.println("</body></html>");

	
}
		}
}
