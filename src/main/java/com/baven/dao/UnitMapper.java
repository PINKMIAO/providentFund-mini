package com.baven.dao;

import com.baven.pojo.Unit;
import org.apache.ibatis.annotations.Param;

import java.util.Map;

public interface UnitMapper {

    Unit getUnitByNum(@Param("unitAccNum") String seq);
    int addUnit(Unit unit);
    int updateUnit(Unit unit);

    int getSEQ(@Param("seqName") String seqName);
    int updateSEQ(Map<String, Object> map);
    int getPerSNum(@Param("unitAccNum") String unitAccNum);
    int updatePerSNum(Map<String, Object> map);

    int judeOrgAjax(@Param("orgCode") String orgCode);
    Unit getMsgAccNumAjax(@Param("accNum") String accNum);

}
