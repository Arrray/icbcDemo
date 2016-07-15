<%--
  Created by IntelliJ IDEA.
  User: JUN-CHAO
  Date: 2016/7/15
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*,java.sql.*"  %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String uname=request.getParameter("username");
    String pwd=request.getParameter("password");
    String age=request.getParameter("age");
    String IDcard=request.getParameter("IDcard");
    String sex=request.getParameter("sex");
    String tell=request.getParameter("tell");
    String city=request.getParameter("city");
    String address=request.getParameter("address");
    String rid=request.getParameter("rid");


    out.println(uname+"/"+pwd+"/"+age+"/"+IDcard+"/"+sex+"/"+tell+"/"+city+"/"+address+"/"+rid);

    //网页和数据库进行沟通，把数据存放到数据库，网页和数据库如何进行沟通？
    //网页靠java语言书写sql语句和数据库沟通


    //加载驱动，安装驱动管理器DriverManager
    Class.forName("com.mysql.jdbc.Driver");

    //1.连接数据库，提供 确定数据库地址  用户名，密码,连接类Connection
    String url="jdbc:mysql://localhost:3306/account?user=root&password= &unicode=true&characterEncoding=UTF-8";
    String username="root";
    String password="";
    Connection con=DriverManager.getConnection(url,username,password);

    //2.准备sql语句
    String sql=" insert into account(uname,pwd,age,IDcard,sex,tell,city,address,rid)values('"+uname+"','"+pwd+"','"+age+"','"+IDcard+"','"+sex+"','"+tell+"','"+city+"','"+address+"','"+rid+"')";
    out.println(sql);

    //3.创建陈述对象（虚拟人）陈述类Statement
    Statement stm=con.createStatement();

    //4.（陈述对象）执行sql语句
    int i=stm.executeUpdate(sql);

    //5.关闭
    if(stm!=null)stm.close();
    if(con!=null)con.close();

    if(i>0)
    {
        out.println("用户添加成功");
    }
    else
    {
        out.println("用户添加失败");
    }

%>
</body>
</html>
