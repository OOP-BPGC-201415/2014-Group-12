public class Admin extends Login {

	private Finance account;

	public void setAccount(Finance account) {
		this.account = account;
	}

	public Admin(String username, String password_hash, Finance account) {
		super(username, password_hash);
		this.account = account;
	}

	public float updateFinance(float amount) {
		account.addBalance(amount);
		return account.getBalance();
	}

	public void setRules(Sport sport, Rule rules) {
		sport.setRules(rules);
	}

	public void updateScores(Fixture fixture, String score) {
		fixture.setScore(score);
	}

	public void updateFixture(Sport sport, Fixture fixture) {
		sport.addFixture(fixture);
	}
	public Finance getAccount() {
		return account;
	}
	public Admin(){
		
	}
	public float getBalance() {
		return account.getBalance();
	}
}