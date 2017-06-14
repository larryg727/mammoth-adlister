package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by larryg on 6/14/17.
 */
@WebServlet(name = "SearchServlet", urlPatterns = "/searchResults")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchQuery = request.getParameter("search");

        request.setAttribute("ads", DaoFactory.getAdsDao().searchAds(searchQuery));

        request.getRequestDispatcher("/WEB-INF/ads/searchResults.jsp").forward(request, response);
    }
}
