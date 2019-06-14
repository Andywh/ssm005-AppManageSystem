package com.jd.service;

import com.github.pagehelper.PageInfo;
import com.jd.dto.AppInfoDTO;
import com.jd.pojo.AppInfo;
import com.jd.pojo.DataDictionary;

import java.util.List;

/**
 * Created by Ai Lun on 2019-06-04.
 */
public interface AppInfoService {
    PageInfo<AppInfo> queryByDevUserId(Integer id, PageInfo pageInfo);

    List<DataDictionary> queryAllAppStatus();

    List<DataDictionary> queryAllFlatforms();

    PageInfo<AppInfo> query(AppInfoDTO appInfoDTO);

    boolean add(AppInfo appInfo, Integer userId);

    boolean delete(Integer id);

    AppInfo queryById(Integer id);

    void update(AppInfo appInfo);

    AppInfo queryDetailById(Integer id);
}
