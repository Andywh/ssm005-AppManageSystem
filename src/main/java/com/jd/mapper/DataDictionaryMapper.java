package com.jd.mapper;


import com.github.pagehelper.PageInfo;
import com.jd.dto.AppInfoDTO;
import com.jd.pojo.AppInfo;
import com.jd.pojo.DataDictionary;

import java.util.List;

public interface DataDictionaryMapper {

    List<DataDictionary> queryAllAppStatus();

    List<DataDictionary> queryAllFlatforms();

    PageInfo<AppInfo> query(AppInfoDTO appInfoDTO);
}