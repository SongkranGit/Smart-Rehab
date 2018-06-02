package com.modersofttech.smartrehab.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BaseApiController {

    private static final Logger logger = LogManager.getLogger(BaseApiController.class);

    @GetMapping("/hello")
    public String hello(){
        return "hello";
    }
}
