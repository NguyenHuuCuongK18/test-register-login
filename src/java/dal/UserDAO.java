package dal;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

public class UserDAO extends DBContext implements Serializable {

    public void userSignUp(User user) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = connection;

            // SQL query to insert a new user, omitting the id column
            String query = "INSERT INTO `user` (code, name, email, avt, password, role) "
                    + "VALUES (?, ?, ?, ?, ?, ?)";

            // Create a prepared statement with auto-generated keys
            ps = conn.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, user.getCode());
            ps.setString(2, user.getName());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getAvatar());
            ps.setString(5, user.getPassword());
            ps.setBoolean(6, user.getRole());

            // Execute the query
            int affectedRows = ps.executeUpdate();

            // Check if any rows were affected (user inserted successfully)
            if (affectedRows == 0) {
                throw new SQLException("User sign-up failed, no rows affected.");
            }

            // Retrieve the auto-generated key (id)
            rs = ps.getGeneratedKeys();
            if (rs.next()) {
                user.setId(rs.getInt(1)); // Set the generated id back to the User object
            }
        } finally {
            // Close the ResultSet, PreparedStatement, and Connection
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
    }

    public User login(String email, String password) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        User user = null;

        try {
            conn = connection;

            String query = "SELECT * FROM `user` WHERE email = ? AND password = ?";
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);

            rs = ps.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setCode(rs.getString("code"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setAvatar(rs.getString("avt"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getBoolean("role"));
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return user;
    }
}
