<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selaccount.jsp' starting page</title>


  </head>
  
  <body>
    <table border="1">
      <tr>
         <td>用户id</td>
         <td>用户名称</td>
         <td>用户密码</td>
         <td>角色id</td>
      </tr>
  <%
  //加载驱动，安装驱动管理器DriverManager
        Class.forName("com.mysql.jdbc.Driver");
        
        //1.连接数据库，提供 确定数据库地址  用户名，密码,连接类Connection
        String url="jdbc:mysql://localhost:3306/account?username=root&password= &unicode=true&characterEncoding=UTF-8";
        String username="root";
        String password="";
        Connection con=DriverManager.getConnection(url,username,password);
        
        //2.准备sql语句
        //String sql="select a.*,r.rname from account a left join role r on a.rid=r.rid";
        String sql="select * from v_account";
        
        //3.创建陈述对象（虚拟人）陈述类Statement
         Statement stm=con.createStatement();
        
        //4.（陈述对象）执行sql语句
        ResultSet rs=stm.executeQuery(sql); //结果集中的数据是一行一行查询的

       while(rs!=null&&rs.next()) //判断有没有下一条记录
        {
            int id=rs.getInt("aid");
            String name= rs.getString("uname");
            String pwd= rs.getString("pwd");
            String age= rs.getString("age");
            String IDcard= rs.getString("IDcard");
            String sex= rs.getString("sex");
            String tell= rs.getString("tell");
            String city= rs.getString("city");
            String address= rs.getString("address");
            int rid= rs.getInt("rid");

           // out.println(id+","+name+","+psd+","+rid);
            out.println("<tr><td>"+id+"</td><td>"+name+"</td><td>***</td><td>"+pwd+"</td></tr>");
        }
        
        //5.关闭
        if(rs!=null) rs.close();
        if(stm!=null)stm.close();
        if(con!=null)con.close();
   %>
   
   </table>
  </body>
</html>
