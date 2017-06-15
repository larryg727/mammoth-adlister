package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by larryg on 6/15/17.
 */
@WebServlet(name = "UpdateProfileServlet", urlPatterns = "/updateProfile")
public class UpdateProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm_password");
        User user = (User) request.getSession().getAttribute("user");
        Long id = user.getId();

        boolean isNotEmpty = !password.isEmpty();
        if ((password.equals(confirmPassword)) && isNotEmpty) {
            String hash = Password.hash(password);
            DaoFactory.getUsersDao().updateUser(id, username, email, hash);
            request.getSession().removeAttribute("user");
            User newUser = new User(id, username, email, hash);
            request.getSession().setAttribute("user", newUser);
        } else if(!isNotEmpty){
            DaoFactory.getUsersDao().updateUser(id, username, email, user.getPassword());
            User newUser = new User(id, username, email, user.getPassword());
            request.getSession().setAttribute("user", newUser);
        }else{
            response.sendRedirect("/updateProfile");
        }
        response.sendRedirect("/profile");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        request.getRequestDispatcher("/WEB-INF/updateProfile.jsp").forward(request, response);
    }
}
