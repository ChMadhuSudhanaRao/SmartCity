package com.smartcity.Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smartcity.DAOLayer.RegisterDAO;
import com.smartcity.model.Register;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		Register r=new Register();
		
		r.setfName(request.getParameter("fn"));
		r.setlName(request.getParameter("ln"));
		r.setEmail(request.getParameter("email"));
		r.setPassword(request.getParameter("pwd"));
		r.setGender(request.getParameter("gender"));
		r.setUserType(request.getParameter("userType"));
		r.setMobile(request.getParameter("mob"));
		r.setCountry(request.getParameter("country"));
		r.setCity(request.getParameter("city"));
		System.out.println(request.getParameter("mob"));
		System.out.println(request.getParameter("country"));
		System.out.println(request.getParameter("city"));
		RegisterDAO rd=new RegisterDAO();
		int result=0;
		try {
			result=rd.register(r);
			if(result>0) {
//				request.getRequestDispatcher("/login.jsp").forward(request, response);
				request.setAttribute("message", "Resgistred Sucessfully, Please Login Below");	
				response.sendRedirect("login.jsp");
				
			}else {
				request.getRequestDispatcher("register.jsp").forward(request, response);
				request.setAttribute("message", "Please enter valid data");	
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
