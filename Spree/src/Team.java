import java.util.ArrayList;

public class Team {

	private ArrayList<Participant> participants;
	private Sport sport;
	private Participant teamHead;
	private String teamName;
	private String collegeName;

	public void addParticipant(Participant participant) {
		// TODO - implement Team.updatePlayers
		throw new UnsupportedOperationException();
	}
	
	public void removeParticipant(Participant participant) {
		// TODO - implement Team.updatePlayers
		throw new UnsupportedOperationException();
	}

	public void updateStatistics() {
		// TODO - implement Team.updateStatistics
		throw new UnsupportedOperationException();
	}

	public ArrayList<Participant> getParticipants() {
		return participants;
	}

	public void setParticipants(ArrayList<Participant> participants) {
		this.participants = participants;
	}

	public Sport getSport() {
		return sport;
	}

	public void setSport(Sport sport) {
		this.sport = sport;
	}

	public Participant getTeamHead() {
		return teamHead;
	}

	public void setTeamHead(Participant teamHead) {
		this.teamHead = teamHead;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getCollegeName() {
		return collegeName;
	}

	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}

}