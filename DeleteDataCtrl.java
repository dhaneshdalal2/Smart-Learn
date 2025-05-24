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

@WebServlet("/deletedCtrl")
public class DeleteDataCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id =Integer.parseInt(request.getParameter("id"));
		MModel model = new MModel();
		int i=model.deleteData(id);
		ArrayList<Member> list = model.getallStudent();
		RequestDispatcher rd = request.getRequestDispatcher("StudentData.jsp");
		if(i != 0) {
			request.setAttribute("msg", "Record Deleted");
			request.setAttribute("LIST", list);
		}else {
			request.setAttribute("msg", "Record NOT Delete");
			request.setAttribute("LIST", list);
		}
        rd.forward(request, response);
	}
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	


	}

}
