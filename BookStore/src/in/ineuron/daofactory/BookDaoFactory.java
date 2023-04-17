package in.ineuron.daofactory;

import in.ineuron.dao.IBookDao;
import in.ineuron.dao.BookDaoImpl;
public class BookDaoFactory {

	private BookDaoFactory() {}

	private static IBookDao bookDao = null;

	public static IBookDao getBookDao() {
		if (bookDao == null) {
			bookDao = new BookDaoImpl();
		}
		return bookDao;
	}
}
