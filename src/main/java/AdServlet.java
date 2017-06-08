import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/**
 * Created by larryg on 6/7/17.
 */
@WebServlet(name = "AdServlet", urlPatterns = "/ads")
public class AdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Ad> adList;
        adList = DaoFactory.getAdsDao().all();

        request.setAttribute("ads", adList);
        request.getRequestDispatcher("/ads/index.jsp").forward(request, response);

    }
}
