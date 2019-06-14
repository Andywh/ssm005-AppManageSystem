package com.jd.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jd.constant.CommonCodeConstant;
import com.jd.dto.AppInfoDTO;
import com.jd.mapper.AppInfoMapper;
import com.jd.mapper.DataDictionaryMapper;
import com.jd.pojo.AppInfo;
import com.jd.pojo.DataDictionary;
import com.jd.pojo.DevUser;
import com.jd.service.AppInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.Date;
import java.util.List;

/**
 * Created by Ai Lun on 2019-06-04.
 */
@Service("appInfoService")
public class AppInfoServiceImpl implements AppInfoService {

    @Autowired
    private AppInfoMapper appInfoMapper;

    @Autowired
    private DataDictionaryMapper dataDictionaryMapper;


    @Override
    public PageInfo<AppInfo> queryByDevUserId(Integer id, PageInfo pageInfo) {
        // 去第几页，页码的大小
        PageHelper.startPage(pageInfo.getPageNum(), pageInfo.getPageSize());
        AppInfoDTO a = new AppInfoDTO();
        a.setDevUserId(id);
        List<AppInfo> l = appInfoMapper.query(a);
        PageInfo<AppInfo> page = new PageInfo<>(l);
        return page;
    }

    @Override
    public List<DataDictionary> queryAllAppStatus() {
        return dataDictionaryMapper.queryAllAppStatus();
    }

    @Override
    public List<DataDictionary> queryAllFlatforms() {
        return dataDictionaryMapper.queryAllFlatforms();
    }

    @Override
    public PageInfo<AppInfo> query(AppInfoDTO appInfoDTO) {
        //
        if (appInfoDTO.getPageNum() == null) {
            appInfoDTO.setPageNum(1);
        }
        PageHelper.startPage(appInfoDTO.getPageNum(), CommonCodeConstant.PAGE_SIZE);
        List<AppInfo> l = appInfoMapper.query(appInfoDTO);
        PageInfo<AppInfo> page = new PageInfo<>(l);
        return page;
    }

    @Override
    public boolean add(AppInfo appInfo, Integer userId) {
        // 第一个我们要先处理这些信息
        appInfo.setCreationDate(new Date());
        DevUser devUser = new DevUser();
        devUser.setId(userId);
        appInfo.setDevUser(devUser);
        appInfo.setCreatedBy(Long.parseLong(userId.toString()));

        DataDictionary dataDictionary = new DataDictionary();
        dataDictionary.setValueId(CommonCodeConstant.APP_STATUS_AUDITED);

        appInfo.setStatusInfo(dataDictionary);

        int row = appInfoMapper.add(appInfo);

        return false;
    }

    @Override
    public boolean delete(Integer id) {
        if (id != null) {
            int row = appInfoMapper.deleteById(id);
            return row == 1 ? true : false;
        }
        return false;
    }

    @Override
    public AppInfo queryById(Integer id) {
        AppInfo appInfo = appInfoMapper.queryById(id);
        return appInfo;
    }

    @Override
    public void update(AppInfo appInfo) {
        appInfo.setModifyDate(new Date());
        appInfo.setUpdateDate(new Date());
        appInfoMapper.updateById(appInfo);
    }

    @Override
    public AppInfo queryDetailById(Integer id) {
        return appInfoMapper.queryDetailById(id);
    }
}
