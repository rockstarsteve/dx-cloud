package com.dx.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
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
@RefreshScope
public class TestController {

    @Value("${dx}")
    private String dx;

    @RequestMapping("/get")
    public String get(){

        return dx + "111";
    }


}
