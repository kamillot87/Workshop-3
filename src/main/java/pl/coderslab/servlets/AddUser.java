package pl.coderslab.servlets;

import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/adduser")
public class AddUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/addUser.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User(request.getParameter("name"),request.getParameter("email"),request.getParameter("password"));
        UserDao userDao = new UserDao();

        try {
            userDao.create(user);
        } catch (SQLException e) {
            System.out.println("Błąd");
            throw new RuntimeException(e);
        }
        response.sendRedirect("http://localhost:8080/Workshop3/list");

    }
}