package com.baven.dao;

import com.baven.pojo.FundSystem;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import java.util.List;

public class SystemMapperImpl extends SqlSessionDaoSupport implements SystemMapper{
    @Override
    public List<FundSystem> getAllMsg() {
        return getSqlSession().getMapper(SystemMapper.class).getAllMsg();
    }

    @Override
    public FundSystem getMsgByName(String seqName) {
        return getSqlSession().getMapper(SystemMapper.class).getMsgByName(seqName);
    }

    @Override
    public int updateMsg(FundSystem fundSystem) {
        return getSqlSession().getMapper(SystemMapper.class).updateMsg(fundSystem);
    }

    @Override
    public int insertService(FundSystem fundSystem) {
        return getSqlSession().getMapper(SystemMapper.class).insertService(fundSystem);
    }

    @Override
    public int deleteService(String seqName) {
        return getSqlSession().getMapper(SystemMapper.class).deleteService(seqName);
    }
}
