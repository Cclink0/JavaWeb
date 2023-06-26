<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="javax.xml.crypto.dsig.spec.XSLTTransformParameterSpec" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Insert title here</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("psd");
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/users?serverTimezone=UTC&useSSL=false&characterEncoding=UTF-8";
        String usename = "root";
        String psw ="root";
        Connection conn=DriverManager.getConnection(url,usename,psw);
        if(conn != null) {
            out.print("数据库连接成功！");
        }
            //Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/users.users?serverTimezone=UTC&useSSL=false&characterEncoding=UTF-8","root","root");
        PreparedStatement stmt = conn.prepareStatement("select * from usersdata where username=?");
        stmt.setString(1,username);
        //out.print(username);
        //stmt.setString(2,password);
        ResultSet rs = stmt.executeQuery();
        rs.next();
        if(((rs.getString("password"))).equals(password)){
            //out.print(password);
            response.sendRedirect("exam.jsp");
        } else{
            out.print("用户名或密码错误,请重新输入,3秒后返回.....");
            //out.print(password);
            rs.close();
            stmt.close();
            conn.close();
            response.setHeader("refresh", "3;url='index.jsp'");
        }
        Cookie cookie1 = new Cookie("username",username);
        Cookie cookie2 = new Cookie("password",password);
        cookie1.setMaxAge(60*60*24);
        cookie2.setMaxAge(60*60*24);
        response.addCookie(cookie1);
        response.addCookie(cookie2);
        session.setAttribute("username",username);
        session.setMaxInactiveInterval(1);
    %>
</body>
</html>