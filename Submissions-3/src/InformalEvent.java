import java.util.ArrayList;

public class InformalEvent extends Event {
	private String eventName;
	public InformalEvent(ArrayList<Fixture> fixture, int registrationFee,
			EventManager eventHead, String eventName) {
		super(fixture, registrationFee, eventHead);
		this.eventName = eventName;
	}

	public InformalEvent(){
		
	}
	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

}