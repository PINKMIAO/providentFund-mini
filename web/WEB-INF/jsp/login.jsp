<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/21
  Time: 0:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登入页面</title>

    <script src="${pageContext.request.contextPath}/statics/js/jquery.js"></script>

    <script>
        function a() {
            $.post({
                url:"${pageContext.request.contextPath}/ajax",
                data:{"name":$("#name").val()},
                success:function (data) {
                    if ("✔" === data){
                        $("#nameInfo").css("color", "green").html(data);
                    } else {
                        $("#nameInfo").css("color", "red").html(data);
                    }
                }
            })
        }
    </script>
</head>
<body>

<div>
    <form action="" method="post">
        <p>
            用户名：<input type="text" id="name" name="username" onblur="a()">
            <span id="nameInfo"></span>
        </p>
        <p>
            密码：<input type="password" id="pwd" name="password">
            <span id="pwdInfo"></span>
        </p>
        <input type="submit" value="提交">
    </form>
</div>

</body>
</html>
