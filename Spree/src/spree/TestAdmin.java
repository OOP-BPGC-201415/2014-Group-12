package spree;
import static org.easymock.EasyMock.*;
import junit.framework.TestCase;

import org.junit.Test;


public class TestAdmin extends TestCase{

	Admin admin;
	Sport sport;
	
	@Override
    public void setUp() {
		admin = createNiceMock(Admin.class);
		sport = createNiceMock(Sport.class);
	}
	
//	@Test
//	public void testCheckNewRegistrations() {
//		fail("Not yet implemented");
//	}

	@Test
	public void testUpdateFinance() {
		expect(admin.updateFinance(100.0f)).andReturn(100.0f);
		replay(admin);
		
		assertEquals(100.0f, admin.updateFinance(100.0f), 0);
		verify(admin);
		
	}

	@Test
	public void testSetRules() {
		Admin a = new Admin("abc", "abc", null);
		Rule rule = new Rule(25,2,15,2,16,"Descriptions");
		Sport s = new Sport(null, 20, null, "Football", null, null);
		a.setRules(s, rule);
		assertTrue(s.getRules().equals(rule));
	}

	@Test
	public void testUpdateScores() {
		Fixture fixture = new Fixture("BITS",null,null,null,"result","score");
		admin.updateScores(fixture, "score");
		assertEquals(fixture.getScore(), "score");
	}

	@Test
	public void testUpdateFixtures() {
		Fixture fixture = new Fixture("BITS",null,null,null,"result","score");
		sport.addFixture(fixture);
		assert(sport.getFixture().contains(fixture));
	}

}
