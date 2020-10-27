<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/25
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>用户开户</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toCreateUnit">单位开户</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toCreatePerson">个人开户</a>
            </div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">
                <a style="float: right" class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toMain">返回</a>
            </div>

        </div>
    </div>

</div>
</body>
</html>
