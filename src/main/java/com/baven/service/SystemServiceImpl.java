package com.baven.service;

import com.baven.dao.SystemMapper;
import com.baven.pojo.FundSystem;


import java.util.List;

/**
 * 实现系统服务接口
 */
public class SystemServiceImpl implements SystemService{

    private SystemMapper systemMapper;
    public void setSystemMapper(SystemMapper systemMapper) {
        this.systemMapper = systemMapper;
    }

    /**
     * 获取系统的总体情况
     * @return
     */
    @Override
    public List<FundSystem> getAllMsg() {
        return systemMapper.getAllMsg();
    }

    /**
     * 获取单元的总体信息
     * @param seqName 目前只有两个参数 UNITACCNUM、PERACCNUM
     * @return
     */
    @Override
    public FundSystem getMsgByName(String seqName) {
        return systemMapper.getMsgByName(seqName);
    }

    /**
     * 更新系统的具体信息
     * @param fundSystem
     * @return
     */
    @Override
    public int updateMsg(FundSystem fundSystem) {
        return systemMapper.updateMsg(fundSystem);
    }

    /**
     * 插入单元信息
     * @param fundSystem
     * @return
     */
    @Override
    public int insertService(FundSystem fundSystem) {
        return systemMapper.insertService(fundSystem);
    }

    /**
     * 删除单元
     * @param seqName 目前只有两个参数 UNITACCNUM、PERACCNUM
     * @return
     */
    @Override
    public int deleteService(String seqName) {
        return systemMapper.deleteService(seqName);
    }
}
