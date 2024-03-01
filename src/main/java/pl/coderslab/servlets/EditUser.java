package pl.coderslab.servlets;

import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/editUser")
public class EditUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        session.setAttribute("id",id);
        UserDao userDao = new UserDao();
        try {
            User user = userDao.readById(id);
            request.setAttribute("user",user);
            getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    UserDao userDao = new UserDao();
    HttpSession session = request.getSession();
    int id = (int)session.getAttribute("id");
        try {
            userDao.update(request.getParameter("name"),request.getParameter("email"),request.getParameter("password"),id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        response.sendRedirect("http://localhost:8080/Workshop3/list");
    }
}