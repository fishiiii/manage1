package com.whx.controller;

import com.whx.entity.Result;
import com.whx.entity.User;
import com.whx.service.UserService;
import com.whx.util.ValidateImageCodeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;

/**
 * @author fishii
 * @date 2021/11/22
 * @apiNote
 */
@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 生成验证码
     *
     * @param session
     * @param response
     * @throws IOException
     */
    @RequestMapping("getImage")
    public void getImage(HttpSession session, HttpServletResponse response) throws IOException {
        //获取验证码id，并设置到session中
        String code = ValidateImageCodeUtils.getSecurityCode();
        //设置到session
        session.setAttribute("code", code);
        //生成验证码图片
        BufferedImage image = ValidateImageCodeUtils.createImage(code);
        ImageIO.write(image, "png", response.getOutputStream());
    }

    @RequestMapping("register")
    @ResponseBody
    public Result register(User user, String code, HttpSession session) {
        Result result = new Result();
        String code1 = (String) session.getAttribute("code");
        try {
            if (code1.equalsIgnoreCase(code)) {
                userService.register(user);
                result.setMessage("注册成功").setStatus(true);
                return result;
            }
            throw new RuntimeException("验证码输入错误");
        } catch (Exception e) {
//链式调用
            result.setMessage("注册失败" + e.getMessage()).setStatus(false);
        }
        return result;
    }

    @RequestMapping("login")
    @ResponseBody
    public Result login(User user, String code, HttpSession session) {
        Result result = new Result();
        String code1 = (String) session.getAttribute("code");
        try {
            if (code1.equalsIgnoreCase(code)) {
                User userDB = userService.login(user);
//设置session域
                session.setAttribute("user", userDB);
                return result.setMessage("登录成功").setStatus(true);
            }
            throw new RuntimeException("验证码输入错误");
        } catch (Exception e) {
            e.printStackTrace();
            result.setMessage("登录失败" + e.getMessage()).setStatus(false);
        }
        return result;
    }

    @RequestMapping("logoff")
    public String logoff(HttpSession session) {
        session.removeAttribute("user");
        return "redirect:/head/login.jsp";
    }


}
