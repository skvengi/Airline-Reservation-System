package model;

public class Flight {

	private int flightNo;
	private String source;
	private String destination;
	private String arrival;
	private String departure;
	private int price;
	
	public Flight() {}
	public Flight(int flightNo ,String source , String destination ,String arrival ,String departure , int price) {
		this.flightNo=flightNo;
		this.source=source;
		this.destination=destination;
		this.arrival=arrival;
		this.departure=departure;
		this.price=price;
	}
	
	public int getFlightNo() {
		return flightNo;
	}
	public void setFlightNo(int flightNo) {
		this.flightNo = flightNo;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getArrival() {
		return arrival;
	}
	public void setArrival(String arrival) {
		this.arrival = arrival;
	}
	public String getDeparture() {
		return departure;
	}
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
