<%--
  Created by IntelliJ IDEA.
  User: BavenCat
  Date: 2020/7/5
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改系统</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改系统</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toSystemS">返回</a>
        </div>
    </div>

    <form action="/fund/updateSystem" method="post">
        <div class="form-group">
            <label>名称</label>
            <input type="text" class="form-control" value="${msg.descp}" name="descp" required>
        </div>
        <div class="form-group">
            <label>客户个数</label>
            <input type="text" class="form-control" value="${msg.seq}" name="seq" required>
        </div>
        <div class="form-group">
            <label>最大个数</label>
            <input type="text" class="form-control" value="${msg.maxSeq}" name="maxSeq" required>
        </div>
        <div class="form-group">
            <label>系统名称</label>
            <input type="text" class="form-control" value="${msg.seqName}" name="seqName" required>
        </div>
        <button type="submit" class="btn btn-default">提交</button>
    </form>

</div>

</body>
</html>
