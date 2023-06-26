package cn.itcast;
import java.sql.*;
public class GetCon {
    Connection conn = null;
    public Connection getConnection() throws ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/users?serverTimezone=UTC&useSSL=false&characterEncoding=UTF-8";
        String use = "root";
        String pas = "123456";
        try{
            conn = DriverManager.getConnection(url,use,pas);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return conn;
    }
}
