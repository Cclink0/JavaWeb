package cn.itcast;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import java.io.*;
import cn.itcast.GetCon;
@WebServlet(name = "Check",urlPatterns = "/Check")
public class Check extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        Connection conn = null;
        PreparedStatement psts = null;
        Statement st = null;
        ResultSet rs = null;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String selectusername = "select username from usersdata";
        String selectpassword = "select password from password where username = ?";

        try{
            conn = new GetCon().getConnection();
            st = conn.createStatement();
            rs = st.executeQuery(selectusername);
            List<String> usernameList = new ArrayList<String>();
            while(rs.next()){
                usernameList.add(rs.getString(1));
            }
            if(rs!=null){
                rs.close();
            }
            if(st!=null){
                st.close();
            }
            if(usernameList.contains(username)){
                List<String> passwordList = new ArrayList<String>();
                psts = (PreparedStatement) conn.prepareStatement(selectpassword);
                psts.setString(1,username);
                rs = psts.executeQuery();
                while(rs.next()){
                    passwordList.add(rs.getString(1));
                }
                if(passwordList.get(1).equals(password)){
                    out.println("欢迎登录");
                }else{
                    out.println("密码错误,请重新输入");
                    response.setHeader("refresh", "3;url='index.jsp'");
                }
                if(rs!=null){
                    rs.close();
                }
                if(psts!=null){
                   psts.close();
                }
            }else{
                out.println("请先进行注册,3秒后返回...");
                response.setHeader("refresh", "3;url='index.jsp'");

            }
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            {
                if(conn!=null){
                    try{
                        conn.close();
                    }catch(SQLException e){
                        e.printStackTrace();
                    }
                }
            }
            out.flush();
            out.close();
        }
    }
}
