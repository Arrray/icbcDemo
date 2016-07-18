<%--
  Created by IntelliJ IDEA.
  User: JUN-CHAO
  Date: 2016/7/18
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>取款</title>
    <link href="../lib/bootstrap.min.css" rel="stylesheet" type="text/css">
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
            <li role="presentation" class="active"><a href="withDrawals.jsp">取款</a></li>
            <li role="presentation"><a href="transactionRecord.jsp">交易记录</a></li>
            <li role="presentation"><a href="accountSettings.jsp">账号设置</a></li>
        </ul>
    </div>
    <div class="rightArea" style="width: 800px;height: 500px;float: right;border-right: #cccccc solid 1px">
        <div class="rightContent" style="margin: 0 auto;margin-top: 30px;width: 400px;height: 150px;">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label" style="display: inline-block;width: 98px;height: 34px;line-height: 34px">取款金额 :</label>
                <div class="col-sm-10" style="width: 300px">
                    <input type="text" class="form-control" id="inputEmail3" placeholder="取款金额">
                </div>
            </div>
            <br><br><br>
            <div class="form-group text-right" >
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default" style="width: 100px;">确认</button>
                </div>
            </div>
            <br><br>
            <div class="form-group text-right" >
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="reset" class="btn btn-default" style="width: 100px;">重置</button>
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
