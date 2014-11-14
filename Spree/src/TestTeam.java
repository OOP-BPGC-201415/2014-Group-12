import java.util.ArrayList;

import junit.framework.TestCase;


public class TestTeam extends TestCase {
	
	Team team;

	public void setUp() {
		ArrayList<Participant> f = new ArrayList<Participant>();
		team = new Team(f,null,null,"MI","Bits");
	}

	public void testUpdateParticipants() {
		Participant p;
	
		p = new Participant(null,null,null,null,null,null,null);
		team.addParticipant(p);
		assertTrue(team.getParticipants().contains(p));
		team.removeParticipant(p);
		assertFalse(team.getParticipants().contains(p));
	}

//	@Test
//	public void testUpdateStatistics() {
//		fail("Not yet implemented");
//	}

}
