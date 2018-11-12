package com.dx.controller;

import com.dx.client.HelloServiceClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * Description:
 *
 * @author yaoj
 * @version 1.0
 * @copyright Copyright (c) 文理电信
 * @since 2018-11-12
 */
@RestController
public class HelloController {

    @Autowired
    HelloServiceClient helloServiceClient;

    @GetMapping(value = "/hello")
    public String sayHi(@RequestParam String name) {
        return helloServiceClient.hello(name);
    }

}
