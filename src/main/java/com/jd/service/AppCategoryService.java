package com.jd.service;

import com.jd.pojo.AppCategory;

import java.util.List;

/**
 * Created by Ai Lun on 2019-06-05.
 */
public interface AppCategoryService {

    List<AppCategory> queryAllLevelOne();

    List<AppCategory> queryLevelTwoByLevelOne(Integer id);

    List<AppCategory> queryLevelThreeByLevelTwo(Integer id);
}
