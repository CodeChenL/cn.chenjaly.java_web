package cn.chenjaly.servletlearn;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long seriaLVersionUID = 1L;
    public LoginServlet(){
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
//        使用写死的账号密码进行登陆验证
//        if (username.equals("admin")&&password.equals("admin")){
//            HttpSession session = request.getSession();
//            session.setAttribute("username",username);
//            session.setAttribute("password",password);
//            response.sendRedirect("success.jsp");
//        }else {
//            request.setAttribute("flag",true);
//            request.getRequestDispatcher("login.jsp").forward(request,response);
//        }
        try {
            boolean result = UserDao.login(username,password);
            if (result){
                HttpSession session = request.getSession();
                session.setAttribute("username",username);
                response.sendRedirect("success.jsp");
            }else {
                request.setAttribute("flag",true);
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
