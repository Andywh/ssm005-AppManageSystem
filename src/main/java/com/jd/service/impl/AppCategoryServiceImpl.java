package com.jd.service.impl;

import com.jd.mapper.AppCategoryMapper;
import com.jd.pojo.AppCategory;
import com.jd.service.AppCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Ai Lun on 2019-06-05.
 */
@Service("appCategoryService")
public class AppCategoryServiceImpl implements AppCategoryService {

    @Autowired
    private AppCategoryMapper appCategoryMapper;

    @Override
    public List<AppCategory> queryAllLevelOne() {
        return appCategoryMapper.queryAllLevelOne();
    }

    @Override
    public List<AppCategory> queryLevelTwoByLevelOne(Integer id) {

        return appCategoryMapper.queryLevelTwoByLevelOne(id);
    }

    @Override
    public List<AppCategory> queryLevelThreeByLevelTwo(Integer id) {
        return appCategoryMapper.queryLevelThreeByLevelTwo(id);
    }
}
