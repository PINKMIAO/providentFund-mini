package com.baven.service;

import com.baven.dao.UnitMapper;
import com.baven.pojo.Unit;

import java.util.Map;

public class UnitServiceImpl implements UnitService{

    private UnitMapper unitMapper;
    public void setUnitMapper(UnitMapper unitMapper) {
        this.unitMapper = unitMapper;
    }

    public Unit getUnitByNum(String seq) {
        return unitMapper.getUnitByNum(seq);
    }
    public int addUnit(Unit unit) {
        return unitMapper.addUnit(unit);
    }
    public int updateUnit(Unit unit) {
        return unitMapper.updateUnit(unit);
    }

    public int getSEQ(String seqName) {
        return unitMapper.getSEQ(seqName);
    }
    public int updateSEQ(Map<String, Object> map) {
        return unitMapper.updateSEQ(map);
    }
    public int getPerSNum(String unitAccNum) {
        return unitMapper.getPerSNum(unitAccNum);
    }
    public int updatePerSNum(Map<String, Object> map) {
        return unitMapper.updatePerSNum(map);
    }

    public int judeOrgAjax(String orgCode) {
        return unitMapper.judeOrgAjax(orgCode);
    }
    public Unit getMsgAccNumAjax(String accNum) {
        return unitMapper.getMsgAccNumAjax(accNum);
    }
}
