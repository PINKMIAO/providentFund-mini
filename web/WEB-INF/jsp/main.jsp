<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/27
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>公积金中心</small>
                </h1>
            </div>

        </div>

        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toCreate">用户开户</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/fund/#">单位缴费</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toSystemS">系统维护</a>
            </div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">
                <form class="form-inline" action="/fund/toGetMsg" method="post" style="float: right">
                    <select class="form-control" name="type">
                        <option value="1">单位</option>
                        <option value="2">个人</option>
                    </select>
                    <input type="text" name="seq" class="form-control" placeholder="请输入要查询的公积金账号">
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>

</div>

</body>
</html>
