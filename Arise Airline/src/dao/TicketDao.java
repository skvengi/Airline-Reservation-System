package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import model.Passenger;

public class TicketDao {

	private int count;
	public int bookTicket(List<Passenger> lp ,String email,int flightNo) {
		String sql="insert into ticket_detail values(?,?,?,?,?)";
		try {
			Connection con=new GetConnection().getCon();
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1,email);
			pst.setInt(2, flightNo);
			for(int i= 0;i<lp.size();i++) {
				pst.setString(3, lp.get(i).getName());
				pst.setString(4, lp.get(i).getAge());
				pst.setString(5, lp.get(i).getGender());
				int rs=pst.executeUpdate();
				count +=rs;
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;

	}
}
