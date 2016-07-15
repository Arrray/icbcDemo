<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addaccount.jsp' starting page</title>

  </head>
  
  <body>
     <form action="../account/addaccountserver.jsp">
        用户名:<input type="text" name="uname"><br>
        密码:<input type="password" name="pwd"><br>
       角色id:<select name="rid">
            <%
  //加载驱动，安装驱动管理器DriverManager
        Class.forName("com.mysql.jdbc.Driver");
        
        //1.连接数据库，提供 确定数据库地址  用户名，密码,连接类Connection
        String url="jdbc:mysql://localhost:3306/account?user=root&password= &unicode=true&characterEncoding=UTF-8";
        String username="root";
        String password="";
        Connection con=DriverManager.getConnection(url,username,password);
        
        //2.准备sql语句
        String sql="select * from role";
        
        //3.创建陈述对象（虚拟人）陈述类Statement
         Statement stm=con.createStatement();
        
        //4.（陈述对象）执行sql语句
        ResultSet rs=stm.executeQuery(sql); //结果集中的数据是一行一行查询的
       
       while(rs!=null&&rs.next()) //判断有没有下一条记录
        {
          int id=rs.getInt("rid");
          String name=rs.getString("uname");
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
  </body>
</html>
