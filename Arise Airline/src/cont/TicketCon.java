package cont;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.TicketDao;
import model.Passenger;
import model.TicketDetail;


@WebServlet("/TicketCon")
public class TicketCon extends HttpServlet {
	
	private int count;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		PrintWriter out=response.getWriter();
		String email=((String) session.getAttribute("email")).replaceAll("^\"|\"$","").trim();
		TicketDetail ti=(TicketDetail) session.getAttribute("ticket");
		int flightNo=ti.getFlightNo();
		@SuppressWarnings("unchecked")
		List<Passenger> lp=(ArrayList<Passenger>)session.getAttribute("list2");
		count=new TicketDao().bookTicket(lp, email, flightNo);
		if(count>0) {
			out.print("Ticket Booked");
			response.sendRedirect("Main.jsp");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
