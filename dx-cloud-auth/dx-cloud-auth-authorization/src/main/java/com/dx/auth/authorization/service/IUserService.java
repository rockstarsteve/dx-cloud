package com.dx.auth.authorization.service;

import com.dx.auth.authorization.entity.User;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

@Service
public interface IUserService {

    @Cacheable(value = "#id")
    User getByUsername(String username);
}
