package com.dx.controller;

import com.dx.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/**
 * dx-cloud
 *
 * @author: yaoj
 * @Date: 2018-11-12
 * 版权所有：Copyright 2018 by 文理电信
 */
@RestController
public class HelloController {

    @Autowired
    private TaskService taskService;

    @RequestMapping("/hello")
    public String hello(String name) {

        List<String> stringList = taskService.sendSms();

        return "hello" + name;
    }

    @RequestMapping("/getList")
    public List<String> getList() {

        List<String> stringList = taskService.sendSms();

        return stringList;
    }

    @RequestMapping(value = "/sync", method = RequestMethod.GET)
    public String sync() throws InterruptedException {
        Thread.sleep(1000);
        return "sync";
    }

    @RequestMapping("/async")
    public Callable<List<String>> async() {
        return new Callable<List<String>>() {
            @Override
            public List<String> call() throws Exception {
                List<String> stringList = new ArrayList<>();
                stringList.add("1111");
                stringList.add("2222");
                Thread.sleep(5000);
                return stringList;
            }
        };
    }

    @RequestMapping("/auth/get")
    public String auth() {
        return "auth   ok  le";
    }

}
