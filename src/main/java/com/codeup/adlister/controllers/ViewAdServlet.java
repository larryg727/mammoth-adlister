package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by larryg on 6/13/17.
 */
@WebServlet(name = "ViewAdServlet", urlPatterns = "/viewAd")
public class ViewAdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("id").equals(null)){
            Ad ad = new Ad(0, "Something went wrong", "No ad to display. Please go back and try again.");
            request.setAttribute("ad", ad);
        }else{
           request.setAttribute("ad", DaoFactory.getAdsDao().viewAd(Long.parseLong(request.getParameter("id"))));
        }

        request.getRequestDispatcher("/WEB-INF/viewAd.jsp").forward(request, response);
    }
}
