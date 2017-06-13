package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean validAttempt = false;
        User user = DaoFactory.getUsersDao().findByUsername(username);
        if(user == null) {
            request.getSession().setAttribute("userTried", username);
            request.getSession().setAttribute("message", "Username not found");
            response.sendRedirect("/login");
            return;
        }else{
        if(user.getPassword().equals(password)){
            validAttempt = true;
        }else{
            request.getSession().setAttribute("userTried", username);
            request.getSession().setAttribute("message", "Invalid Password");
            response.sendRedirect("/login");
            return;
        }
        }

        // TODO: find a record in your database that matches the submitted password
        // TODO: make sure we find a user with that username
        // TODO: check the submitted password against what you have in your database


        if (validAttempt) {
            // TODO: store the logged in user object in the session, instead of just the username
            request.getSession().removeAttribute("userTried");
            request.getSession().removeAttribute("message");
            request.getSession().setAttribute("user", user.getUsername());
            request.getSession().setAttribute("uid", user.getId());
            request.getSession().setAttribute("loggedIn", true);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");
        }
    }
}
