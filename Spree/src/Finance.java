public class Finance {

	private float balance;

	public void removeBalance(float amount) {
		this.setBalance(balance - amount);
	}

	public void addBalance(float amount) {
		this.setBalance(balance + amount);
	}

	public float getBalance() {
		return balance;
	}

	public void setBalance(float balance) {
		this.balance = balance;
	}
	
}