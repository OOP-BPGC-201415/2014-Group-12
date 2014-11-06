public class Finance {

	private float balance;

	public void removeBalance(float amount) {
		this.setBalance(this.getBalance() - amount);
	}

	public void addBalance(float amount) {
		this.setBalance(this.getBalance() + amount);
	}

	public float getBalance() {
		return balance;
	}

	public void setBalance(float balance) {
		this.balance = balance;
	}
	
}