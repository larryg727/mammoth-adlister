import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by larryg on 6/9/17.
 */
@WebServlet(name = "CreateUserServlet", urlPatterns = "/register")
public class CreateUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User(request.getParameter("username"), request.getParameter("email"), request.getParameter("password"));

        try {
            DaoFactory.getUsersDao().insert(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("/login");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/createuser.jsp").forward(request,response);
    }
}
