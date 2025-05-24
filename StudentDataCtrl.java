package project1.Ctrl;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project1.dto.Member;
import project1.model.MModel;

@WebServlet("/studentDataCtrl")
public class StudentDataCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public StudentDataCtrl() {}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		MModel model = new MModel();
		ArrayList<Member> list = model.getallStudent();
		
		RequestDispatcher rd = request.getRequestDispatcher("StudentData.jsp");
		request.setAttribute("LIST", list);
		rd.forward(request, response);
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	
	
	}

}
