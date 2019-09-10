package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Flight;

public class FlightDao {

	private List<Flight> lf=new ArrayList<Flight>();
	//getting flight detail
	public List<Flight> getFlight(Flight f) {
		String query="select * from flight_detail where src=? and destination=?";
		Connection con = null;
		try {
			con = new GetConnection().getCon();
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1, f.getSource());
			pst.setString(2, f.getDestination());
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				lf.add(new Flight(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6)));
			}
			return lf;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		

	}
	public int getPrice(int flightNo) {
		String sql="select price from flight_detail where flight_no=?";
		try {
			Connection con=new GetConnection().getCon();
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setInt(1, flightNo);
			ResultSet rs=pst.executeQuery();
			rs.next();
			return rs.getInt(1);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
	}
}
