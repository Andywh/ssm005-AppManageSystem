package com.jd.mapper;

import com.jd.dto.AppInfoDTO;
import com.jd.pojo.AppInfo;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.Appinfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AppInfoMapper {
    //List<AppInfo> queryByDevUserId(@Param("devUserId") Integer id);

    List<AppInfo> query(AppInfoDTO appInfoDTO);

    int add(AppInfo appInfo);

    int deleteById(Integer id);

    AppInfo queryById(Integer id);

    void updateById(AppInfo appInfo);

    AppInfo queryDetailById(Integer id);
}