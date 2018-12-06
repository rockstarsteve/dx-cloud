package com.dx.auth.authentication.server.impl;

import com.dx.auth.authentication.dao.ResourceMapper;
import com.dx.auth.authentication.entity.Resource;
import com.dx.auth.authentication.server.IResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;

/**
 * Description:
 *
 * @author yaoj
 * @version 1.0
 * @copyright Copyright (c) 文理电信
 * @since 2018-12-06
 */
@Service
public class ResourceService implements IResourceService {
    @Autowired
    private ResourceMapper resourceMapper;

    @Override
    public Set<Resource> findAll() {
        return resourceMapper.findAll();
    }

    @Override
    public Set<Resource> queryByRoleCodes(String[] roleCodes) {
        return resourceMapper.queryByRoleCodes(roleCodes);
    }
}