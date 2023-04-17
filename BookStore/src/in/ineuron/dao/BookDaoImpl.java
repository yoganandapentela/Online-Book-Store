package in.ineuron.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import in.ineuron.dto.Book;
import in.ineuron.dto.Student;
import in.ineuron.util.JdbcUtil;
import in.ineuron.util.*;

//Persistence logic using JDBC API
public class BookDaoImpl implements IBookDao {

	Connection connection = null;
	PreparedStatement pstmt = null;
	ResultSet resultSet = null;

	public String addBook(Book book) {

		String sqlInsertQuery = "insert into books(id,name,author,type,edition,price)values(?,?,?,?,?,?)";
		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlInsertQuery);

			if (pstmt != null) {

				pstmt.setString(1, book.getId());
				pstmt.setString(2, book.getName());
				pstmt.setString(3, book.getAuthor());
				pstmt.setString(4, book.getType());
				pstmt.setInt(5, book.getEdition());
				pstmt.setInt(6, book.getPrice());

				int rowAffected = pstmt.executeUpdate();
				if (rowAffected == 1) {
					return "success";
				}
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}

		return "failure";
	}

	@Override
	public String deleteBook(String id) {
		String sqlDeleteQuery = "delete from books where id = ?";
		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlDeleteQuery);

			if (pstmt != null) {

				pstmt.setString(1, id);

				int rowAffected = pstmt.executeUpdate();
				if (rowAffected == 1) {
					return "success";
				} else {
					return "not found";
				}
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
			return "failure";
		}
		return "failure";
	
	
	}

	
	/*@Override
	public Student searchStudent(Integer sid) {
		String sqlSelectQuery = "select id,name,age,address from student where id = ?";
		Student student = null;

		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlSelectQuery);

			if (pstmt != null)
				pstmt.setInt(1, sid);

			if (pstmt != null) {
				resultSet = pstmt.executeQuery();
			}

			if (resultSet != null) {

				if (resultSet.next()) {
					student = new Student();

					// copy resultSet data to student object
					student.setSid(resultSet.getInt(1));
					student.setSname(resultSet.getString(2));
					student.setSage(resultSet.getInt(3));
					student.setSaddress(resultSet.getString(4));

					return student;
				}

			}

		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}

		return student;
	}


	@Override
	public String deleteStudent(Integer sid) {
		String sqlDeleteQuery = "delete from student where id = ?";
		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlDeleteQuery);

			if (pstmt != null) {

				pstmt.setInt(1, sid);

				int rowAffected = pstmt.executeUpdate();
				if (rowAffected == 1) {
					return "success";
				} else {
					return "not found";
				}
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
			return "failure";
		}
		return "failure";

	}

	@Override
	public String updateStudent(Student student) {
		String sqlUpdateQuery = "update student set name=?,age=?,address=? where id=?";
		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlUpdateQuery);

			if (pstmt != null) {

				pstmt.setString(1, student.getSname());
				pstmt.setInt(2, student.getSage());
				pstmt.setString(3, student.getSaddress());
				pstmt.setInt(4, student.getSid());

				int rowAffected = pstmt.executeUpdate();
				if (rowAffected == 1) {
					return "success";
				}
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}

		return "failure";
	}*/

}
