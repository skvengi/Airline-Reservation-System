package model;

public class TicketHistory {

	private int flightNo;
	private String name;
	private String age;
	private String gender;
	
	public TicketHistory(int flightNo , String name,String age , String gender) {
		this.flightNo=flightNo;
		this.name=name;
		this.age=age;
		this.gender=gender;
	}

	public int getFlightNo() {
		return flightNo;
	}

	public String getName() {
		return name;
	}

	public String getAge() {
		return age;
	}

	public String getGender() {
		return gender;
	}
	
}
