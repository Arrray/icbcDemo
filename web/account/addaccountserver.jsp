<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addaccountserver.jsp' starting page</title>
  
  </head>
  
  <body>
    <%
       String uname=request.getParameter("uname");
        String upsd=request.getParameter("upsd");
        String rid=request.getParameter("rid");
        
        out.println(uname+"/"+upsd+"/"+rid);
        
        //网页和数据库进行沟通，把数据存放到数据库，网页和数据库如何进行沟通？
        //网页靠java语言书写sql语句和数据库沟通
        
        
        //加载驱动，安装驱动管理器DriverManager
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        
        //1.连接数据库，提供 确定数据库地址  用户名，密码,连接类Connection
        String url="jdbc:sqlserver://e97:1433;databaseName=icbc";
        String username="sa";
        String password="123";
        Connection con=DriverManager.getConnection(url,username,password);
        
        //2.准备sql语句
        String sql="insert into account(aname,apsd,rid)values('"+uname+"','"+upsd+"',"+rid+")";
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
