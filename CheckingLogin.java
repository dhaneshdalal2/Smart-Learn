package project1.Ctrl;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project1.model.MModel;

@WebServlet("/checkLogin")
public class CheckingLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	PrintWriter out = response.getWriter();
	String nm=request.getParameter("uname");
	String pw=request.getParameter("pwd");
	 
	MModel model = new MModel();
	int i=model.checkingLogin(nm,pw);
	
	if(i != 0) {
//		out.println("LOGIN SUCCESSFULL");
		HttpSession session = request.getSession();
		session.setAttribute("user", nm);
		response.sendRedirect("Home.jsp");
		
	}else {
//		out.print("LOGIN FAILED");
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		request.setAttribute("msg", "INVALID CREDENTIALS");
		rd.forward(request, response);
	}
	}

}
