package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdPageServlet", urlPatterns = "/ads/adpage")
public class AdPageServlet extends HttpServlet  {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//       long id = Long.parseLong(request.getParameter("id"));
//        Ad ad = DaoFactory.getAdsDao().findAdById((long) 2);
//        request.setAttribute("ad", ad);
        request.setAttribute("ad", DaoFactory.getAdsDao().findAdById(Long.parseLong(request.getParameter("id"))));

        request.getRequestDispatcher("/WEB-IF/ads/adpage.jsp").forward(request, response);
    }

}
