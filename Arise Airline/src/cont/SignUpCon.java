package cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import model.User;


@WebServlet("/SignUpCon")
public class SignUpCon extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String str=request.getParameter("password").replaceAll("^\"|\"$","").trim();
		String str2=request.getParameter("psw").replaceAll("^\"|\"$","").trim();
		if(str.equals(str2)) {
			User user=new User();
			user.setName(request.getParameter("name"));
			user.setMobile(request.getParameter("mobile"));
			user.setEmail(request.getParameter("email1"));
			user.setPass(request.getParameter("password"));
			int res=new UserDao().createAccount(user);
			if(res>0) {
				response.sendRedirect("index.html");
			}else {
				System.out.println("enter5"+request.getParameter("email1"));
				response.sendRedirect("SignUp.jsp");
			}
			
		}else {
			response.sendRedirect("SignUp.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
