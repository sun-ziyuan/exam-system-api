package com.exam.Interceptor;

import com.exam.utils.JwtUtils;
import com.exam.vo.TokenVo;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Objects;

/**
 * @author szy
 * @implNote 2024/4/7 12:23
 */
// 管理员的拦截器
@Component
public class AdminInterceptor implements HandlerInterceptor {

    // 这个方法是在访问接口之前执行的，我们只需要在这里写验证登陆状态的业务逻辑，就可以在用户调用指定接口之前验证登陆状态了
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //判断用户的token信息是否满足
        TokenVo tokenVo = JwtUtils.getUserInfoByToken(request);
        if (tokenVo != null && Objects.equals(tokenVo.getRoleId(), 3)) {
            return true;
        }
        //当前不满足条件,直接跳转拦截
        response.getWriter().print("Access denied");
        return false;
    }

}
