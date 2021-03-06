import java.util.ArrayList;
import java.util.Date;

public class Fixture {

	private String location;
	private Date date;
	private Sport sport;
	private ArrayList<Team> teams;
	private String result;
	private String score;

	public Date getDate() {
		return this.date;
	}

	/**
	 * 
	 * @param date
	 */
	public void setDate(Date date) {
		this.date = date;
	}

	public String getLocation() {
		return this.location;
	}

	/**
	 * 
	 * @param location
	 */
	public void setLocation(String location) {
		this.location = location;
	}

}