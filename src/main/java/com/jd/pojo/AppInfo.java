package com.jd.pojo;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class AppInfo {
    private Integer id;

    private String softwareName;

    private String APKName;

    private String supportROM;

    private String interfaceLanguage;

    private BigDecimal softwareSize;

    private Date updateDate;

    private Long devId;

    private String appInfo;

    private Long status;

    private Date onSaleDate;

    private Date offSaleDate;

    private Long flatformId;

    private Long downloads;

    private Long createdBy;

    private Date creationDate;

    private Long modifyBy;

    private Date modifyDate;

    //private Long categoryLevel1;
    //
    //private Long categoryLevel2;
    //
    //private Long categoryLevel3;

    private AppCategory categoryLevel1;

    private AppCategory categoryLevel2;

    private AppCategory categoryLevel3;

    private String logoPicPath;

    private String logoLocPath;

    private Long versionId;

    public Integer getId() {
        return id;
    }

    private List<AppVersion> appVersions;

    private AppVersion appVersion;

    private DevUser devUser;

    private DevUser createUser;

    private DevUser modifyUser;

    // 平台信息
    private DataDictionary platformInfo;

    // 状态信息
    private DataDictionary statusInfo;

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSoftwareName() {
        return softwareName;
    }

    public void setSoftwareName(String softwareName) {
        this.softwareName = softwareName == null ? null : softwareName.trim();
    }

    public String getAPKName() {
        return APKName;
    }

    public void setAPKName(String APKName) {
        this.APKName = APKName == null ? null : APKName.trim();
    }

    public String getSupportROM() {
        return supportROM;
    }

    public void setSupportROM(String supportROM) {
        this.supportROM = supportROM == null ? null : supportROM.trim();
    }

    public String getInterfaceLanguage() {
        return interfaceLanguage;
    }

    public void setInterfaceLanguage(String interfaceLanguage) {
        this.interfaceLanguage = interfaceLanguage == null ? null : interfaceLanguage.trim();
    }

    public BigDecimal getSoftwareSize() {
        return softwareSize;
    }

    public void setSoftwareSize(BigDecimal softwareSize) {
        this.softwareSize = softwareSize;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Long getDevId() {
        return devId;
    }

    public void setDevId(Long devId) {
        this.devId = devId;
    }

    public String getAppInfo() {
        return appInfo;
    }

    public void setAppInfo(String appInfo) {
        this.appInfo = appInfo == null ? null : appInfo.trim();
    }

    public Long getStatus() {
        return status;
    }

    public void setStatus(Long status) {
        this.status = status;
    }

    public Date getOnSaleDate() {
        return onSaleDate;
    }

    public void setOnSaleDate(Date onSaleDate) {
        this.onSaleDate = onSaleDate;
    }

    public Date getOffSaleDate() {
        return offSaleDate;
    }

    public void setOffSaleDate(Date offSaleDate) {
        this.offSaleDate = offSaleDate;
    }

    public Long getFlatformId() {
        return flatformId;
    }

    public void setFlatformId(Long flatformId) {
        this.flatformId = flatformId;
    }

    public Long getDownloads() {
        return downloads;
    }

    public void setDownloads(Long downloads) {
        this.downloads = downloads;
    }

    public Long getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(Long createdBy) {
        this.createdBy = createdBy;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Long getModifyBy() {
        return modifyBy;
    }

    public void setModifyBy(Long modifyBy) {
        this.modifyBy = modifyBy;
    }

    public Date getModifyDate() {
        return modifyDate;
    }

    public void setModifyDate(Date modifyDate) {
        this.modifyDate = modifyDate;
    }

    public AppCategory getCategoryLevel1() {
        return categoryLevel1;
    }

    public void setCategoryLevel1(AppCategory categoryLevel1) {
        this.categoryLevel1 = categoryLevel1;
    }

    public AppCategory getCategoryLevel2() {
        return categoryLevel2;
    }

    public void setCategoryLevel2(AppCategory categoryLevel2) {
        this.categoryLevel2 = categoryLevel2;
    }

    public AppCategory getCategoryLevel3() {
        return categoryLevel3;
    }

    public void setCategoryLevel3(AppCategory categoryLevel3) {
        this.categoryLevel3 = categoryLevel3;
    }

    public String getLogoPicPath() {
        return logoPicPath;
    }

    public void setLogoPicPath(String logoPicPath) {
        this.logoPicPath = logoPicPath == null ? null : logoPicPath.trim();
    }

    public String getLogoLocPath() {
        return logoLocPath;
    }

    public void setLogoLocPath(String logoLocPath) {
        this.logoLocPath = logoLocPath == null ? null : logoLocPath.trim();
    }

    public Long getVersionId() {
        return versionId;
    }

    public void setVersionId(Long versionId) {
        this.versionId = versionId;
    }

    public List<AppVersion> getAppVersions() {
        return appVersions;
    }

    public void setAppVersions(List<AppVersion> appVersions) {
        this.appVersions = appVersions;
    }

    public DevUser getDevUser() {
        return devUser;
    }

    public void setDevUser(DevUser devUser) {
        this.devUser = devUser;
    }

    public AppVersion getAppVersion() {
        return appVersion;
    }

    public void setAppVersion(AppVersion appVersion) {
        this.appVersion = appVersion;
    }

    public DataDictionary getPlatformInfo() {
        return platformInfo;
    }

    public void setPlatformInfo(DataDictionary platformInfo) {
        this.platformInfo = platformInfo;
    }

    public DataDictionary getPlatFormInfo() {
        return platformInfo;
    }

    public void setPlatFormInfo(DataDictionary platFormInfo) {
        this.platformInfo = platFormInfo;
    }

    public DataDictionary getStatusInfo() {
        return statusInfo;
    }

    public void setStatusInfo(DataDictionary statusInfo) {
        this.statusInfo = statusInfo;
    }

    public DevUser getCreateUser() {
        return createUser;
    }

    public void setCreateUser(DevUser createUser) {
        this.createUser = createUser;
    }

    public DevUser getModifyUser() {
        return modifyUser;
    }

    public void setModifyUser(DevUser modifyUser) {
        this.modifyUser = modifyUser;
    }

    @Override
    public String toString() {
        return "AppInfo{" +
                "id=" + id +
                ", softwareName='" + softwareName + '\'' +
                ", APKName='" + APKName + '\'' +
                ", supportROM='" + supportROM + '\'' +
                ", interfaceLanguage='" + interfaceLanguage + '\'' +
                ", softwareSize=" + softwareSize +
                ", updateDate=" + updateDate +
                ", devId=" + devId +
                ", appInfo='" + appInfo + '\'' +
                ", status=" + status +
                ", onSaleDate=" + onSaleDate +
                ", offSaleDate=" + offSaleDate +
                ", flatformId=" + flatformId +
                ", downloads=" + downloads +
                ", createdBy=" + createdBy +
                ", creationDate=" + creationDate +
                ", modifyBy=" + modifyBy +
                ", modifyDate=" + modifyDate +
                ", categoryLevel1=" + categoryLevel1 +
                ", categoryLevel2=" + categoryLevel2 +
                ", categoryLevel3=" + categoryLevel3 +
                ", logoPicPath='" + logoPicPath + '\'' +
                ", logoLocPath='" + logoLocPath + '\'' +
                ", versionId=" + versionId +
                ", appVersions=" + appVersions +
                ", appVersion=" + appVersion +
                ", devUser=" + devUser +
                ", platformInfo=" + platformInfo +
                ", statusInfo=" + statusInfo +
                '}';
    }
}