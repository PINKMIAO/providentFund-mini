<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/27
  Time: 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位公积金信息</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>单位公积金信息</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toUpdateUMsg?unitAccNum=${unit.unitAccNum}">修改信息</a>
            </div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">
                <a style="float: right" class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toMain">返回</a>
            </div>
        </div>

        <div class="form-group">
            <label>单位公积金账号</label>
            <input type="text" class="form-control" value="${unit.unitAccNum}" readonly>
        </div>
        <div class="form-group">
            <label>单位名称</label>
            <input type="text" class="form-control" value="${unit.unitAccName}" readonly>
        </div>
        <div class="form-group">
            <label>单位地址</label>
            <input type="text" class="form-control" value="${unit.unitAddr}" readonly>
        </div>
        <div class="form-group">
            <label>组织机构代码</label>
            <input type="text" class="form-control" value="${unit.orgCode}" readonly>
        </div>

        <div class="form-group">
            <label >单位类别</label>
            <input type="text" class="form-control"
            <c:choose>
               <c:when test="${unit.unitChar==1}">value="企业"</c:when>
               <c:when test="${unit.unitChar==2}">value="事业"</c:when>
               <c:when test="${unit.unitChar==3}">value="机关"</c:when>
               <c:when test="${unit.unitChar==4}">value="团体"</c:when>
               <c:when test="${unit.unitChar==5}">value="其他"</c:when>
               <c:otherwise>value="出错"</c:otherwise>
            </c:choose>
             readonly>
        </div>
        <div class="form-group">
            <label>企业类型</label>
            <input type="text" class="form-control"
            <c:choose>
                   <c:when test="${unit.unitKind==110}">value="国有经济"</c:when>
                   <c:when test="${unit.unitKind==120}">value="集体经济"</c:when>
                   <c:when test="${unit.unitKind==130}">value="股份合作企业"</c:when>
                   <c:when test="${unit.unitKind==140}">value="联营企业"</c:when>
                   <c:when test="${unit.unitKind==150}">value="有限责任公司"</c:when>
                   <c:when test="${unit.unitKind==160}">value="股份有限公司"</c:when>
                   <c:when test="${unit.unitKind==170}">value="私营企业"</c:when>
                   <c:when test="${unit.unitKind==190}">value="其他企业"</c:when>
                   <c:when test="${unit.unitKind==200}">value="港、澳、台商投资企业"</c:when>
                   <c:when test="${unit.unitKind==300}">value="外商投资企业"</c:when>
                   <c:when test="${unit.unitKind==900}">value="其他"</c:when>
                   <c:otherwise>value="出错"</c:otherwise>
            </c:choose>
            readonly>
        </div>
        <div class="form-group">
            <label >发薪日期</label>
            <input type="text" class="form-control" value="${unit.salaryDate}" readonly>
        </div>

        <div class="form-group">
            <label >联系电话</label>
            <input type="text" class="form-control" value="${unit.unitPhone}" readonly>
        </div>
        <div class="form-group">
            <label>单位经办人</label>
            <input type="text" class="form-control" value="${unit.unitLinkMan}" readonly>
        </div>
        <div class="form-group">
            <label >经办人身份证号码</label>
            <input type="text" class="form-control" value="${unit.unitAgentPaPno}" readonly>
        </div>
        <div class="form-group">
            <label >账户状态</label>
            <input type="text" class="form-control" value="${unit.accState}" readonly>
        </div>
        <div class="form-group">
            <label >公积金余额</label>
            <input type="text" class="form-control" value="${unit.balance}" readonly>
        </div>
        <div class="form-group">
            <label >缴存基数</label>
            <input type="text" class="form-control" value="${unit.baseNumber}" readonly>
        </div>
        <div class="form-group">
            <label >单位比例</label>
            <input type="text" class="form-control" value="${unit.unitProp}" readonly>
        </div>
        <div class="form-group">
            <label >个人比例</label>
            <input type="text" class="form-control" value="${unit.perProp}" readonly>
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
            <label >单位人数</label>
            <input type="text" class="form-control" value="${unit.perSNum}" readonly>
        </div>
        <div class="form-group">
            <label >最后汇缴月</label>
            <input type="text" class="form-control" value="${unit.lastPayDate}" readonly>
        </div>
        <div class="form-group">
            <label >公积金中心机构代码</label>
            <input type="text" class="form-control" value="${unit.instCode}" readonly>
        </div>
        <div class="form-group">
            <label >柜员</label>
            <input type="text" class="form-control" value="${unit.OP}" readonly>
        </div>
        <div class="form-group">
            <label >建立日期</label>
            <input type="text" class="form-control" value="${unit.creatDate}" readonly>
        </div>
        <div class="form-group">
            <label >备注</label>
            <textarea class="form-control" rows="3" readonly>${unit.remark}</textarea>
        </div>


    </div>
</div>

</body>
</html>
