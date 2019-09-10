package cont;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Passenger;
import model.TicketDetail;


@WebServlet("/PassengerCon")
public class PassengerCon extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		TicketDetail ti= (TicketDetail)session.getAttribute("ticket");
		List<Passenger> lp=new ArrayList<Passenger>();
		for(int i=0;i<ti.getpNo();i++) {
			lp.add(new Passenger(request.getParameter("name"+i), (request.getParameter("age"+i)), (request.getParameter("gender"+i))));
		}
		session.setAttribute("list2", lp);
		response.sendRedirect("Payment.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
