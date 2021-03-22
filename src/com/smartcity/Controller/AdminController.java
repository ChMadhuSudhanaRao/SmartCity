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
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
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

		//AdminDAOLayer al=new AdminDAOLayer();
		try {

			Login l = LoginDAOLayer.admin(userName);
			if (l == null) {
				request.getRequestDispatcher("admin.html").include(request, response);
				System.out.println("entered wrong emailid");
			} else {
				if (password.equals(l.getPassword())) {
					HttpSession session = request.getSession();
				    session.setAttribute("user", userName);
					System.out.println("Login Sucessfully");
					request.getRequestDispatcher("adminHome.jsp").include(request, response);
					
				} else {
					System.out.println("entered wrong Password");
					
					request.getRequestDispatcher("admin.html").include(request, response);
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
