package com.dx.server;

import com.dx.client.HelloServiceClient;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.concurrent.Callable;

/**
 * Description:
 *
 * @author yaoj
 * @version 1.0
 * @copyright Copyright (c) 文理电信
 * @since 2018-11-13
 */
@Component
public class HelloServiceFeignHystric implements HelloServiceClient {
    @Override
    public String hello(String name) {
        return "sorry ! no  " + name;
    }

    @Override
    public Callable<List<String>> async() {
        return null;
    }
}