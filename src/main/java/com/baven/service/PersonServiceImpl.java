package com.baven.service;

import com.baven.dao.PersonMapper;
import com.baven.pojo.Person;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * 单位服务实现类
 */
public class PersonServiceImpl implements PersonService{

    private PersonMapper personMapper;
    public void setPersonMapper(PersonMapper personMapper) {
        this.personMapper = personMapper;
    }

    /**
     * 添加用户
     * @param person 用户对象
     * @return
     */
    @Override
    public int addPerson(Person person) {
        return personMapper.addPerson(person);
    }

    /**
     * 根据用户编码获取用户信息
     * @param perAccNum 用户编码
     * @return
     */
    @Override
    public Person getPersonByNum(String perAccNum) {
        return personMapper.getPersonByNum(perAccNum);
    }

    /**
     * 更新用户信息
     * @param person 用户对象
     * @return
     */
    @Override
    public int updatePerson(Person person) {
        return personMapper.updatePerson(person);
    }

    /**
     * 获取所属单元已创建的个数
     * @param seqName 目前只有两个参数 UNITACCNUM、PERACCNUM
     * @return 具体创建处的个人
     */
    @Override
    public int getSEQ(String seqName) {
        return personMapper.getSEQ(seqName);
    }

    /**
     * 用户创建完成后，将个数进行+1更新操作
     * @param map
     * @return
     */
    @Override
    public int updateSEQ(Map<String, Object> map) {
        return personMapper.updateSEQ(map);
    }
}
