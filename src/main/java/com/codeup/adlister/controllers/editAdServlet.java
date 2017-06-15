package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.editAdServlet", urlPatterns = "/ads/editAd")
public class editAdServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = Long.parseLong(request.getParameter("id"));
        Ad ad = DaoFactory.getAdsDao().findAdById(id);
        request.setAttribute("ad", ad);


        request.getRequestDispatcher("/WEB-INF/ads/editAds.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = (Long)(request.getAttribute("ad", id);
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        DaoFactory.getAdsDao().editAd(id, title, description);

        response.sendRedirect("/ads/adpage?id=" + id);
    }

}
