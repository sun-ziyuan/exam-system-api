package com.exam.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.exam.dto.UpdateUserInfoDto;
import com.exam.utils.SaltEncryption;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.util.StringUtils;

import java.io.Serializable;
import java.util.Date;

/**
 * @author szy
 * @implNote 2024/4/7 12:23
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ApiModel("用户实体")
@TableName(value = "user")
public class User implements Serializable {

    //  对应数据库的主键(uuid,自增id,雪花算法, redis,zookeeper)
    @TableId(type = IdType.AUTO)
    @ApiModelProperty(value = "主键 用户id", example = "1")
    private Integer id;

    @ApiModelProperty(value = "用户角色id", example = "1(学生) 2(教师) 3(管理员)")
    private Integer roleId;

    @ApiModelProperty(value = "登录用户名", example = "szy")
    private String username;

    @ApiModelProperty(value = "真实姓名", example = "szy")
    private String trueName;

    @ApiModelProperty(value = "密码", example = "12345")
    private String password;

    @ApiModelProperty(value = "加密盐值", example = "salt")
    private String salt;

    @ApiModelProperty(value = "用户状态", example = "1正常 2禁用")
    private Integer status;

    @ApiModelProperty(value = "用户创建时间", example = "2020-10-22 10:35:44")
    private Date createDate;

    public void updateFrom(UpdateUserInfoDto updateUserInfoDto) {
        if (StringUtils.hasLength(updateUserInfoDto.getPassword())) {
            String newPwd = SaltEncryption.saltEncryption(updateUserInfoDto.getPassword(), this.getSalt());
            this.setPassword(newPwd);
        }
        if (StringUtils.hasLength(updateUserInfoDto.getTrueName())) {
            this.setTrueName(updateUserInfoDto.getTrueName());
        }
    }
}
