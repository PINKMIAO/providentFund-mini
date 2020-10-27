package com.baven.service;

import com.baven.dao.UnitMapper;
import com.baven.pojo.Unit;

import java.util.Map;

/**
 * 单位服务实现类
 */
public class UnitServiceImpl implements UnitService{

    private UnitMapper unitMapper;
    public void setUnitMapper(UnitMapper unitMapper) {
        this.unitMapper = unitMapper;
    }

    /**
     * 获取单位信息
     * @param seq
     * @return
     */
    public Unit getUnitByNum(String seq) {
        return unitMapper.getUnitByNum(seq);
    }

    /**
     * 添加单位
     * @param unit
     * @return
     */
    public int addUnit(Unit unit) {
        return unitMapper.addUnit(unit);
    }

    /**
     * 更新单位
     * @param unit
     * @return
     */
    public int updateUnit(Unit unit) {
        return unitMapper.updateUnit(unit);
    }

    /**
     * 获取所属单元已创建的个数
     * @param seqName 目前只有两个参数 UNITACCNUM、PERACCNUM
     * @return
     */
    public int getSEQ(String seqName) {
        return unitMapper.getSEQ(seqName);
    }

    /**
     * 用户创建完成后，将个数进行+1更新操作
     * @param map 封装数据
     * @return
     */
    public int updateSEQ(Map<String, Object> map) {
        return unitMapper.updateSEQ(map);
    }

    /**
     * 根据单位编号返回信息
     * @param unitAccNum 单位编号
     * @return
     */
    public int getPerSNum(String unitAccNum) {
        return unitMapper.getPerSNum(unitAccNum);
    }

    /**
     * 更新用户个数
     * @param map
     * @return
     */
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
