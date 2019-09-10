package cont;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import model.TicketHistory;

@WebServlet("/HistoryCon")
public class HistoryCon extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		String email=((String) session.getAttribute("email")).replaceAll("^\"|\"$","").trim();
		List<TicketHistory> lh=new UserDao().getHistories(email);
		session.setAttribute("TicketHistory", lh);
		response.sendRedirect("History.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
