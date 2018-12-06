package com.dx.config.gatewayfilter;

import lombok.extern.slf4j.Slf4j;
import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.cloud.gateway.support.ServerWebExchangeUtils;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import reactor.core.publisher.Mono;

/**
 * @author yaoj
 * @version 1.0
 * @copyright 广州明动软件有限公司 Copyright (c) 2018
 * @since 2018-12-6
 */
@Configuration
@Slf4j
public class GatewayConfig {

    @Bean
    @Order(-1)
    public GlobalFilter a() {
        return (exchange, chain) -> {
            log.info("*****************************************************************************first pre filter");
            return chain.filter(exchange).then(Mono.fromRunnable(() -> {
                log.info("*****************************************************************************third post filter");
            }));
        };
    }

    @Bean
    @Order(0)
    public GlobalFilter b() {
        return (exchange, chain) -> {
            log.info("*****************************************************************************second pre filter");
            return chain.filter(exchange).then(Mono.fromRunnable(() -> {
                log.info("*****************************************************************************second post filter");
            }));
        };
    }

    @Bean
    @Order(1)
    public GlobalFilter c() {
        return (exchange, chain) -> {
            log.info("*****************************************************************************third pre filter");
            return chain.filter(exchange).then(Mono.fromRunnable(() -> {
                log.info("*****************************************************************************first post filter");
            }));
        };
    }

}
