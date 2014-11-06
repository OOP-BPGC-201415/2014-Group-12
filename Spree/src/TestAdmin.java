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
	
	@Test
	public void testCheckNewRegistrations() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateFinance() {
		expect(admin.updateFinance(100.0f)).andReturn(100.0f);
		replay(admin);
		
		assertEquals(100.0f, admin.updateFinance(100.0f), 0);
		verify(admin);
		
	}

	@Test
	public void testSetRules() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateScores() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateFixtures() {
		fail("Not yet implemented");
	}

}
