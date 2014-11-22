package spree;
public class Admin extends Login {

	private Finance account;

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
	public float getBalance() {
		return account.getBalance();
	}
//	public static void main(String ... args){
//		Admin a = new Admin("abc", "abc", null);
//		Rule rule = new Rule(25,2,15,2,16,"Descriptions");
//		Sport s = new Sport(null, 20, null, "Football", null, null);
//		a.setRules(s, rule);
//		System.out.println((s.getRules().equals(rule))); 
//	}
}