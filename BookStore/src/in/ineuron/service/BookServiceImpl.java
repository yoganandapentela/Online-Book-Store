package in.ineuron.service;

import in.ineuron.daofactory.BookDaoFactory;
import in.ineuron.daofactory.StudentDaoFactory;
import in.ineuron.dto.Book;
import in.ineuron.dto.Student;
import in.ineuron.dao.IBookDao;
import in.ineuron.dao.IStudentDao;

//service layer logic
public class BookServiceImpl implements IBookService {

	private IBookDao bkDao;

	@Override
	public String addBook(Book book) {
		bkDao = BookDaoFactory.getBookDao();
		return bkDao.addBook(book);
	}

	@Override
	public String deleteBook(String id) {
		bkDao=BookDaoFactory.getBookDao();
		
		return bkDao.deleteBook(id);
	}

	
	/*@Override
	public Student searchStudent(Integer sid) {
		stdDao = StudentDaoFactory.getStudentDao();
		return stdDao.searchStudent(sid);
	}

	@Override
	public String updateStudent(Student student) {
		stdDao = StudentDaoFactory.getStudentDao();
		return stdDao.updateStudent(student);
	}

	@Override
	public String deleteStudent(Integer sid) {
		stdDao = StudentDaoFactory.getStudentDao();
		return stdDao.deleteStudent(sid);
	}*/

}
