import java.util.ArrayList;

public class Event {

	public Event(ArrayList<Fixture> fixture, int registrationFee,
			EventManager eventHead) {
		super();
		this.fixture = fixture;
		this.registrationFee = registrationFee;
		this.eventHead = eventHead;
	}
	protected ArrayList<Fixture> fixture;
	protected int registrationFee;
	protected EventManager eventHead;
	
	public void addFixture(Fixture fixture) {
		this.fixture.add(fixture);
	}
	
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