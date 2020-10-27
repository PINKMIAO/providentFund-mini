package com.baven.dao;

import com.baven.pojo.Person;
import org.apache.ibatis.annotations.Param;

import java.util.Map;

public interface PersonMapper {

    int addPerson(Person person);
    Person getPersonByNum(@Param("perAccNum") String perAccNum);
    int updatePerson(Person person);

    int getSEQ(@Param("seqName") String seqName);
    int updateSEQ(Map<String, Object> map);

}
