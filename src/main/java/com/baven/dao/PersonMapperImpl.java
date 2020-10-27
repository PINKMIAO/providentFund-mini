package com.baven.dao;

import com.baven.pojo.Person;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import java.util.Map;

public class PersonMapperImpl extends SqlSessionDaoSupport implements PersonMapper{

    @Override
    public int addPerson(Person person) {
        return getSqlSession().getMapper(PersonMapper.class).addPerson(person);
    }
    @Override
    public Person getPersonByNum(String perAccNum) {
        return getSqlSession().getMapper(PersonMapper.class).getPersonByNum(perAccNum);
    }
    @Override
    public int updatePerson(Person person) {
        return getSqlSession().getMapper(PersonMapper.class).updatePerson(person);
    }

    @Override
    public int getSEQ(String seqName) {
        return getSqlSession().getMapper(PersonMapper.class).getSEQ(seqName);
    }
    @Override
    public int updateSEQ(Map<String, Object> map) {
        return getSqlSession().getMapper(PersonMapper.class).updateSEQ(map);
    }
}
