package controller.signup;

import dal.UserDAO;
import model.User;
import java.io.IOException;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "SignUpServlet", urlPatterns = {"/signup"})
public class SignUpServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        String code = request.getParameter("code");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        boolean role = Boolean.parseBoolean(request.getParameter("role")); // This should be false by default
        String avatar = "/assets/img/default_avt.jpg"; // Default avatar

        User user = new User();
        user.setName(fullName);
        user.setCode(code);
        user.setEmail(email);
        user.setPassword(password);
        user.setRole(role);
        user.setAvatar(avatar);

        UserDAO userDAO = new UserDAO();

        try {
            userDAO.userSignUp(user);
            System.out.println(user.toString());
            response.sendRedirect("successful-signup.jsp"); // Redirect to login page on success
        } catch (SQLException e) {
            throw new ServletException("User sign-up failed.", e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
