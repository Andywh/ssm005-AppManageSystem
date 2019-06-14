package com.jd.controller;

import com.jd.pojo.AppCategory;
import com.jd.service.AppCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Ai Lun on 2019-06-05.
 */
@Controller
@RequestMapping("/category")
public class AppCategoryController {

    @Autowired
    private AppCategoryService appCategoryService;

    @RequestMapping("/queryLevelTwoByLevelOne/{levelOneId}")
    @ResponseBody
    public List<AppCategory> queryLevelTwoByLevelOne(@PathVariable("levelOneId") Integer id) {
        List<AppCategory> levelTwo =  appCategoryService.queryLevelTwoByLevelOne(id);
        return levelTwo;
    }

    @RequestMapping("/queryLevelThreeByLevelTwo/{levelTwoId}")
    @ResponseBody
    public List<AppCategory> queryLevelThreeByLevelTwo(@PathVariable("levelTwoId") Integer id) {
        System.out.println("begin query");
        List<AppCategory> levelThree =  appCategoryService.queryLevelThreeByLevelTwo(id);
        return levelThree;
    }

}
