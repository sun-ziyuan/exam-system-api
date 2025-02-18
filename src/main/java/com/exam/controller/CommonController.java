package com.exam.controller;

import com.exam.dto.LoginDto;
import com.exam.dto.RegisterDto;
import com.exam.dto.UpdateUserInfoDto;
import com.exam.service.impl.UserRoleServiceImpl;
import com.exam.service.impl.UserServiceImpl;
import com.exam.utils.JwtUtils;
import com.exam.vo.CommonResult;
import com.exam.vo.TokenVo;
import com.exam.vo.UserVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import static com.exam.vo.UserVo.fromUser;

/**
 * @author szy
 * @implNote 2024/4/7 12:23
 */
@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/common")
@Api(tags = "(学生,教师,管理员)通用相关接口")
public class CommonController {

    private final UserServiceImpl userService;

    private final UserRoleServiceImpl userRoleService;

    @RequestMapping("/error")
    public CommonResult<String> error() {
        return CommonResult.<String>builder()
                .code(233)
                .message("请求错误!")
                .build();
    }

    @ApiOperation("用户注册接口")
    @PostMapping("/register")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "user", value = "系统用户实体", required = true, dataType = "user", paramType = "body")
    })
    public CommonResult<String> Register(@RequestBody @Valid RegisterDto registerDto) {
        return CommonResult.<String>builder()
                .data(userService.register(registerDto))
                .build();
    }

    @ApiOperation("用户名合法查询接口")
    @GetMapping("/check/{username}")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "username", value = "系统用户唯一用户名", required = true, dataType = "string", paramType = "path")
    })
    public CommonResult<Boolean> checkUsername(@PathVariable(value = "username") String username) {
        return CommonResult.<Boolean>builder()
                .data(userService.checkUsername(username))
                .build();
    }

    @PostMapping("/login")
    @ApiOperation("用户登录接口")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "username", value = "系统用户唯一用户名", required = true, dataType = "string", paramType = "body"),
            @ApiImplicitParam(name = "password", value = "系统用户密码", required = true, dataType = "string", paramType = "body"),
    })
    public CommonResult<String> login(@RequestBody @Valid LoginDto loginDto) {
        return CommonResult.<String>builder()
                .data(userService.login(loginDto))
                .build();
    }

    @GetMapping("/getMenu")
    @ApiOperation(value = "获取不同用户的权限菜单")
    public CommonResult<String> getMenu(HttpServletRequest request) {
        return CommonResult.<String>builder()
                .data(userRoleService.getMenuInfo(JwtUtils.getUserInfoByToken(request).getRoleId()))
                .build();
    }

    @GetMapping("/checkToken")
    @ApiOperation("验证用户token接口")
    public CommonResult<TokenVo> checkToken(HttpServletRequest request) {
        return CommonResult.<TokenVo>builder()
                .data(JwtUtils.getUserInfoByToken(request))
                .build();
    }

    @GetMapping("/getCurrentUser")
    @ApiOperation("供给普通用户查询个人信息使用")
    public CommonResult<UserVo> getCurrentUser(HttpServletRequest request) {
        return CommonResult.<UserVo>builder()
                .data(fromUser(userService.getUserByUsername(JwtUtils.getUserInfoByToken(request).getUsername())))
                .build();
    }

    @PostMapping("/updateCurrentUser")
    @ApiOperation("供给用户更改个人信息")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "user", value = "系统用户实体", required = true, dataType = "user", paramType = "body")
    })
    public CommonResult<Object> updateCurrentUser(@RequestBody @Valid UpdateUserInfoDto updateUserInfoDto) {
        userService.updateUserInfo(updateUserInfoDto);
        return CommonResult.builder()
                .build();
    }

}
