import com.baven.config.ToDate;
import com.baven.dao.PersonMapper;
import com.baven.pojo.FundSystem;
import com.baven.pojo.Person;
import com.baven.pojo.Unit;
import com.baven.service.PersonServiceImpl;
import com.baven.service.SystemServiceImpl;
import com.baven.service.UnitServiceImpl;
import com.baven.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 单元测试类
 */
public class MyTest {

    @Test
    public void test05(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UnitServiceImpl unitService = context.getBean("unitService", UnitServiceImpl.class);
        Unit unit = new Unit();
        int ii = 11;
        unit.setUnitAccNum(String.valueOf(ii));
        int i = unitService.addUnit(unit);
        if (i > 0) {
            System.out.println("succeed");
        } else {
            System.out.println("error");
        }
    }
    @Test
    public void test06(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UnitServiceImpl unitService = context.getBean("unitService", UnitServiceImpl.class);
        int unitaccnum = unitService.getSEQ("UNITACCNUM");
        System.out.println(unitaccnum);
    }
    @Test
    public void test07(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UnitServiceImpl unitService = context.getBean("unitService", UnitServiceImpl.class);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("seqName", "UNITACCNUM");
        map.put("seq", 1+1);
        int j = unitService.updateSEQ(map);
        if (j > 0){
            System.out.println("succeed");
        } else {
            System.out.println("error");
        }

    }
    @Test
    public void test08(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UnitServiceImpl unitService = context.getBean("unitService", UnitServiceImpl.class);
        Unit unitByNum = unitService.getUnitByNum("1");
        System.out.println(unitByNum);

    }
    @Test
    public void test09(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UnitServiceImpl unitService = context.getBean("unitService", UnitServiceImpl.class);
        int i = unitService.judeOrgAjax("2");
        System.out.println(i);

    }
    @Test
    public void test10(){
        ToDate toDate = new ToDate();
        Date date = toDate.convert("2019-11-11");
        System.out.println(date);
    }
    @Test
    public void test11(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UnitServiceImpl unitService = context.getBean("unitService", UnitServiceImpl.class);
        System.out.println("1");

        Unit unit = unitService.getMsgAccNumAjax("1");
        System.out.println("2");
        System.out.println(unit.getUnitAccName());
    }
    @Test
    public void test12(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
    }
    @Test
    public void test13(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        PersonServiceImpl personService = context.getBean("personService", PersonServiceImpl.class);
        Person person = new Person();
        person.setUserName("小白");
        person.setUserID("112233");
        person.setRemark("测试1");
        int i = personService.addPerson(person);
        if (i > 0){
            System.out.println("succeed");
        } else {
            System.out.println("error");
        }
    }
    @Test
    public void test14(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UnitServiceImpl service = context.getBean("unitService", UnitServiceImpl.class);
        int perSNum = service.getPerSNum("1");
        System.out.println(perSNum);
//        Map<String, Object> map = new HashMap<>();
//        map.put("perNum", 2);
//        map.put("unitAccNum", 1);
//        int i = service.updatePerSNum(map);
//        if (i > 0){
//            FundSystem.out.println("succeed");
//        }
    }
    @Test
    public void test15(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        PersonServiceImpl personService = context.getBean("personService", PersonServiceImpl.class);


    }

    @Test
    public void test16(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        SystemServiceImpl systemService = context.getBean("systemService", SystemServiceImpl.class);
        List<FundSystem> allMsg = systemService.getAllMsg();

        for (FundSystem fundSystem : allMsg) {
            System.out.println(fundSystem );
        }
    }
}
