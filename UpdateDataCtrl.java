package project1.Ctrl;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project1.dto.Member;
import project1.model.MModel;
@WebServlet("/updateCtrl")
public class UpdateDataCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	PrintWriter out = response.getWriter();
	int id = Integer.parseInt(request.getParameter("id"));
	MModel model = new MModel();
	Member mem = model.getaStudent(id);
	if(mem!=null) {
		RequestDispatcher rd =request.getRequestDispatcher("Edit.jsp");
		request.setAttribute("ME", mem);
		rd.forward(request, response);
		}else {
			out.println("Something went wrong!!");
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int id = Integer.parseInt(request.getParameter("id"));
		String email = request.getParameter("email");
		String ipassword = request.getParameter("ipassword");
		String iname = request.getParameter("iname");
		String contact = request.getParameter("contact");
		String address = request.getParameter("address");
		
		Member mem = new Member(id, email, ipassword, iname, contact, address);
		
		MModel model = new MModel();
		int i =model.UpdateDetails(mem);
	ArrayList<Member> list = model.getallStudent();
	RequestDispatcher rd = request.getRequestDispatcher("StudentData.jsp");
	
	if(i != 0) {
		 request.setAttribute("msg", "Record Updated Sucessfully");
		 
	 }else {
		 request.setAttribute("msg", "Record Not Updated ");
		 
	 }
	 request.setAttribute("LIST", list);
	 rd.forward(request, response);
	}


	


}
