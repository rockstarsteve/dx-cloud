package com.dx.auth.authorization.service;

import com.dx.auth.authorization.entity.Role;
import org.springframework.stereotype.Service;

import java.util.Set;

@Service
public interface IRoleService {

    Set<Role> queryUserRolesByUserId(long userId);

}
