package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import model.TicketHistory;
import model.User;

public class UserDao {

	//private String email=null;
	private List<TicketHistory> lh=new ArrayList<TicketHistory>();
	
	public String checkLogin(String email, String pass) {
		String sql="select * from login_detail where email=? and pass=?";
		try {
			PreparedStatement pst=new GetConnection().getCon().prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2, pass);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				return (rs.getString(3));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public List<TicketHistory> getHistories(String email){
		String sql="select * from ticket_detail where email=?";
		try {
			PreparedStatement pst=new GetConnection().getCon().prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				lh.add(new TicketHistory(rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5)));
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lh;
	}
	public int createAccount(User u) {
		String sql="insert into login_detail values(?,?,?,?)";
		try {
			PreparedStatement pst=new GetConnection().getCon().prepareStatement(sql);
			pst.setString(1, u.getName());
			pst.setString(2, u.getMobile());
			pst.setString(3, u.getEmail());
			pst.setString(4, u.getPass());
			return pst.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	public User getProfile(String email) {
		User user=new User();
		String sql="select * from login_detail where email=?";
		try {
			PreparedStatement pst=new GetConnection().getCon().prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				user.setName(rs.getString(1));
				user.setMobile(rs.getString(2));
				user.setEmail(email);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
}
