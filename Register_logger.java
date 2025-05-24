package project1.Ctrl;

import java.io.IOException;
import project1.dto.Member;
import project1.model.MModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register_logerCtrl")
public class Register_logger extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email=request.getParameter("email");
		int id = Integer.parseInt(request.getParameter("id"));
		String ipassword = request.getParameter("ipassword");
		String iname = request.getParameter("iname");
		String contact = request.getParameter("contact");
		String address = request.getParameter("address");
		
		Member mem = new Member(id, email, ipassword, iname, contact, address);
		
		MModel model = new MModel();
		int i = model.register_login(mem);
		RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
		if(i != 0) {
			request.setAttribute("msg", "Registration Successfull");
		}else {
			request.setAttribute("msg", "Registration Failed");
		}
	rd.forward(request, response);
		
	
	
	}

}
