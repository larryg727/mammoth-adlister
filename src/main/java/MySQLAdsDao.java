import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.mysql.cj.jdbc.Driver;
/**
 * Created by larryg on 6/9/17.
 */
public class MySQLAdsDao implements Ads{
    private List<Ad> ads = new ArrayList<>();
    private Connection connection;



    public MySQLAdsDao(Config config) throws SQLException {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() throws SQLException {
        Statement stmt = connection.createStatement();
           ads.clear();
        if(ads.isEmpty()){
            ResultSet rs = stmt.executeQuery("SELECT * FROM ads;");;
            System.out.println("inside if statement");
            while(rs.next()){
            Long user_id = rs.getLong("user_id");
            String title = rs.getString("title");
            String description = rs.getString("description");
            Ad newAd = new Ad(user_id, title, description);
            ads.add(newAd);
            }
            System.out.println("out of the while");
        }
        System.out.println("out of the if");
        return ads;
    }

    @Override
    public Long insert(Ad ad) throws SQLException{
        Statement stmt = connection.createStatement();
        stmt.executeUpdate("INSERT INTO ads (user_id, title, description) VALUES  ('" + ad.getUserId() + "', '" + ad.getTitle() + "', '" + ad.getDescription() + "');" );
        return null;
    }

    public void setAds(List<Ad> ads) {
        this.ads = ads;
    }
}
