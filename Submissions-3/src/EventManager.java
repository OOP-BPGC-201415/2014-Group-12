public class EventManager extends Login{

	public EventManager(String username, String password_hash, String name,
			Sport sport) {
		super(username, password_hash);
		this.name = name;
		this.sport = sport;
	}

	private String name;
	private Sport sport;

	public void updateScores(Fixture fixture, String score) {
		fixture.setScore(score);
	}

	public void updateFixture(Fixture fixture) {
		sport.addFixture(fixture);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Sport getSport() {
		return sport;
	}
	public EventManager(){
	}
	public void setSport(Sport sport) {
		this.sport = sport;
	}
	
}