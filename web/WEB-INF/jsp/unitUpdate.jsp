<%--
  Created by IntelliJ IDEA.
  User: BavenCat
  Date: 2020/6/27
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位公积金修改</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>单位公积金修改</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 column">
            <a style="float: right" class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toMain">返回</a>
        </div>
    </div>

    <form action="/fund/unitUpdate" method="post">

        <div class="form-group">
            <label>单位公积金账号</label>
            <input type="text" class="form-control" value="${unit.unitAccNum}" name="unitAccNum" readonly>
        </div>
        <div class="form-group">
            <label>单位名称</label>
            <input type="text" class="form-control" value="${unit.unitAccName}" name="unitAccName">
        </div>
        <div class="form-group">
            <label>单位地址</label>
            <input type="text" class="form-control" value="${unit.unitAddr}" name="unitAddr">
        </div>
        <div class="form-group">
            <label>组织机构代码</label>
            <input type="text" class="form-control" value="${unit.orgCode}" name="orgCode">
        </div>

        <div class="form-group">
            <label >单位类别</label>
            <input type="text" class="form-control" value="${unit.unitChar}" name="unitChar">
        </div>
        <div class="form-group">
            <label>企业类型</label>
            <input type="text" class="form-control" value="${unit.unitKind}" name="unitKind">
        </div>
        <div class="form-group">
            <label >发薪日期</label>
            <input type="text" class="form-control" value="${unit.salaryDate}" name="salaryDate">
        </div>

        <div class="form-group">
            <label >联系电话</label>
            <input type="text" class="form-control" value="${unit.unitPhone}" name="unitPhone">
        </div>
        <div class="form-group">
            <label>单位经办人</label>
            <input type="text" class="form-control" value="${unit.unitLinkMan}" name="unitLinkMan">
        </div>
        <div class="form-group">
            <label >经办人身份证号码</label>
            <input type="text" class="form-control" value="${unit.unitAgentPaPno}" name="unitAgentPaPno">
        </div>
        <div class="form-group">
            <label >账户状态</label>
            <input type="text" class="form-control" value="${unit.accState}" name="accState" readonly>
        </div>
        <div class="form-group">
            <label >公积金余额</label>
            <input type="text" class="form-control" value="${unit.balance}" name="balance" readonly>
        </div>
        <div class="form-group">
            <label >缴存基数</label>
            <input type="text" class="form-control" value="${unit.baseNumber}" name="baseNumber" readonly>
        </div>
        <div class="form-group">
            <label >单位比例</label>
            <input type="text" class="form-control" value="${unit.unitProp}" name="unitProp" readonly>
        </div>
        <div class="form-group">
            <label >个人比例</label>
            <input type="text" class="form-control" value="${unit.perProp}" name="perProp" readonly>
        </div>
        <div class="form-group">
            <label >单位月应缴额</label>
            <input type="text" class="form-control" value="${unit.unitPaySum}" name="unitPaySum" readonly>
        </div>
        <div class="form-group">
            <label >个人月应缴额</label>
            <input type="text" class="form-control" value="${unit.perPaySum}" name="perPaySum" readonly>
        </div>
        <div class="form-group">
            <label >单位人数</label>
            <input type="text" class="form-control" value="${unit.perSNum}" name="perSNum" readonly>
        </div>
        <div class="form-group">
            <label >最后汇缴月</label>
            <input type="text" class="form-control" value="${unit.lastPayDate}" name="lastPayDate" readonly>
        </div>
        <div class="form-group">
            <label >公积金中心机构代码</label>
            <input type="text" class="form-control" value="${unit.instCode}" name="instCode" readonly>
        </div>
        <div class="form-group">
            <label >柜员</label>
            <input type="text" class="form-control" value="${unit.OP}" name="OP" readonly>
        </div>
        <div class="form-group">
            <label >开户日期</label>
            <input type="text" class="form-control" value="${unit.creatDate}" name="creatDate" readonly>
        </div>
        <div class="form-group">
            <label >备注</label>
            <textarea class="form-control" rows="3">${unit.remark}</textarea>
        </div>

        <button type="submit" class="btn btn-default">提交</button>
    </form>


</div>

</body>
</html>
