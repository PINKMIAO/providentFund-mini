package com.baven.service;

import com.baven.dao.SystemMapper;
import com.baven.pojo.FundSystem;


import java.util.List;

public class SystemServiceImpl implements SystemService{

    private SystemMapper systemMapper;

    public void setSystemMapper(SystemMapper systemMapper) {
        this.systemMapper = systemMapper;
    }

    @Override
    public List<FundSystem> getAllMsg() {
        return systemMapper.getAllMsg();
    }

    @Override
    public FundSystem getMsgByName(String seqName) {
        return systemMapper.getMsgByName(seqName);
    }

    @Override
    public int updateMsg(FundSystem fundSystem) {
        return systemMapper.updateMsg(fundSystem);
    }

    @Override
    public int insertService(FundSystem fundSystem) {
        return systemMapper.insertService(fundSystem);
    }

    @Override
    public int deleteService(String seqName) {
        return systemMapper.deleteService(seqName);
    }
}
