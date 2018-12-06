package com.dx.auth.authorization.entity;

import com.dx.common.core.entity.po.BasePo;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Role extends BasePo {
    private String code;
    private String name;
    private String description;
}
