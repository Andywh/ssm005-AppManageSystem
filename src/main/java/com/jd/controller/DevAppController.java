package com.jd.controller;

import com.github.pagehelper.PageInfo;
import com.jd.dto.AppInfoDTO;
import com.jd.pojo.AppCategory;
import com.jd.pojo.AppInfo;
import com.jd.pojo.DataDictionary;
import com.jd.pojo.DevUser;
import com.jd.service.AppCategoryService;
import com.jd.service.AppInfoService;
import com.jd.service.DataDictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Ai Lun on 2019-06-04.
 */
@Controller
@RequestMapping("/app")
public class DevAppController {

    @Autowired
    private AppInfoService appInfoService;

    @Autowired
    private DataDictionaryService dataDictionaryService;

    @Autowired
    private AppCategoryService appCategoryService;

    @RequestMapping("/index/devId/{id}")
    public String index(@PathVariable("id") Integer id, Model model, HttpSession session) {
        session.setAttribute("USER_ID", id);
        PageInfo<AppInfo> pageInfo = new PageInfo<>();
        pageInfo.setPageSize(5);
        pageInfo.setPageNum(1);
        PageInfo<AppInfo> page = appInfoService.queryByDevUserId(id, pageInfo);
        // 查询所有的平台 (像这种老不变的东西可以做成缓存)
        List<DataDictionary> appFlatforms = appInfoService.queryAllFlatforms();
        // 查询所有的 APP 的状态
        List<DataDictionary> appStatuses = appInfoService.queryAllAppStatus();
        // 查询所有的一级分类
        List<AppCategory> levelOne = appCategoryService.queryAllLevelOne();
        model.addAttribute("page", page);
        model.addAttribute("appFlatforms", appFlatforms);
        model.addAttribute("appStatuses", appStatuses);
        model.addAttribute("levelOne", levelOne);
        return "app/index";
    }

    @RequestMapping("/query")
    public String query(AppInfoDTO appInfoDTO, Model model, HttpSession session) {
        Object obj = session.getAttribute("USER_ID");
        if (obj != null) {
            System.out.println("appInfoDTO " + appInfoDTO);
            Integer userId = (Integer) obj;
            appInfoDTO.setDevUserId(userId);
            PageInfo<AppInfo> page = appInfoService.query(appInfoDTO);

            // 查询所有的平台 (像这种老不变的东西可以做成缓存)
            List<DataDictionary> appFlatforms = appInfoService.queryAllFlatforms();
            // 查询所有的 APP 的状态
            List<DataDictionary> appStatuses = appInfoService.queryAllAppStatus();
            // 查询所有的一级分类
            List<AppCategory> levelOne = appCategoryService.queryAllLevelOne();

            model.addAttribute("page", page);
            model.addAttribute("appFlatforms", appFlatforms);
            model.addAttribute("appStatuses", appStatuses);
            model.addAttribute("levelOne", levelOne);
            model.addAttribute("appInfoDTO", appInfoDTO);
        } else {
            return "redirect:/";
        }
        return "app/index";
    }

    @RequestMapping("/toAdd")
    public String toAdd(Model model) {
        // 查询所有的 APP 状态
        List<DataDictionary> appFlatforms = appInfoService.queryAllFlatforms();
        List<DataDictionary> appStatuses = appInfoService.queryAllAppStatus();
        List<AppCategory> levelOne = appCategoryService.queryAllLevelOne();
        model.addAttribute("appFlatforms", appFlatforms);
        model.addAttribute("appStatuses", appStatuses);
        model.addAttribute("levelOne", levelOne);
        return "app/add";
    }

    @RequestMapping("/add")
    public String add(AppInfo appInfo, HttpSession session) {
        Object id = session.getAttribute("USER_ID");
        Integer userId = (Integer) id;
        boolean flag = appInfoService.add(appInfo, userId);
        // 转发到 action
        return "redirect:/app/index/devId/"+userId;
    }

    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable("id") Integer id, HttpSession session) {
        Object uid = session.getAttribute("USER_ID");
        Integer userId = (Integer) uid;
        boolean flag = appInfoService.delete(id);
        return "redirect:/app/index/devId/"+userId;
    }

    @RequestMapping("/toEdit/{id}")
    public String toEdit(@PathVariable("id") Integer id, HttpSession session, Model model) {
        AppInfo appInfo = appInfoService.queryById(id);
        model.addAttribute("appInfo", appInfo);
        // 查询所有的平台 (像这种老不变的东西可以做成缓存)
        List<DataDictionary> appFlatforms = appInfoService.queryAllFlatforms();
        // 查询所有的 APP 的状态
        List<DataDictionary> appStatuses = appInfoService.queryAllAppStatus();
        // 查询所有的一级分类
        List<AppCategory> levelOne = appCategoryService.queryAllLevelOne();

        model.addAttribute("appFlatforms", appFlatforms);
        model.addAttribute("appStatuses", appStatuses);
        model.addAttribute("levelOne", levelOne);

        return "app/edit";
    }

    @RequestMapping("/edit")
    public String edit(AppInfo appInfo, Model model, HttpSession session) {
        Object uid = session.getAttribute("USER_ID");
        Integer userId = (Integer) uid;
        DevUser devUser = new DevUser();
        devUser.setId(userId);
        appInfo.setCreateUser(devUser);
        appInfo.setModifyUser(devUser);
        appInfo.setDevUser(devUser);
        appInfoService.update(appInfo);
        return "redirect:/app/query";
    }
}
