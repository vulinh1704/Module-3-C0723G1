package test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        RequestDispatcher dispatcher = request.getRequestDispatcher("HomeServlet");
        RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
        String name = "Trương Đăng Vũ Linh";
        String[] names = new String[]{"Linh", "Hồng", "Sang"};
        request.setAttribute("names", names);
        request.setAttribute("username", name);
        List<Student> students = new ArrayList<>();
        students.add(new Student(1, "A"));
        students.add(new Student(2, "D"));
        request.setAttribute("students", students);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
