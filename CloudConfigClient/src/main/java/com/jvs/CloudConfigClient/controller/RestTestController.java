package com.jvs.CloudConfigClient.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestTestController {

    @Value("${userinfo.nameTest}")
    String nameTest;

    @GetMapping("/test")
    public String showNameTest() {
        return "The nameTest is: " + nameTest;
    }
}