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
        用户名:<input type="text" name="uname"><br>
        密码:<input type="password" name="pwd"><br>
        <input type="submit" value="登录">
    </form>
</div>

<a href="selAccount.jsp">查询用户</a>
</body>
</html>
