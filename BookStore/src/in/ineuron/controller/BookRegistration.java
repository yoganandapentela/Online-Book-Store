package in.ineuron.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.ineuron.dto.Book;
import in.ineuron.dto.Student;
import in.ineuron.service.IBookService;
import in.ineuron.service.IStudentService;
import in.ineuron.servicefactory.BookServiceFactory;
import in.ineuron.servicefactory.StudentServiceFactory;

/**
 * Servlet implementation class BookRegistration
 */
@WebServlet("/bookregister")
public class BookRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			IBookService bkService = BookServiceFactory.getBookService();
			//response.setContentType("text/html");

			System.out.println("Request URI :: " + request.getRequestURI());
			System.out.println("Path info   :: " + request.getPathInfo());

			if (request.getRequestURI().endsWith("bookregister")) {

				String id = request.getParameter("bookid");
				String name = request.getParameter("bookname");
				String author = request.getParameter("author");
				String type = request.getParameter("type");
				String edition = request.getParameter("edition");
				String  price= request.getParameter("price");
				
				PrintWriter out=response.getWriter();

				Book book=new Book();
				book.setId(id);
				book.setName(name);
				book.setAuthor(author);
				book.setType(type);
				book.setEdition(Integer.parseInt(edition));
				book.setPrice(Integer.parseInt(price));

				String status = bkService.addBook(book);
				RequestDispatcher dispatcher=request.getRequestDispatcher("store.jsp");
				dispatcher.forward(request,response);
		
		
		}

		}
}
