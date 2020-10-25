package cn.chenjaly.servletlearn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserDao {
    private static final String DRIVER_NAME = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/class3?characterEncoding=utf-8&useSSL=false";
    private static final String USER = "root";
    private static final String PAS = "1234";
    public static boolean login(String username,String password) throws Exception{
        Class.forName(DRIVER_NAME);
        Connection con = DriverManager.getConnection(URL,USER,PAS);
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery("select * from user where username = '"+username+"' and password = '"+password+"'");
        if (resultSet.next()){
            return true;
        }else {
            return false;
        }
    }

    public static void main(String[] args) {
        UserDao userDao = new UserDao();
        try {
            if (userDao.login("admin","admin")){
                System.out.println("登录成功");
            }else {
                System.out.println("登录失败");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
