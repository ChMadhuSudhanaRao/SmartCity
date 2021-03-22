package com.smartcity.Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.smartcity.DAOLayer.LoginDAOLayer;
import com.smartcity.model.Login;



/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String userName = request.getParameter("Email");
		String password = request.getParameter("password");
		System.out.println(userName + password);

	LoginDAOLayer ld = new LoginDAOLayer();

		try {

			Login l = ld.loginUser(userName);
			if (l==null){
				response.sendRedirect("login.jsp");
				System.out.println("entered wrong details");
			} else {
						if (password.equals(l.getPassword())) {
							System.out.println(l.getUserName());
						System.out.println(l.getUserType());
						HttpSession session = request.getSession();
					    session.setAttribute("user", userName);
						System.out.println("Login Sucessfully");
						if(l.getUserType().equals("Student")) {
							response.sendRedirect("student.jsp");
						}
						if(l.getUserType().equals("Tourist")) {
							response.sendRedirect("tourist.jsp");
						}
						if(l.getUserType().equals("JobSeeker")) {
							response.sendRedirect("jobSeeker.jsp");
						}
						if(l.getUserType().equals("BusinessPerson")){
							response.sendRedirect("business.jsp");
						}
					
					
					
				} else {
					System.out.println("entered wrong Password");
					
					response.sendRedirect("login.jsp");
				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
