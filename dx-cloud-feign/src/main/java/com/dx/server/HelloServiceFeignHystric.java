package com.dx.server;

import com.dx.client.HelloServiceClient;
import org.springframework.stereotype.Component;

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
}