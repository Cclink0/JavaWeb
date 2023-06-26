<%--
  Created by IntelliJ IDEA.
  User: 王富贵
  Date: 16/5/2023
  Time: 下午9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
<html>
<head>
    <title>注册验证</title>
</head>
<body>
    <%
        String username=new String(request.getParameter("username"));
        String password=new String(request.getParameter("password"));
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/users?serverTimezone=UTC&useSSL=false&characterEncoding=UTF-8";
        String usename = "root";
        String psw ="root";
        Connection conn=DriverManager.getConnection(url,usename,psw);
        String sql="insert into usersdata(username,password) values('"+username+"','"+password+"')";
        Statement stmt=conn.createStatement();
        stmt.executeUpdate(sql);
        //request.getRequestDispatcher("register_success.jsp").forward(request, response);
    %>
<script>
    window.open("注册成功")
</script>
<%
    response.setHeader("refresh", "3;url='index.jsp'");
%>
</body>
</html>
