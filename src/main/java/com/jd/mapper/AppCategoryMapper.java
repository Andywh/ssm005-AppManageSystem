package com.jd.mapper;

import com.jd.pojo.AppCategory;

import java.util.List;

public interface AppCategoryMapper {

    List<AppCategory> queryAllLevelOne();

    List<AppCategory> queryLevelTwoByLevelOne(Integer id);

    List<AppCategory> queryLevelThreeByLevelTwo(Integer id);
}