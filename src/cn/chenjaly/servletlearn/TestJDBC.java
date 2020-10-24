package cn.chenjaly.servletlearn;

import java.sql.*;

public class TestJDBC {
    public static void main(String[] args) throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/class3?characterEncoding=utf-8&useSSL=false","root","1234");
        if (con!=null){
            System.out.println(con+"数据库连接成功");
        }else {
            System.out.println("数据库连接失败");
        }
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery("select * from user ");
        System.out.println("从数据库取出信息");
        while (resultSet.next()){
            System.out.print(resultSet.getInt("id")+"\t");
            System.out.print(resultSet.getString("username")+"\t");
            System.out.print(resultSet.getString("password")+"\t");
        }
        resultSet.close();
        statement.close();
        con.close();
    }
}
