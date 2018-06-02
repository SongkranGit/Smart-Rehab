package com.modersofttech.smartrehab.controller.backend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {


    @RequestMapping(path = "/admin", method = RequestMethod.GET)
    public ModelAndView showAddAlbum() {
        ModelAndView mav = new ModelAndView();
        //mav.addObject("album", new Album());
        mav.setViewName("backend/main_template");

        return mav;
    }
}
