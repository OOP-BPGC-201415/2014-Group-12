package spree;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** * Servlet implementation class PreSpreeRegisterServelet */ 
@WebServlet("/PreSpreeRegisterServelet")
public class PreSpreeRegisterServelet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        try {
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String password1 = request.getParameter("password1");
        String studentName = request.getParameter("studentName");
        String studentID = request.getParameter("studentID");
        String collegeName = request.getParameter("collegeName");
        String email = request.getParameter("email");
        String teamName = request.getParameter("teamName");
//        String sportName = request.getParameter("sport");
//        /*************
//         * Event details should also be taken
//         */
//        /***
//         * get sport from database
//         */
        spree.Sport sport = null;
        spree.Team newTeam = new Team(null, sport, null, teamName, collegeName);
        spree.StudentDetail sd = new StudentDetail(studentID, studentName, collegeName, email);
        spree.Participant newParticipant = new Participant(userName, password, sd, null, newTeam, null, true);
        AddToDatabase.AddToParticipantsDB(newParticipant);
        response.sendRedirect("PreSpree/ThankYouForReg.jsp");
        }
        catch (Throwable theException) {
            response.sendRedirect("PreSpree/RegistrationError.jsp");
            
        }
        
    }
    @Override
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
        throws ServletException, IOException {
      doGet(request, response);
    }
}
