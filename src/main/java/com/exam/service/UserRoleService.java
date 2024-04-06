package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.entity.UserRole;

import java.util.List;

/**
 * @author szy
 * @implNote 2024/4/7 12:23
 */
public interface UserRoleService extends IService<UserRole> {

    String getMenuInfo(Integer roleId);

    List<UserRole> getUserRole();
}
