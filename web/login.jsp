<%--
  Created by IntelliJ IDEA.
  User: JUN-CHAO
  Date: 2016/7/15
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link href="WEB-INF/lib/bootstrap.min.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        .content {
            width: 500px;
            margin: 100px auto;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="content">
    <form action="loginServer.jsp">
        用户姓名:<input type="text" name="username"><br><br>
        用户密码:<input type="password" name="password"><br><br>
        <input type="submit" value="登录">
    </form>
    没有账号，<a href="signUp.jsp">点我注册</a>
</div>
</body>
</html>
