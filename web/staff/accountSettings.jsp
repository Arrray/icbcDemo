<%--
  Created by IntelliJ IDEA.
  User: JUN-CHAO
  Date: 2016/7/18
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>账号设置</title>
    <link href="../lib/bootstrap.min.css" rel="stylesheet" type="text/css">
    <style>
        .left-item {
            width: 100px;
            text-align: center;
        }
        .right-item {
            width: 300px;
        }
        .rightContent {
            width: 400px;
            margin: 0 auto;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="top" style="margin: 0 auto;margin-top: 20px;border: #cccccc solid 1px;width: 1000px">
    <ul class="nav nav-pills" style="margin-left: 150px;padding: 20px">
        <li role="presentation" class="active text-center" style="width: 200px;"><a href="staffIndex.jsp">银行职员</a></li>
    </ul>
</div>
<div class="content" style="margin: 0 auto;height: 500px;width: 1000px">
    <div class="leftArea text-center" style="width: 200px;height: 500px;border-left: #cccccc solid 1px;border-right:#cccccc solid 1px;float:left;">
        <ul class="nav nav-pills nav-stacked" style="padding: 20px">
            <li role="presentation"><a href="deposit.jsp">存款</a></li>
            <li role="presentation"><a href="withDrawals.jsp">取款</a></li>
            <li role="presentation"><a href="cunstomerInfoManagement.jsp">客户信息</a></li>
            <li role="presentation"><a href="transactionRecord.jsp">交易记录</a></li>
            <li role="presentation" class="active"><a href="accountSettings.jsp">账号设置</a></li>
        </ul>
    </div>
    <div class="rightArea" style="width: 800px;height: 500px;float: right;border-right: #cccccc solid 1px">
        <div class="rightContent">
            <table class="table table-bordered" >
                <tr>
                    <td class="left-item">账户 ID :</td>
                    <td class="right-item">dsahdasjdjasjhjhj</td>
                </tr>
                <tr>
                    <td class="left-item">账户密码：</td>
                    <td class="right-item">ddddd</td>
                </tr>
                <tr>
                    <td class="left-item">用户姓名：</td>
                    <td class="right-item">ddddd</td>
                </tr>
                <tr>
                    <td class="left-item">用户性别：</td>
                    <td class="right-item">ddddd</td>
                </tr>
                <tr>
                    <td class="left-item">用户年龄：</td>
                    <td class="right-item">ddddd</td>
                </tr>
                <tr>
                    <td class="left-item">身份证号：</td>
                    <td class="right-item">ddddd</td>
                </tr>
                <tr>
                    <td class="left-item">银行卡号：</td>
                    <td class="right-item">ddddd</td>
                </tr>
                <tr>
                    <td class="left-item">账户余额：</td>
                    <td class="right-item">ddddd</td>
                </tr>
                <tr>
                    <td class="left-item">账户状态：</td>
                    <td class="right-item">ddddd</td>
                </tr>
            </table>
            <div class="form-group" style="width: 400px" >
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="button" class="btn btn-primary" style="width: 150px;float: left">取消</button>
                    <button type="submit" class="btn btn-primary" style="width: 150px;float: right">保存</button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer" style="margin: 0 auto;margin-bottom: 10px;border: #cccccc solid 1px;width: 1000px">
    <h5 class="text-center">Copyright &copy; 2006 - 2016 版权所有</h5>
</div>
</body>
</html>
