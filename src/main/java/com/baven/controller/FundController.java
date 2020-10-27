package com.baven.controller;

import com.baven.pojo.FundSystem;
import com.baven.pojo.Person;
import com.baven.pojo.Unit;
import com.baven.service.PersonService;
import com.baven.service.SystemService;
import com.baven.service.UnitService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/fund")
public class FundController {

    @Autowired
    @Qualifier("unitService")
    private UnitService unitService;
    @Autowired
    @Qualifier("personService")
    private PersonService personService;
    @Autowired
    @Qualifier("systemService")
    private SystemService systemService;

    @RequestMapping("/orgAjax")
    @ResponseBody
    public String orgAjax(String orgCode){
        System.out.println("orgAjax==>" + orgCode);
        int flag = unitService.judeOrgAjax(orgCode);
        String msg = "";
        if (orgCode != null){
            if (flag > 0){
                msg = "该单位已建户";
            } else if ("".equals(orgCode)){
                msg = "不能为空";
            } else {
                msg = "✔";
            }
        } else {
            msg = "出错，请重新输入";
        }
        return msg;
    }
    @RequestMapping("/propAjax")
    @ResponseBody
    public String propAjax(double prop) {
        System.out.println("propAjax==>" + prop);
        String msg = "";
        if (prop > 0) {
            if (!(prop >= 5 && prop <= 12)) {
                msg = "比例必须在规定的5-12%范围内";
            } else {
                msg = "✔";
            }
        }
        return msg;
    }
    @RequestMapping("/idAjax")
    @ResponseBody
    public String idAjax(String idType){
        System.out.println("idAjax==>" + idType);
        String msg = "";
        if (idType != null){
            if (!("1".equals(idType))){
                msg = "目前仅支持身份证";
            }
        }
        return msg;
    }
    @RequestMapping("/accNumAjax")
    @ResponseBody
    public String accNumAjax(String accNum){
        System.out.println("accNumAjax==>" + accNum);
        String str = "";
        if (accNum != null){
            String regex = "\\d";
            if (accNum.matches(regex)) {
                Unit unit = unitService.getMsgAccNumAjax(accNum);
                Map<String, Object> map = new HashMap<>();
                ObjectMapper mapper = new ObjectMapper();
                map.put("unitAccName", unit.getUnitAccName());
                map.put("unitProp", unit.getUnitProp());
                map.put("perProp", unit.getPerProp());
                try {
                    str = mapper.writeValueAsString(map);
                } catch (JsonProcessingException e) {
                    System.out.println("JSON出错");
                }
                return str;
            } else {
                System.out.println("1111");
                return "请输入正确数字";
            }
        }
        return null;
    }


    @RequestMapping("/toMain")
    public String toMain(){
        return "main";
    }
    @RequestMapping("/toCreate")
    public String toCreate(){
        return "create";
    }
    @RequestMapping("/toCreateUnit")
    public String toCreateUnit(){
        return "createUnit";
    }
    @RequestMapping("/toCreatePerson")
    public String toCreatePerson(){
        return "createPerson";
    }
    @RequestMapping("/toCreateService")
    public String toCreateService(){
        return "createService";
    }
    @RequestMapping("/toGetMsg")
    public String toGetMsg(String type, String seq, Model model){
        if ("1".equals(type)){
            Unit unit = unitService.getUnitByNum(seq);
            model.addAttribute("unit", unit);
            return "getUnitMsg";
        } else {
            Person person = personService.getPersonByNum(seq);
            model.addAttribute("person", person);
            Unit unit = unitService.getUnitByNum(person.getUnitAccNum());
            model.addAttribute("unit", unit);
            return "getPersonMsg";
        }
    }
    @RequestMapping("/toUpdateUMsg")
    public String toUpdateUMsg(String unitAccNum, Model model){
        Unit unit = unitService.getUnitByNum(unitAccNum);
        model.addAttribute("unit", unit);
        return "unitUpdate";
    }
    @RequestMapping("/toUpdatePMsg")
    public String toUpdatePMsg(String accNum, Model model){
        Person person = personService.getPersonByNum(accNum);
        model.addAttribute("person", person);
        Unit unit = unitService.getUnitByNum(person.getUnitAccNum());
        model.addAttribute("unit", unit);
        return "personUpdate";
    }
    @RequestMapping("/toSystemS")
    public String toSystemS(Model model){
        List<FundSystem> allMsg = systemService.getAllMsg();
        model.addAttribute("msg", allMsg);
        return "fundSystem";
    }
    @RequestMapping("/toUpdateSystem")
    public String toUpdateSystem(String seqName, Model model){
        FundSystem msg = systemService.getMsgByName(seqName);
        model.addAttribute("msg", msg);
        return "updateSystem";
    }


