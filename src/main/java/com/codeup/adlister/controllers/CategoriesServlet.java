package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by larryg on 6/16/17.
 */
@WebServlet(name = "CategoriesServlet", urlPatterns = "/category")
public class CategoriesServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long categoryId = Long.parseLong(request.getParameter("id"));
        request.setAttribute("ads", DaoFactory.getAdsDao().findAdsByCategory(categoryId));


        request.getRequestDispatcher("/WEB-INF/ads/categoryResults.jsp").forward(request, response);
    }
}
