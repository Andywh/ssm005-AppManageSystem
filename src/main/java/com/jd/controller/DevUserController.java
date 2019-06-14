package com.jd.controller;

import com.jd.pojo.DevUser;
import com.jd.service.AppInfoService;
import com.jd.service.DevUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created by Ai Lun on 2019-06-03.
 */
@Controller
@RequestMapping("/dev")
public class DevUserController {

    @Autowired
    private DevUserService devUserService;

    @Autowired
    private AppInfoService appInfoService;

    @RequestMapping("/toLogin")
    public String index() {
        return "dev/login";
    }

    @RequestMapping("/login")
    public String login(DevUser devUser, Model model, HttpSession session) {
        System.out.println("session " + session);
        devUser = devUserService.login(devUser);
        System.out.println("devUser " + devUser);
        if (devUser != null) {
            // 登录成功
            session.setAttribute("devUser", devUser);
            return "dev/index";
        } else {
            model.addAttribute("errMsg", "登录失败");
            return "dev/login";
        }
    }

    @RequestMapping("/logout/{id}")
    public String logout(@PathVariable("id") Integer id, HttpSession session) {
        session.removeAttribute("devUser");
        //session.invalidate();
        return "redirect:/index.jsp";
    }
}
