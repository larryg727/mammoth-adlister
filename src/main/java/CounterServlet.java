import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by larryg on 6/6/17.
 */

@WebServlet(name="CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet{
    private int counter = 0;
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    counter += 1;
    String reset = request.getParameter("reset");

    if("true".equalsIgnoreCase(reset)){
        counter = 0;
        out.println("<h1>Page views: " + counter + "</h1>");

    }else {
        out.println("<h1>Page views: " + counter + "</h1>");
    }
}
}
