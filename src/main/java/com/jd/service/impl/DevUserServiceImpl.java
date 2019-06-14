package com.jd.service.impl;

import com.jd.mapper.DevUserMapper;
import com.jd.pojo.DevUser;
import com.jd.service.DevUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Ai Lun on 2019-06-03.
 */
@Service("devUserService")
public class DevUserServiceImpl implements DevUserService {

    @Autowired
    private DevUserMapper devUserMapper;

    @Override
    public DevUser login(DevUser devUser) {
        List<DevUser> users = devUserMapper.queryByNamePwd(devUser);
        if (users != null &&  users.size() == 1) {
            return users.get(0);
        }
        return null;
    }
}
