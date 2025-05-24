package project1.Ctrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project1.model.MModel;

@WebServlet("/check_Admin_Login")
public class CheckAdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	 String email = request.getParameter("em1");
	 String pass = request.getParameter("pwd1");
	 
	 MModel model = new MModel();
	 int i = model.checkAdminLogin(email,pass);
	 
	 if(i != 0) {
		 HttpSession session = request.getSession();
			session.setAttribute("user", email);
			
		 response.sendRedirect("Admin_home.jsp");
	 }else {
		 RequestDispatcher rd = request.getRequestDispatcher("Admin_login.jsp");
			request.setAttribute("msg", "INVALID CREDENTIALS");
			rd.forward(request, response);
	 }
	
	}

}
