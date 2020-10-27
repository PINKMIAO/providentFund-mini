package com.baven.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.text.SimpleDateFormat;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Person {

    // 用户姓名
    private String userName;
    // 证件类型
    private String userIDType;
    // 用户证件
    private String userID;
    // 个人公积金账号
    private String accNum;
    // 单位公积金账号
    private String unitAccNum;
    // 开户日期
    private Date openDate;
    // 公积金余额
    private double balance;
    // 个人账户状态
    private String perAccState;
    // 缴存基数
    private double baseNumber;
    // 单位比例
    private double unitProp;
    // 个人比例
    private double perProp;
    // 最后汇缴月
    private Date lastPayDate;
    // 单位月应缴额
    private double unitMonPaySum;
    // 个人月应缴额
    private double perMonPaySum;
    // 本年汇补缴额
    private double YPayAmt;
    // 年提取额
    private double YDrawAmt;
    // 年度结息
    private double YInterestBal;
    // 公积金中心机构代码
    private String instCode;
    // 柜员
    private String OP;
    // 备注
    private String remark;

//    public String getOpenDate(){
//        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        return simpleDateFormat.format(openDate);
//    }

}
