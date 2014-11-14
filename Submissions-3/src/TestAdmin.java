import static org.easymock.EasyMock.*;
import junit.framework.TestCase;

import org.junit.Test;


public class TestAdmin extends TestCase{

	Admin admin;
	Sport sport;
	Fixture fixture;
	Finance finance;
	@Override
    public void setUp() {
		admin = new Admin();
		sport = createNiceMock(Sport.class);
		fixture = new Fixture("BITS",null,null,null,"result","score");
		finance = new Finance();
		admin.setAccount(finance);
	}

	@Test
	public void testUpdateFinance() {
		assertEquals(100.0f, admin.updateFinance(100.0f));
		}

	@Test
	public void testSetRules() {
		Rule rule = new Rule();
		Sport s = new Sport();
		admin.setRules(s, rule);
		assertTrue(s.getRules().equals(rule));
	}

	@Test
	public void testUpdateScores() {
		admin.updateScores(fixture, "scoreUpdated");
		assertTrue(fixture.getScore().equals("scoreUpdated"));
	}

	@Test
	public void testUpdateFixtures() {
		Fixture fixture = new Fixture();
		sport.addFixture(fixture);
		assert(sport.getFixture().contains(fixture));
	}

}
