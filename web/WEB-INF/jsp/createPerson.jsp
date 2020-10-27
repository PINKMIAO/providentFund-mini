<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/25
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>createPerson</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/statics/js/jquery.js"></script>

    <script>
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
                        $("#UProp").val(json.unitProp);
                        $("#PProp").val(json.perProp);
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
                    <small>个人公积金开户</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toCreate">返回</a>
        </div>
    </div>


    <form action="/fund/createPerson" method="post">
        <div class="form-group">
            <label >证件类型</label>
            <div class="form-inline">
                <select class="form-control" id="IDType" name="userIDType" onblur="idAjax()">
                    <option value="1">身份证</option>
                    <option value="2">军官证</option>
                    <option value="3">护照</option>
                    <option value="4">其他</option>
                </select>
                <input type="text" class="form-control" name="userID" placeholder="请输入证件号码" required>
            </div>
            <span id="IDInfo" class="help-block"></span>
        </div>

        <div class="form-group">
            <label>姓名</label>
            <input type="text" class="form-control" name="userName" required>
        </div>

        <div class="form-group">
            <label>单位账号</label>
            <input type="text" class="form-control" id="accNum" name="unitAccNum" onblur="accNumAjax()" required>
            <span id="AccNumInfo" class="help-block"></span>
        </div>
        <div class="form-group">
            <label>单位名称</label>
            <input type="text" class="form-control" name="unitAccName" id="UnitName" value="" readonly>
        </div>
        <div class="form-group">
            <label >单位比例</label>
            <input type="text" class="form-control" name="unitProp" id="UProp" value="" readonly>
        </div>
        <div class="form-group">
            <label >个人比例</label>
            <input type="text" class="form-control" name="perProp" id="PProp" value="" readonly>
        </div>



        <div class="form-group">
            <label>缴存基数</label>
            <input type="text" class="form-control" name="baseNumber" required>
        </div>

        <button type="submit" class="btn btn-default">提交</button>
    </form>

</div>
</body>
</html>
