package spree;
import java.util.ArrayList;

import junit.framework.TestCase;

import org.junit.Test;


public class TestEventManager extends TestCase {

	EventManager em;
	Event event;
	
	@Override
	public void setUp() {
		em = new EventManager("abc", "cde", "lkj", null);
		event = new Event(new ArrayList<Fixture>(),500,em);
	}

	@Test
	public void testUpdateScores() {
		Fixture fixture = new Fixture(null,null,null,new ArrayList<Team>(),null,null);
		em.updateScores(fixture, "score");
		assertEquals(fixture.getScore(), "score");
	}

	@Test
	public void testUpdateFixture() {
		Fixture fixture = new Fixture(null,null,null,new ArrayList<Team>(),null,null);
		event.addFixture(fixture);
		assert(event.getFixture().contains(fixture));
	}

}
