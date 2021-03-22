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

import com.smartcity.DAOLayer.TourismDAOLayer;
import com.smartcity.model.Tourism;

/**
 * Servlet implementation class TourismController
 */
@WebServlet("/TourismController")
@MultipartConfig(maxFileSize = 16177215)
public class TourismController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TourismController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		Tourism t=new Tourism();
		TourismDAOLayer td=new TourismDAOLayer();
		t.setpName(request.getParameter("pName"));
		t.setLocation(request.getParameter("location"));
		t.setDescrp(request.getParameter("description"));
		
		// Image
		InputStream is = null;
		Part filePart = request.getPart("photo"); // obtains the upload file part in this multipart request
		if (filePart != null) {
			is = filePart.getInputStream();
		}

		t.setPhoto(is);
		
		try {
			td.addTourism(t);
			request.setAttribute("message", "Place Added Sucessfully");
			request.getRequestDispatcher("AddTourism.jsp").include(request, response);
			
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
