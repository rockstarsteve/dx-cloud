package com.dx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Description:
 *
 * @author yaoj
 * @version 1.0
 * @copyright Copyright (c) 文理电信
 * @since 2018-11-26
 */
@RestController
public class HelloService {

    @Autowired
    private RestTemplate restTemplate;

    private static final Logger log = Logger.getLogger(HelloService.class.getName());

    @RequestMapping("/info")
    public String home(){
        log.log(Level.INFO, "hi is being called");
        return "hi i'm miya!";
    }

    @RequestMapping("/hello")
    public String callHome(){
        log.log(Level.INFO, "calling trace service-hi  ");
        return restTemplate.getForObject("http://localhost:8989/info", String.class);
    }
}
