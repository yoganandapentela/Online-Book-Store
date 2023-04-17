package in.ineuron.service;

import in.ineuron.dto.Book;

public interface IBookService {
	
	// operations to be implemented
	public String addBook(Book book);

	public String deleteBook(String id);


	/*public Student searchStudent(Integer sid);

	public String updateStudent(Student student);

	public String deleteStudent(Integer sid);*/

}
