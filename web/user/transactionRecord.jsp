<%--
  Created by IntelliJ IDEA.
  User: JUN-CHAO
  Date: 2016/7/18
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>交易记录</title>
    <link href="../lib/bootstrap.min.css" rel="stylesheet" type="text/css">
    <style>
        .rightContent {
            width: 600px;
            margin: 0 auto;
            margin-top: 50px;
        }
        .height37 {
            height: 37px;
            line-height: 37px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="top" style="margin: 0 auto;margin-top: 20px;border: #cccccc solid 1px;width: 1000px">
    <ul class="nav nav-pills" style="margin-left: 150px;padding: 20px">
        <li role="presentation" class="active text-center" style="width: 200px;"><a href="userIndex.jsp">客户</a></li>
    </ul>
</div>
<div class="content" style="margin: 0 auto;height: 500px;width: 1000px">
    <div class="leftArea text-center" style="width: 200px;height: 500px;border-left: #cccccc solid 1px;border-right:#cccccc solid 1px;float:left;">
        <ul class="nav nav-pills nav-stacked" style="padding: 20px">
            <li role="presentation"><a href="deposit.jsp">存款</a></li>
            <li role="presentation"><a href="withDrawals.jsp">取款</a></li>
            <li role="presentation" class="active"><a href="transactionRecord.jsp">交易记录</a></li>
            <li role="presentation"><a href="accountSettings.jsp">账号设置</a></li>
        </ul>
    </div>
    <div class="rightArea" style="width: 800px;height: 500px;float: right;border-right: #cccccc solid 1px">
        <div class="rightContent">
            <table class="table table-bordered" >
                <tr>
                    <td class="height37">交易 ID </td>
                    <td class="height37">交易时间</td>
                    <td class="height37">交易地点</td>
                    <td class="height37">交易类型</td>
                </tr>
                <tr>
                    <td class="height37"><a href="transactionRecordDetail.jsp">010203040506070809</a></td>
                    <td class="height37">2016.07.15 20:34:57</td>
                    <td class="height37">东北大学秦皇岛分校</td>
                    <td class="height37">存款</td>
                </tr>
                <tr>
                    <td class="height37"><a href="transactionRecordDetail.jsp">010203040506070808</a></td>
                    <td class="height37">2016.07.15 18:34:57</td>
                    <td class="height37">东北大学秦皇岛分校</td>
                    <td class="height37">存款</td>
                </tr>
                <tr>
                    <td class="height37"><a href="transactionRecordDetail.jsp">010203040506070807</a></td>
                    <td class="height37">2016.07.15 15:34:57</td>
                    <td class="height37">东北大学秦皇岛分校</td>
                    <td class="height37">取款</td>
                </tr>
                <tr>
                    <td class="height37"><a href="transactionRecordDetail.jsp">010203040506070806</a></td>
                    <td class="height37">2016.07.14 12:34:57</td>
                    <td class="height37">东北大学秦皇岛分校</td>
                    <td class="height37">存款</td>
                </tr>
                <tr>
                    <td class="height37"><a href="transactionRecordDetail.jsp">010203040506070805</a></td>
                    <td class="height37">2016.07.13 12:34:57</td>
                    <td class="height37">东北大学秦皇岛分校</td>
                    <td class="height37">取款</td>
                </tr>
                <tr>
                    <td class="height37"><a href="transactionRecordDetail.jsp">010203040506070804</a></td>
                    <td class="height37">2016.07.12 12:34:57</td>
                    <td class="height37">东北大学秦皇岛分校</td>
                    <td class="height37">取款</td>
                </tr>
                <tr>
                    <td class="height37"><a href="transactionRecordDetail.jsp">010203040506070803</a></td>
                    <td class="height37">2016.07.11 12:34:57</td>
                    <td class="height37">东北大学秦皇岛分校</td>
                    <td class="height37">存款</td>
                </tr>
            </table>
        </div>

    </div>
</div>
<div class="footer" style="margin: 0 auto;margin-bottom: 10px;border: #cccccc solid 1px;width: 1000px">
    <h5 class="text-center">Copyright &copy; 2006 - 2016 版权所有</h5>
</div>
</body>
</html>