    @RequestMapping("/createUnit")
    public String CreateUnit(Unit unit){
        Map<String, Object> map = new HashMap<String, Object>();
        int seq = unitService.getSEQ("UNITACCNUM");

        System.out.println(seq);

        unit.setUnitAccNum(String.valueOf(seq));
        unit.setCreatDate(new Date());
        unit.setLastPayDate(new Date());
        map.put("seqName", "UNITACCNUM");
        map.put("seq", seq+1);

        System.out.println(map);
        System.out.println(unit);
        int i = unitService.addUnit(unit);
        if (i > 0) {
            int j = unitService.updateSEQ(map);
            if (j > 0){
                System.out.println("succeed");
            } else {
                System.out.println("seq修改失败");
            }
        } else {
            System.out.println("error");
        }
        return "redirect:/fund/toCreate";
    }
    @RequestMapping("/createPerson")
    public String CreatePerson(Person person){
        //FundSystem.out.println("createPerson==>" + person);
        Map<String, Object> map = new HashMap<String, Object>();
        int seq = personService.getSEQ("PERACCNUM");
        //FundSystem.out.println("seq==>" + seq);
        int num = unitService.getPerSNum(person.getUnitAccNum());
        //FundSystem.out.println("num==>" + num);

        person.setAccNum(String.valueOf(seq));
        person.setOpenDate(new Date());
        map.put("seqName", "PERACCNUM");
        map.put("seq", seq + 1);
        map.put("unitAccNum", person.getUnitAccNum());
        map.put("perNum", num + 1);

        int i = personService.addPerson(person);
        //FundSystem.out.println("i==>" + i);
        if (i > 0) {
            int j1 = personService.updateSEQ(map);
            int j2 = unitService.updatePerSNum(map);
            //FundSystem.out.println("j1, j2==>" + j1 + ", " + j2);
            if (j1 > 0 && j2 > 0){
                System.out.println("succeed");
            } else {
                System.out.println("seq修改失败");
            }
        } else {
            System.out.println("error");
        }
        return "redirect:/fund/toCreate";
    }
    @RequestMapping("/createService")
    public String CreatePerson(FundSystem fundSystem){
        int i = systemService.insertService(fundSystem);
        if (i > 0){
            System.out.println("succeed");
        } else {
            System.out.println("error");
        }
        return "redirect:/fund/toSystemS";
    }


    @RequestMapping("/unitUpdate")
    public String unitUpdate(Unit unit){
        System.out.println(unit);
        System.out.println(unit.getLastPayDate());
        System.out.println(unit.getCreatDate());
        int i = unitService.updateUnit(unit);
        if (i > 0){
            System.out.println("succeed");
        } else {
            System.out.println("error");
        }
        return "redirect:/fund/toMain";
    }
    @RequestMapping("/personUpdate")
    public String personUpdate(Person person){
        System.out.println(person);
        int i = personService.updatePerson(person);
        if (i > 0){
            System.out.println("succeed");
        } else {
            System.out.println("error");
        }
        return "redirect:/fund/toMain";
    }
    @RequestMapping("/updateSystem")
    public String systemUpdate(FundSystem fundSystem){
        System.out.println(fundSystem);
        int i = systemService.updateMsg(fundSystem);
        if (i > 0){
            System.out.println("succeed");
        } else {
            System.out.println("error");
        }
        return "redirect:/fund/toSystemS";
    }

    @RequestMapping("/toDeleteSystemService")
    public String DeleteSystemService(String seqName){
        int i = systemService.deleteService(seqName);
        if (i > 0){
            System.out.println("succeed");
        } else {
            System.out.println("error");
        }
        return "redirect:/fund/toSystemS";
    }


    @RequestMapping("/t1")
    @ResponseBody
    public String test(Unit unit){

        return "yes";
    }

}
