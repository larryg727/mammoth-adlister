import java.sql.SQLException;

public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;

    public static Ads getAdsDao() throws SQLException{
        Config config = new Config();
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() throws SQLException{
        Config config = new Config();

        if (usersDao == null) {
            usersDao = new MySqlUsersDao(config);
        }

        return usersDao;
    }

}
