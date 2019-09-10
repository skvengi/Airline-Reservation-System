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

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	
	private String email;
	private String pass;
	private String str;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session= request.getSession(true);
		// Getting Parameter
		if(request.getParameter("email2")!= null) {
			String email=request.getParameter("email2").replaceAll("^\"|\"$","").trim();
			String pass=request.getParameter("pass2").replaceAll("^\"|\"$","").trim();
			str=new UserDao().checkLogin(email, pass);
			session.setAttribute("email",new UserDao().checkLogin(email, pass));

		}
		if(str==null) {
			  response.sendRedirect("Login2.html");
			  }else {
				  response.sendRedirect("Main.jsp"); 
			  }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
