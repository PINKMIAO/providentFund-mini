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
    <title>createUnit</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/statics/js/jquery.js"></script>

    <script>
        function org() {
            $.post({
                url:"${pageContext.request.contextPath}/fund/orgAjax",
                data:{"orgCode":$("#orgCode").val()},
                success:function (data) {
                    if ("✔" === data){
                        $("#orgInfo").css("color", "green").html(data);
                    } else {
                        $("#orgInfo").css("color", "red").html(data);
                    }
                }
            })
        }
        function uProp() {
            $.post({
                url: "${pageContext.request.contextPath}/fund/propAjax",
                data:{"prop":$("#UProp").val()},
                success:function (data) {
                    if ("✔" === data){
                        $("#UPropInfo").css("color", "green").html(data);
                    } else {
                        $("#UPropInfo").css("color", "red").html(data);
                    }
                }
            })
        }
        function pProp() {
            $.post({
                url: "${pageContext.request.contextPath}/fund/propAjax",
                data:{"prop":$("#PProp").val()},
                success:function (data) {
                    if ("✔" === data){
                        $("#PPropInfo").css("color", "green").html(data);
                    } else {
                        $("#PPropInfo").css("color", "red").html(data);
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
                    <small>单位公积金开户</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/fund/toCreate">返回</a>
        </div>
    </div>


    <form action="/fund/createUnit" method="post">
        <div class="form-group">
            <label>单位名称</label>
            <input type="text" class="form-control" name="unitAccName" required>
        </div>
        <div class="form-group">
            <label>单位地址</label>
            <input type="text" class="form-control" name="unitAddr" required>
        </div>
        <div class="form-group">
            <label>组织机构代码</label>
            <input type="text" class="form-control" id="orgCode" name="orgCode" onblur="org()" required>
            <span id="orgInfo" class="help-block"></span>
        </div>

        <div class="form-group">
            <label >单位类别</label>
            <select class="form-control" name="unitChar" required>
                <option value="1">企业</option>
                <option value="2">事业</option>
                <option value="3">机关</option>
                <option value="4">团体</option>
                <option value="5">其他</option>
            </select>
        </div>
        <div class="form-group">
            <label>企业类型</label>
            <select class="form-control" name="unitKind" required>
                <option value="110">国有经济</option>
                <option value="120">集体经济</option>
                <option value="130">股份合作企业</option>
                <option value="140">联营企业</option>
                <option value="150">有限责任公司</option>
                <option value="160">股份有限公司</option>
                <option value="170">私营企业</option>
                <option value="190">其他企业</option>
                <option value="200">港、澳、台商投资企业</option>
                <option value="300">外商投资企业</option>
                <option value="900">其他</option>
            </select>
        </div>
        <div class="form-group">
            <label >发薪日期</label>
            <select class="form-control" name="salaryDate" required>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
            </select>
        </div>

        <div class="form-group">
            <label >联系电话</label>
            <input type="text" class="form-control" name="unitPhone" required>
        </div>
        <div class="form-group">
            <label>单位经办人</label>
            <input type="text" class="form-control" name="unitLinkMan" required>
        </div>
        <div class="form-group">
            <label >经办人身份证号码</label>
            <input type="text" class="form-control" name="unitAgentPaPno" required>
        </div>
        <div class="form-group">
            <label >单位比例</label>
            <input type="text" class="form-control" name="unitProp" id="UProp" onblur="uProp()" required>
            <span id="UPropInfo" class="help-block"></span>
        </div>
        <div class="form-group">
            <label >个人比例</label>
            <input type="text" class="form-control" name="perProp" id="PProp" onblur="pProp()" required>
            <span id="PPropInfo" class="help-block"></span>
        </div>
        <div class="form-group">
            <label >备注</label>
            <textarea class="form-control" name="remark" rows="3"></textarea>
        </div>


        <button type="submit" class="btn btn-default">提交</button>
    </form>

</div>
</body>
</html>
