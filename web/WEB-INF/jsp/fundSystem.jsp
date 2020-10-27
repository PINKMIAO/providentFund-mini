<%--
  Created by IntelliJ IDEA.
  User: BavenCat
  Date: 2020/7/5
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>系统维护</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>系统维护</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toCreateService">增加项目</a>
        </div>
        <div class="col-md-4 column"></div>
        <div class="col-md-4 column">
            <a style="float: right" class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toMain">返回</a>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>名称</th>
                    <th>客户个数</th>
                    <th>最大个数</th>
                    <th>系统名称</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="systemMsg" items="${msg}">
                    <tr>
                        <td>${systemMsg.descp}</td>
                        <td>${systemMsg.seq}</td>
                        <td>${systemMsg.maxSeq}</td>
                        <td>${systemMsg.seqName}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/fund/toUpdateSystem?seqName=${systemMsg.seqName}">修改</a>
                            &nbsp;|&nbsp;
                            <a href="${pageContext.request.contextPath}/fund/toDeleteSystemService?seqName=${systemMsg.seqName}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
