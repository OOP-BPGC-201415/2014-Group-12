import java.util.ArrayList;

public class Sport extends Event {

	private String sportName;
	private ArrayList<Team> teams;
	private Rule rules;
	private int rounds;
	
	public String getSportName() {
		return sportName;
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