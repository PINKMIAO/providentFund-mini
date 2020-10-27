package com.baven.dao;

import com.baven.pojo.FundSystem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SystemMapper {

    List<FundSystem> getAllMsg();

    FundSystem getMsgByName(@Param("seqName") String seqName);
    int updateMsg(FundSystem fundSystem);
    int insertService(FundSystem fundSystem);
    int deleteService(@Param("seqName") String seqName);

}
