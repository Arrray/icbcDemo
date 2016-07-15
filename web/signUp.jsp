<%--
  Created by IntelliJ IDEA.
  User: JUN-CHAO
  Date: 2016/7/15
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>注册</title>
    <link href="WEB-INF/lib/bootstrap.min.css" rel="stylesheet" type="text/css">
    <style>
        .content {
            width: 500px;
            margin: 100px auto;
        }
    </style>
</head>
<body>
<div class="content">
    <form action="signUpServer.jsp">
        用户姓名:<input type="text" name="uname"><br><br>
        用户密码:<input type="password" name="pwd"><br><br>
        用户年龄：<input type="text" name="age"><br><br>
        身份证号：<input type="text" name="IDcard"><br><br>
        用户性别：<input type="text" name="sex"><br><br>
        用户电话：<input type="text" name="tell"><br><br>
        用户城市：<input type="text" name="city"><br><br>
        用户地址：<input type="text" name="address"><br><br>
        用户权限:<select name="rid">
        <%
            //加载驱动，安装驱动管理器DriverManager
            Class.forName("com.mysql.jdbc.Driver");

            //1.连接数据库，提供 确定数据库地址  用户名，密码,连接类Connection
            String url="jdbc:mysql://localhost:3306/account?user=root&password= &unicode=true&characterEncoding=UTF-8";
            String username="root";
            String password="";
            Connection con=DriverManager.getConnection(url,username,password);

            //2.准备sql语句
            String sql="select * from manager";

            //3.创建陈述对象（虚拟人）陈述类Statement
            Statement stm=con.createStatement();

            //4.（陈述对象）执行sql语句
            ResultSet rs=stm.executeQuery(sql); //结果集中的数据是一行一行查询的

            while(rs!=null&&rs.next()) //判断有没有下一条记录
            {
                int id=rs.getInt("rid");
                String name=rs.getString("rname");
                out.println("<option value='"+id+"'>"+name+"</option>");
            }

            //5.关闭
            if(rs!=null) rs.close();
            if(stm!=null)stm.close();
            if(con!=null)con.close();
        %>
    </select><br>
        <input type="submit" value="增加">
    </form>


    <%--<form class="form-horizontal" action="signUpServer.jsp">--%>

        <%--用户姓名：<input type="text" name="username"><br><br>--%>
        <%--用户密码：<input type="password" name="password"><br><br>--%>
        <%--用户年龄：<input type="text" name="age"><br><br>--%>
        <%--身份证号：<input type="text" name="IDcard"><br><br>--%>
        <%--用户性别：<input type="text" name="sex"><br><br>--%>
        <%--用户电话：<input type="text" name="tell"><br><br>--%>
        <%--用户城市：<input type="text" name="city"><br><br>--%>
        <%--用户地址：<input type="text" name="address"><br><br>--%>
        <%--用户权限：<select name="rid">--%>
                <%--</select><br><br>--%>
        <%--<input type="submit" value="增加">--%>
    <%--</form>--%>
</div>
<%--<script>--%>
    <%--var input = document.getElementsByTagName('input')--%>
    <%--if(input===""){--%>
        <%--alert("请将信息填写完整");--%>
    <%--}--%>

<%--</script>--%>
<%--<script src="WEB-INF/lib/angularFiles.js"></script>--%>
</body>
</html>
