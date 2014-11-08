import java.util.ArrayList;

public class Participant extends Login {

	private StudentDetail details;
	private Event event;
	private Team team;
	private ArrayList<Fixture> fixtures;
	private Boolean isCaptain;

	public boolean registerForAcco() {
		// TODO - implement Participant.registerForAcco
		// returns if registration was successful or not
		throw new UnsupportedOperationException();
	}

	public String getReminders() {
		// TODO - implement Participant.getReminders
		throw new UnsupportedOperationException();
	}

	public ArrayList<Fixture> viewMyFixture() {
		// TODO - implement Participant.viewMyFixture
		throw new UnsupportedOperationException();
	}

	public StudentDetail getDetails() {
		return details;
	}

	public void setDetails(StudentDetail details) {
		this.details = details;
	}

	public Event getEvent() {
		return event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public Boolean getIsCaptain() {
		return isCaptain;
	}

	public void setIsCaptain(Boolean isCaptain) {
		this.isCaptain = isCaptain;
	}

	public void setFixtures(ArrayList<Fixture> fixtures) {
		this.fixtures = fixtures;
	}

	public ArrayList<Fixture> getFixtures() {
		return fixtures;
	}

	
}