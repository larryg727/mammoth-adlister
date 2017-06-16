package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.editAdServlet", urlPatterns = "/ads/editAds")
public class editAdServlet extends HttpServlet {
    Ad ad = null;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = Long.parseLong(request.getParameter("id"));
        ad = DaoFactory.getAdsDao().findAdById(id);
        request.setAttribute("ad", ad);

        request.getRequestDispatcher("/WEB-INF/ads/editAds.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        long price = Long.parseLong(request.getParameter("price"));
        long category = Long.parseLong(request.getParameter("category"));
        String btn = request.getParameter("btn");
        if (btn.equals("update")) {
            DaoFactory.getAdsDao().editAd(ad.getId(), title, description, price, category);

            response.sendRedirect("/ads/adpage?id=" + ad.getId());
        } else if (btn.equals("delete")) {
            DaoFactory.getAdsDao().deleteAd(ad.getId());

            response.sendRedirect("/profile");
        }
    }

}
