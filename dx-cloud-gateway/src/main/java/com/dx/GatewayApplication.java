package com.dx;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.gateway.route.RouteLocator;
import org.springframework.cloud.gateway.route.builder.RouteLocatorBuilder;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Bean;

/**
 * Description:
 *
 * @author yaoj
 * @version 1.0
 * @copyright Copyright (c) 文理电信
 * @since 2018-11-13
 */
@EnableEurekaClient
@SpringBootApplication
public class GatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(GatewayApplication.class, args);
    }

    @Bean
    public RouteLocator customRouteLocator(RouteLocatorBuilder builder) {
        return builder.routes()
                .route(r -> r.path("/baidu")
                        .uri("http://baidu.com:80/")
                )

                .route(r -> r.path("/userapi3/**")
                        .filters(f -> f.addResponseHeader("X-AnotherHeader", "testapi3"))

                        .uri("lb://user-service/")
                )

                .route("163_route",
                        r -> r.remoteAddr("10.1.1.1", "10.10.1.1/24")
                                .uri("http://baidu.com:80/")
                )

                .build();
    }

}