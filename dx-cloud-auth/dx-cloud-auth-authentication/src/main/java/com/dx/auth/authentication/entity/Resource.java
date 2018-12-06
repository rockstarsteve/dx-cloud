package com.dx.auth.authentication.entity;

import com.dx.common.core.entity.po.BasePo;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Description:
 *
 * @author yaoj
 * @version 1.0
 * @copyright Copyright (c) 文理电信
 * @since 2018-12-06
 */
@Data
@NoArgsConstructor
public class Resource extends BasePo {
    private String code;
    private String name;
    private String type;
    private String url;
    private String method;
    private String description;
}
