import com.mysql.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by larryg on 6/9/17.
 */
public class MySqlUsersDao implements Users{

    private Connection connection;

    public MySqlUsersDao(Config config) throws SQLException {
        DriverManager.registerDriver(new Driver());
        connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );
    }



    @Override
    public Long insert(User user) throws SQLException {
        Statement stmt = connection.createStatement();
        stmt.executeUpdate("INSERT into users (username, email, password)  VALUES ('" + user.getUsername() + "', '" + user.getEmail() + "', '" + user.getPassword() + "');");
        return null;
    }
}
