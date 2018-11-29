package com.dx.service;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;

/**
 * Description:
 *
 * @author yaoj
 * @version 1.0
 * @copyright Copyright (c) 文理电信
 * @since 2018-11-30
 */
@Service
public class TaskService {

    @Async
    public List<String> sendSms(){
        List<String> stringList = new ArrayList<>();
        stringList.add("1111");
        stringList.add("222");
        System.out.println("####sendSms####   2");
        IntStream.range(0, 5).forEach(d -> {
            try {
                Thread.sleep(1000);
                stringList.add("xxxx");
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        });
        System.out.println("####sendSms####   3");
        return stringList;
    }

}
