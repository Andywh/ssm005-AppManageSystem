package com.jd.dto;

/**
 * Created by Ai Lun on 2019-06-05.
 */
public class AppInfoDTO {

    private String appName;

    private Long appStatus;

    private Long appPlatform;

    private Long levelOne;

    private Long levelTwo;

    private Long levelThree;

    private Integer pageNum;

    private Integer devUserId;

    public Integer getDevUserId() {
        return devUserId;
    }

    public void setDevUserId(Integer devUserId) {
        this.devUserId = devUserId;
    }

    public String getAppName() {
        return appName;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }

    public Long getAppStatus() {
        return appStatus;
    }

    public void setAppStatus(Long appStatus) {
        this.appStatus = appStatus;
    }

    public Long getAppPlatform() {
        return appPlatform;
    }

    public void setAppPlatform(Long appPlatform) {
        this.appPlatform = appPlatform;
    }

    public Long getLevelOne() {
        return levelOne;
    }

    public void setLevelOne(Long levelOne) {
        this.levelOne = levelOne;
    }

    public Long getLevelTwo() {
        return levelTwo;
    }

    public void setLevelTwo(Long levelTwo) {
        this.levelTwo = levelTwo;
    }

    public Long getLevelThree() {
        return levelThree;
    }

    public void setLevelThree(Long levelThree) {
        this.levelThree = levelThree;
    }

    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    @Override
    public String toString() {
        return "AppInfoDTO{" +
                "appName='" + appName + '\'' +
                ", appStatus=" + appStatus +
                ", appPlatform=" + appPlatform +
                ", levelOne=" + levelOne +
                ", levelTwo=" + levelTwo +
                ", levelThree=" + levelThree +
                ", pageNum=" + pageNum +
                '}';
    }
}
