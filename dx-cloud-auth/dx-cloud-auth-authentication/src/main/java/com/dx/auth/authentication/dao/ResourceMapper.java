package com.dx.auth.authentication.dao;

import org.jboss.logging.Param;
import org.springframework.stereotype.Repository;

/**
 * @author yaoj
 * @version 1.0
 * @copyright 广州明动软件有限公司 Copyright (c) 2018
 * @since 2018-12-6
 */
@Mapper
@Repository
public interface ResourceMapper {

    @Select("SELECT id,code,type,name,url,method,description,created_time,updated_time,created_by,updated_by" +
            " FROM resources")
    Set<Resource> findAll();

    @Select("<script>" +
            "SELECT DISTINCT rs.code,rs.url,rs.name,rs.type,rs.method,rs.description" +
            " FROM roles r" +
            " INNER JOIN roles_resources_relation rrr ON r.id = rrr.role_id" +
            " INNER JOIN resources rs ON rs.id = rrr.resource_id" +
            " WHERE r.code IN " +
            " <foreach collection='roleCodes' item='roleCode' index='index' open='(' close=')' separator=',' >" +
            "    #{roleCode}" +
            " </foreach>" +
            "</script>")
    Set<Resource> queryByRoleCodes(@Param("roleCodes") String[] roleCodes);
}
