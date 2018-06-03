package com.modersofttech.smartrehab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

    @RequestMapping(path = { "/", "/login" }, method = RequestMethod.GET)
    public ModelAndView showAddAlbum() {
        ModelAndView mav = new ModelAndView();
        //mav.addObject("album", new Album());
        mav.setViewName("login");

        return mav;
    }

    @RequestMapping(path = "/dashboard", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView();
        //mav.addObject("album", new Album());
        mav.setViewName("dashboard");

        return mav;
    }


}

