package com.dx.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Description:
 *
 * @author yaoj
 * @version 1.0
 * @copyright Copyright (c) 文理电信
 * @since 2018-11-21
 */
@RestController
public class TestController {

    @RequestMapping("/get")
    public String get(){

        return "111";
    }


}
