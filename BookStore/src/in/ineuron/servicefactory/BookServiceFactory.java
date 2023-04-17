package in.ineuron.servicefactory;

import in.ineuron.service.BookServiceImpl;
import in.ineuron.service.IBookService;



//Abstraction logic of implementation
public class BookServiceFactory {

	//make constuctor private to avoid object creation
	private BookServiceFactory() {

	}

	private static IBookService bookService = null;

	public static IBookService getBookService() {
		
		//singleton pattern code
		if (bookService == null) {
			bookService = new BookServiceImpl();
		}
		return bookService;
	}

}
