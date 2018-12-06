package com.dx.auth.authentication.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;

/**
 * @author yaoj
 * @version 1.0
 * @copyright 广州明动软件有限公司 Copyright (c) 2018
 * @since 2018-12-6
 */
@Configuration
@EnableWebSecurity
@Slf4j
public class WebServerSecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        log.debug("HttpSecurity configure method");
        http.csrf().disable();
        http.authorizeRequests()
                .anyRequest().authenticated();
    }
}
