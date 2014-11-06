import java.util.ArrayList;

public class Event {

	private ArrayList<Fixture> fixture;
	private int registrationFee;
	private EventManager eventHead;
	public ArrayList<Fixture> getFixture() {
		return fixture;
	}
	public void setFixture(ArrayList<Fixture> fixture) {
		this.fixture = fixture;
	}
	public int getRegistrationFee() {
		return registrationFee;
	}
	public void setRegistrationFee(int registrationFee) {
		this.registrationFee = registrationFee;
	}
	public EventManager getEventHead() {
		return eventHead;
	}
	public void setEventHead(EventManager eventHead) {
		this.eventHead = eventHead;
	}


}