package com.dx.auth.authentication.server;

import com.dx.auth.authentication.entity.Resource;
import org.springframework.stereotype.Service;

import java.util.Set;

/**
 * @author yaoj
 * @version 1.0
 * @copyright 广州明动软件有限公司 Copyright (c) 2018
 * @since 2018-12-6
 */
@Service
public interface IResourceService {
    /**
     * 返回所有的资源定义内容，resources表中
     *
     * @return
     */
    Set<Resource> findAll();

    /**
     * 根据角色code查询到角色把对应的资源定义
     *
     * @param roleCodes
     * @return
     */
    Set<Resource> queryByRoleCodes(String[] roleCodes);
}