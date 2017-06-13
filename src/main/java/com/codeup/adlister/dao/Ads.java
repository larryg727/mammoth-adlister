package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    //get ads by particular user
    List<Ad> adsByUser(Long user_id);
    // get ad by ad id
    Ad viewAd(long id);
}
