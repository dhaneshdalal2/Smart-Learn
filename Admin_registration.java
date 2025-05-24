package project1.Ctrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project1.dto.Admin_Lecturer;
import project1.dto.Member;
import project1.model.MModel;

@WebServlet("/Admin_register_Ctrl")
public class Admin_registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String A_email = request.getParameter("A_email");
		int A_id = Integer.parseInt(request.getParameter("A_id"));
		String A_password = request.getParameter("A_password");
		String A_name = request.getParameter("A_name");
		String A_contact = request.getParameter("A_contact");
		String A_address = request.getParameter("A_address");

		Admin_Lecturer al = new Admin_Lecturer(A_id, A_email, A_password, A_name, A_contact, A_address);

		MModel model = new MModel();
		int i = model.Admin_register(al);
		RequestDispatcher rd = request.getRequestDispatcher("Admin_register.jsp");
		if (i != 0) {
			request.setAttribute("msg", "Registration Successfull");
		} else {
			request.setAttribute("msg", "Registration Failed");
		}
		rd.forward(request, response);
	}

}
