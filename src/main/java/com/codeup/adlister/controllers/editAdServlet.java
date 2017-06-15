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
public class editAdServlet extends HttpServlet{
    Ad ad = null;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = Long.parseLong(request.getParameter("id"));
        ad = DaoFactory.getAdsDao().findAdById(id);
        request.setAttribute("ad", ad);

        System.out.println("doGet Ad id :"+ ad.getId());

        request.getRequestDispatcher("/WEB-INF/ads/editAds.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        System.out.println("Ad id: " + ad.getId());

        DaoFactory.getAdsDao().editAd(ad.getId(), title, description);

        response.sendRedirect("/ads/adpage?id="+ ad.getId());
    }

}
