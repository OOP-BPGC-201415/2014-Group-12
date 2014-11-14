import java.util.ArrayList;
import java.util.Date;

public class Fixture {
	private String location;
	private Date date;
	private Sport sport;
	private ArrayList<Team> teams;
	private String result;
	private String score;

	public Fixture(String location, Date date, Sport sport,
			ArrayList<Team> teams, String result, String score) {
		this.location = location;
		this.date = date;
		this.sport = sport;
		this.teams = teams;
		this.result = result;
		this.score = score;
	}
	public Date getDate() {
		return this.date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

	public String getLocation() {
		return this.location;
	}
	public void setLocation(String location) {
		this.location = location;
	}

	public Sport getSport() {
		return sport;
	}

	public void setSport(Sport sport) {
		this.sport = sport;
	}

	public ArrayList<Team> getTeams() {
		return teams;
	}

	public void setTeams(ArrayList<Team> teams) {
		this.teams = teams;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}
//	public static void main(String...args){
//		Date d = new Date(12, 2, 2044);
//		EventManager eventHead = null;
//		Sport s = new Sport(null, 0, eventHead, "MI", null, null);
//		Fixture f = new Fixture("abc",d ,s, null, "", null);
//		System.out.println(f.getDate());
//	}

}