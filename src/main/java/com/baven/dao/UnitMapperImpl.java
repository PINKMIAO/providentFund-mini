package com.baven.dao;

import com.baven.pojo.Unit;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import java.util.Map;

public class UnitMapperImpl extends SqlSessionDaoSupport implements UnitMapper{

    public Unit getUnitByNum(String seq) {
        return getSqlSession().getMapper(UnitMapper.class).getUnitByNum(seq);
    }
    public int addUnit(Unit unit) {
        return getSqlSession().getMapper(UnitMapper.class).addUnit(unit);
    }
    public int updateUnit(Unit unit) {
        return getSqlSession().getMapper(UnitMapper.class).updateUnit(unit);
    }

    public int getSEQ(String seqName) {
        return getSqlSession().getMapper(UnitMapper.class).getSEQ(seqName);
    }
    public int updateSEQ(Map<String, Object> map) {
        return getSqlSession().getMapper(UnitMapper.class).updateSEQ(map);
    }
    public int getPerSNum(String unitAccNum) {
        return getSqlSession().getMapper(UnitMapper.class).getPerSNum(unitAccNum);
    }
    public int updatePerSNum(Map<String, Object> map) {
        return getSqlSession().getMapper(UnitMapper.class).updatePerSNum(map);
    }

    public int judeOrgAjax(String orgCode) {
        return getSqlSession().getMapper(UnitMapper.class).judeOrgAjax(orgCode);
    }
    public Unit getMsgAccNumAjax(String accNum) {
        return getSqlSession().getMapper(UnitMapper.class).getMsgAccNumAjax(accNum);
    }
}
