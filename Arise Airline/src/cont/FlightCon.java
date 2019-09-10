package cont;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.FlightDao;
import model.Flight;
import model.TicketDetail;


@WebServlet("/FlightCon")
public class FlightCon extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Flight f=new Flight();
		TicketDetail td=new TicketDetail();
		HttpSession session=request.getSession();
		//PrintWriter out=response.getWriter();
		f.setSource(request.getParameter("source"));
		f.setDestination(request.getParameter("destination"));
		td.setDate(request.getParameter("date"));
		td.setpNo(Integer.parseInt(request.getParameter("passenger")));
		session.setAttribute("ticket", td);
		session.setAttribute("list", new FlightDao().getFlight(f));
		response.sendRedirect("FlightDetail.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
