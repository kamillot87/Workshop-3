package pl.coderslab.servlets;

import pl.coderslab.utils.DbUtil;
import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet("/list")
public class UserList extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao user = new UserDao();
        try {
            User[] users = user.findAll();
            request.setAttribute("users",users);
        } catch (SQLException e) {
            System.out.println("BŁĄD");
            throw new RuntimeException(e);

        }
        getServletContext().getRequestDispatcher("/users/list.jsp").forward(request, response);

    }
}
