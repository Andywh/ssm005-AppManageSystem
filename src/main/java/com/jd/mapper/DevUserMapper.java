package com.jd.mapper;

import com.jd.pojo.DevUser;

import java.util.List;

public interface DevUserMapper {
    List<DevUser> queryByNamePwd(DevUser devUser);
}