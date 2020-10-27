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
    <title>个人公积金修改</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/statics/js/jquery.js"></script>
    <script>
        function accNumAjax() {
            $.post({
                url: "${pageContext.request.contextPath}/fund/accNumAjax",
                data:{"accNum":$("#accNum").val()},
                success:function (data) {
                    console.log(data);
                    if ("请输入正确数字" === data){
                        $("#AccNumInfo").css("color", "red").html(data);
                    } else {
                        var json = JSON.parse(data);
                        $("#UnitName").val(json.unitAccName);
                    }
                }
            })
        }
        function idAjax() {
            $.post({
                url:"${pageContext.request.contextPath}/fund/idAjax",
                data:{"idType":$("#IDType").val()},
                success:function (data) {
                    if ("✔" === data){
                        $("#IDInfo").css("color", "green").html(data);
                    } else {
                        $("#IDInfo").css("color", "red").html(data);
                    }
                }
            })
        }
    </script>
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>个人公积金修改</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 column">
            <a style="float: right" class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toMain">返回</a>
        </div>
    </div>

    <form action="/fund/personUpdate" method="post">

        <div class="form-group">
            <label>个人账号</label>
            <input type="text" class="form-control" value="${person.accNum}" name="accNum" readonly>
        </div>
        <div class="form-group">
            <label>姓名</label>
            <input type="text" class="form-control" value="${person.userName}" name="userName">
        </div>
        <div class="form-group">
            <label >证件类型</label>
            <div class="form-inline">
                <select class="form-control" id="IDType" name="userIDType" onblur="idAjax()">
                    <option value="1">身份证</option>
                    <option value="2">军官证</option>
                    <option value="3">护照</option>
                    <option value="4">其他</option>
                </select>
                <input type="text" class="form-control" name="userID" value="${person.userID}" required>
            </div>
            <span id="IDInfo" class="help-block"></span>
        </div>
        <div class="form-group">
            <label>单位账号</label>
            <input type="text" class="form-control" id="accNum" name="unitAccNum" value="${person.unitAccNum}" onblur="accNumAjax()" required>
        </div>
        <div class="form-group">
            <label>单位名称</label>
            <input type="text" class="form-control" name="unitAccName" id="UnitName" value="${unit.unitAccName}" readonly>
        </div>

        <button type="submit" class="btn btn-default">提交</button>
    </form>


</div>

</body>
</html>
