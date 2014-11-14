import java.util.ArrayList;

public class Sport extends Event {

	public Sport(ArrayList<Fixture> fixture, int registrationFee,
			EventManager eventHead, String sportName, ArrayList<Team> teams,
			Rule rules) {
		super(fixture, registrationFee, eventHead);
		this.sportName = sportName;
		this.teams = teams;
		this.rules = rules;
		this.rounds = 1;
	}
	private String sportName;
	private ArrayList<Team> teams;
	private Rule rules;
	private int rounds;
	
	public String getSportName() {
		return sportName;
	}
	public Sport(){
		
	}
	public void setSportName(String sportName) {
		this.sportName = sportName;
	}
	public ArrayList<Team> getTeams() {
		return teams;
	}
	public void setTeams(ArrayList<Team> teams) {
		this.teams = teams;
	}
	public Rule getRules() {
		return rules;
	}
	public void setRules(Rule rules) {
		this.rules = rules;
	}
	public int getRounds() {
		return rounds;
	}
	public void setRounds(int rounds) {
		this.rounds = rounds;
	}
}