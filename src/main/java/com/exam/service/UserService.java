package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.dto.AddUserDto;
import com.exam.dto.LoginDto;
import com.exam.dto.RegisterDto;
import com.exam.dto.UpdateUserInfoDto;
import com.exam.entity.User;
import com.exam.vo.PageResponse;
import com.exam.vo.UserInfoVo;

import java.util.List;

/**
 * @author szy
 * @implNote 2024/4/7 12:23
 */
public interface UserService extends IService<User> {

    String register(RegisterDto registerDto);

    Boolean checkUsername(String username);

    String login(LoginDto loginDto);

    User getUserByUsername(String username);

    // 这里要reset cache 所以必须要有更新后的数据返回
    User updateUserInfo(UpdateUserInfoDto updateUserInfoDto);

    PageResponse<UserInfoVo> getUser(String loginName, String trueName, Integer pageNo, Integer pageSize);

    void handlerUser(Integer type, String userIds);

    void addUser(AddUserDto addUserDto);

    UserInfoVo getUserInfoById(Integer userId);

    List<UserInfoVo> getUserInfoByIds(List<Integer> userIds);
}
