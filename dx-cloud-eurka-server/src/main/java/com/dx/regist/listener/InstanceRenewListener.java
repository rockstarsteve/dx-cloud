package com.dx.regist.listener;

import lombok.extern.slf4j.Slf4j;
import org.springframework.cloud.netflix.eureka.server.event.EurekaInstanceRenewedEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.context.annotation.Configuration;

/**
 * Description:心跳检测服务
 *
 * @author yaoj
 * @version 1.0
 * @copyright Copyright (c) 文理电信
 * @since 2018-12-05
 */
@Configuration
@Slf4j
public class InstanceRenewListener implements ApplicationListener<EurekaInstanceRenewedEvent> {

    @Override
    public void onApplicationEvent(EurekaInstanceRenewedEvent event) {
        //log.info("心跳检测服务：{}", event.getInstanceInfo().getAppName());
    }
}
