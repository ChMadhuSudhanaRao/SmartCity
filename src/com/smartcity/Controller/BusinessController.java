package com.smartcity.Controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.smartcity.DAOLayer.BusinessDAOLayer;
import com.smartcity.model.Business;


/**
 * Servlet implementation class BusinessController
 */
@WebServlet("/BusinessController")
@MultipartConfig(maxFileSize = 16177215)
public class BusinessController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BusinessController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		Business b=new Business();
		BusinessDAOLayer bd=new BusinessDAOLayer();
		b.setHeading(request.getParameter("newsHeading"));
		b.setDescription(request.getParameter("description"));
		b.setLink(request.getParameter("link"));
		
		System.out.println(request.getParameter("newsHeading"));
	
	// Image
		InputStream is = null;
		Part filePart = request.getPart("photo"); // obtains the upload file part in this multipart request
		if (filePart != null) {
			is = filePart.getInputStream();
		}

		b.setPhoto(is);
		
		try {
			bd.addNews(b);
			request.setAttribute("message", "News Added Sucessfully");
			request.getRequestDispatcher("AddBusinessNews.jsp").include(request, response);
			
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
