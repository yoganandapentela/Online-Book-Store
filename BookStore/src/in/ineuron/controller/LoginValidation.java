package in.ineuron.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import in.ineuron.util.*;
/**
 * Servlet implementation class LoginValidation
 */
@WebServlet("/login")
public class LoginValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection = null;
	PreparedStatement pstmt = null;
	ResultSet resultSet=null;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sqlSelectQuery = "select username from student where username= ? and password=?";
	   String uname=request.getParameter("uname");
	   String pass=request.getParameter("pass");
	  PrintWriter pw=response.getWriter();


		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null) {
				pstmt = connection.prepareStatement(sqlSelectQuery);
			}

			if (pstmt != null) {
				pstmt.setString(1,uname);
			    pstmt.setNString(2,pass);
			}

			if (pstmt != null) {
				resultSet = pstmt.executeQuery();
				PrintWriter out=response.getWriter();
			
			}

			if (resultSet != null) {

				if (resultSet.next()) {
					request.setAttribute("name",uname);
					RequestDispatcher rd=request.getRequestDispatcher("store.jsp");
					rd.forward(request, response);
				}
				else {
					RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
                    rd.forward(request, response);
				}
					
	}
			}
			
			catch (SQLException | IOException e) {
					e.printStackTrace();
				}
	
			
			}
}

	
