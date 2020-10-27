package com.baven.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.text.SimpleDateFormat;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Unit {

    // 单位公积金账号
    private String unitAccNum;
    // 单位名称
    private String unitAccName;
    // 单位地址
    private String unitAddr;
    // 组织机构代码
    private String orgCode;
    // 单位类别
    private String unitChar;
    // 企业类型
    private String unitKind;
    // 发薪日期
    private String salaryDate;
    // 联系电话
    private String unitPhone;
    // 单位联系人
    private String unitLinkMan;
    // 经办人身份证号码
    private String unitAgentPaPno;
    // 账户状态
    private String accState;
    // 公积金余额
    private double balance;
    // 缴存基数
    private double baseNumber;
    // 单位比例
    private double unitProp;
    // 个人比例
    private double perProp;
    // 单位月应缴额
    private double unitPaySum;
    // 个人月应缴额
    private double perPaySum;
    // 单位人数
    private int perSNum;
    // 最后汇缴月
    private Date lastPayDate;
    // 公积金中心机构代码
    private String instCode;
    // 柜员
    private String OP;
    // 建立日期
    private Date creatDate;
    // 备注
    private String remark;

//    public String getLastPayDate(){
//        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM");
//        return simpleDateFormat.format(lastPayDate);
//    }
//
//    public String getCreatDate() {
//        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        return simpleDateFormat.format(creatDate);
//    }

}
