package pl.coderslab;

import pl.coderslab.utils.DbUtil;
import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDao;

import java.sql.Connection;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) throws SQLException {
        UserDao user = new UserDao();
        for (User u:user.findAll()) {
            System.out.println(u.getUserName() + ":" + u.getEmail());
        }
    }

}