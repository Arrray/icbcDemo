<%--
  Created by IntelliJ IDEA.
  User: JUN-CHAO
  Date: 2016/7/15
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*,com.it.bean.*,java.sql.*"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <% Account account=(Account)session.getAttribute("account");
    out.println(account.getAid()+"/"+account.getUname()+"/"+account.getRid()+"<br><hr>");

    String sql="select rf.*,f.* from rolefun rf left join fun f on rf.fid=f.fid where rid="+account.getRid();


    //加载驱动，安装驱动管理器DriverManager
    Class.forName("com.mysql.jdbc.Driver");

    //1.连接数据库，提供 确定数据库地址  用户名，密码,连接类Connection
    String url="jdbc:mysql://localhost:3306/account?user=root&password= &unicode=true&characterEncoding=UTF-8";
    String username="root";
    String password="";
    Connection con=DriverManager.getConnection(url,username,password);

    //3.创建陈述对象（虚拟人）陈述类Statement
    Statement stm=con.createStatement();

    //4.（陈述对象）执行sql语句
    ResultSet rs=stm.executeQuery(sql); //结果集中的数据是一行一行查询的
    while(rs!=null&&rs.next())
    {
      String fname=rs.getString("fname");
      String furl=rs.getString("furl");
      out.println("<a href='"+furl+"'>"+fname+"</a><br>");
    }


    //5.关闭
    if(rs!=null) rs.close();
    if(stm!=null)stm.close();
    if(con!=null)con.close();

  %>
  </body>
</html>
