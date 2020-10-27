<%--
  Created by IntelliJ IDEA.
  User: BavenCat
  Date: 2020/7/2
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人公积金信息</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>个人公积金信息</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toUpdatePMsg?accNum=${person.accNum}">修改信息</a>
            </div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">
                <a style="float: right" class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toMain">返回</a>
            </div>
        </div>

        <div class="form-group">
            <label>姓名</label>
            <input type="text" class="form-control" value="${person.userName}" readonly>
        </div>
        <div class="form-group">
            <label>证件号码</label>
            <input type="text" class="form-control" value="${person.userID}" readonly>
        </div>
        <div class="form-group">
            <label>个人账号</label>
            <input type="text" class="form-control" value="${person.accNum}" readonly>
        </div>
        <div class="form-group">
            <label>单位公积金账号</label>
            <input type="text" class="form-control" value="${person.unitAccNum}" readonly>
        </div>
        <div class="form-group">
            <label>单位名称</label>
            <input type="text" class="form-control" value="${unit.unitAccName}" readonly>
        </div>

        <div class="form-group">
            <label >账户状态</label>
            <input type="text" class="form-control" value="" readonly>
        </div>
        <div class="form-group">
            <label >公积金余额</label>
            <input type="text" class="form-control" value="${person.balance}" readonly>
        </div>
        <div class="form-group">
            <label >缴存基数</label>
            <input type="text" class="form-control" value="${person.baseNumber}" readonly>
        </div>
        <div class="form-group">
            <label >单位比例</label>
            <input type="text" class="form-control" value="${person.unitProp}" readonly>
        </div>
        <div class="form-group">
            <label >个人比例</label>
            <input type="text" class="form-control" value="${person.perProp}" readonly>
        </div>
        <div class="form-group">
            <label >单位月应缴额</label>
            <input type="text" class="form-control" value="${unit.unitPaySum}" readonly>
        </div>
        <div class="form-group">
            <label >个人月应缴额</label>
            <input type="text" class="form-control" value="${unit.perPaySum}" readonly>
        </div>

        <div class="form-group">
            <label >最后汇缴月</label>
            <input type="text" class="form-control" value="${unit.lastPayDate}" readonly>
        </div>

        <div class="form-group">
            <label >柜员</label>
            <input type="text" class="form-control" value="${person.OP}" readonly>
        </div>
        <div class="form-group">
            <label >开户日期</label>
            <input type="text" class="form-control" value="${person.openDate}" readonly>
        </div>


    </div>
</div>


</body>
</html>
