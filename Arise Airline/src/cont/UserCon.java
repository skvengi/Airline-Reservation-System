package cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import model.TicketDetail;

/**
 * Servlet implementation class UserCon
 */
@WebServlet("/UserCon")
public class UserCon extends HttpServlet {
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session= request.getSession(false);
		// Getting Parameter
		if(request.getParameter("email1") != null) {
			String email=request.getParameter("email1").replaceAll("^\"|\"$","").trim();
			String pass=request.getParameter("pass1").replaceAll("^\"|\"$","").trim();
			session.setAttribute("email", new UserDao().checkLogin(email, pass));

		}
		if(request.getParameter("FlightNo") != null) {
			String flight=request.getParameter("FlightNo").replaceAll("^\"|\"$","").trim();
			TicketDetail ti=(TicketDetail) session.getAttribute("ticket");
			ti.setFlightNo(Integer.parseInt(flight));

			}
		
		if(session.getAttribute("email")==null) {
			  response.sendRedirect("Login.html");
			  }else {
				  response.sendRedirect("PassengerDetail.jsp"); 
			  }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
