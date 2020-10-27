package com.baven.service;

import com.baven.dao.PersonMapper;
import com.baven.pojo.Person;
import org.springframework.stereotype.Service;

import java.util.Map;


public class PersonServiceImpl implements PersonService{

    private PersonMapper personMapper;
    public void setPersonMapper(PersonMapper personMapper) {
        this.personMapper = personMapper;
    }

    @Override
    public int addPerson(Person person) {
        return personMapper.addPerson(person);
    }
    @Override
    public Person getPersonByNum(String perAccNum) {
        return personMapper.getPersonByNum(perAccNum);
    }
    @Override
    public int updatePerson(Person person) {
        return personMapper.updatePerson(person);
    }

    @Override
    public int getSEQ(String seqName) {
        return personMapper.getSEQ(seqName);
    }
    @Override
    public int updateSEQ(Map<String, Object> map) {
        return personMapper.updateSEQ(map);
    }
}
