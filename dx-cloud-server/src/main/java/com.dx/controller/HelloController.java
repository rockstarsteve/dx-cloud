package com.dx.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * dx-cloud
 *
 * @author: yaoj
 * @Date: 2018-11-12
 * 版权所有：Copyright 2018 by 文理电信
 */
@RestController
public class HelloController {

    @RequestMapping("/hello")
    public String hello(String name) {
        return "hello" + name;
    }

}
