public class Rule {
	
	private short age;
	private short minNoOfPlayers;
	private short maxNoOfPlayers;
	private short minNoOfTeams;
	private short maxNoOfTeams;
	private String rulesDescription;

	public short getAge() {
		return age;
	}
	public void setAge(short age) {
		this.age = age;
	}
	public short getMinNoOfPlayers() {
		return minNoOfPlayers;
	}
	public void setMinNoOfPlayers(short minNoOfPlayers) {
		this.minNoOfPlayers = minNoOfPlayers;
	}
	public short getMaxNoOfPlayers() {
		return maxNoOfPlayers;
	}
	public void setMaxNoOfPlayers(short maxNoOfPlayers) {
		this.maxNoOfPlayers = maxNoOfPlayers;
	}
	public short getMinNoOfTeams() {
		return minNoOfTeams;
	}
	public void setMinNoOfTeams(short minNoOfTeams) {
		this.minNoOfTeams = minNoOfTeams;
	}
	public short getMaxNoOfTeams() {
		return maxNoOfTeams;
	}
	public void setMaxNoOfTeams(short maxNoOfTeams) {
		this.maxNoOfTeams = maxNoOfTeams;
	}
	public String getRulesDescription() {
		return rulesDescription;
	}
	public void setRulesDescription(String rulesDescription) {
		this.rulesDescription = rulesDescription;
	}

}