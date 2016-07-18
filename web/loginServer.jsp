<%--
  Created by IntelliJ IDEA.
  User: JUN-CHAO
  Date: 2016/7/15
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*,java.sql.*,com.it.bean.*"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String uname=request.getParameter("username");
    String pwd=request.getParameter("password");

    String sql="select * from account where uname='"+uname+"' and pwd='"+pwd+"'";

    //加载驱动，安装驱动管理器DriverManager
    Class.forName("com.mysql.jdbc.Driver");

    //1.连接数据库，提供 确定数据库地址  用户名，密码,连接类Connection
    String url="jdbc:mysql://localhost:3306/account?username=root&password= &unicode=true&characterEncoding=UTF-8";
    String username="root";
    String password="";
    Connection con=DriverManager.getConnection(url,username,password);

    //3.创建陈述对象（虚拟人）陈述类Statement
    Statement stm=con.createStatement();

    //4.（陈述对象）执行sql语句
    ResultSet rs=stm.executeQuery(sql); //结果集中的数据是一行一行查询的

    if(rs!=null&&rs.next())//登录成功
    {
        //获取登录者的用户信息
        int aid=rs.getInt("id");
        String rname = rs.getString("uname");
        String rpwd = rs.getString("pwd");
        int rid= rs.getInt("rid");
        Account account=new Account(aid,rname,rpwd,rid);
        //把登录的用户信息存放在会话对象session中，这样的话用户信息在任何一个页面都可以通过会话对象session去获取
        session.setAttribute("account",account);
        if(rid==0){
            out.println(rname+"登录成功,进入<a href='./user/userIndex.jsp'>中心页面</a>");
        }else if(rid==1){
            out.println(rname+"登录成功,进入<a href='./staff/staffIndex.jsp'>中心页面</a>");
        }else if (rid==2){
        out.println(rname+"登录成功,进入<a href='./manager/managerIndex.jsp'>中心页面</a>");
        }
//        out.println(rname+"登录成功,进入<a href='../user/userIndex.jsp'>中心页面</a>");
    }
    else
    {
        out.println("登录失败，5秒自动跳到登录页面，或者点击<a href='login.jsp'>登录</a>");
        response.setHeader("refresh", "5;URL=login.jsp");
    }

    //5.关闭
    if(rs!=null) rs.close();
    if(stm!=null)stm.close();
    if(con!=null)con.close();
%>
</body>
</html>
