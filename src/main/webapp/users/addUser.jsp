<%@ page import="pl.coderslab.utils.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: kamiltaborek
  Date: 29/02/2024
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@include file="/header.jsp"%>
            <!-- End of Topbar xxxxxxxxxxxxxxxxxxxxxxxxxxxx do tutaj -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                    <a href="http://localhost:8080/Workshop3/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników </a>
                </div>
                <form method="post">
                    <div class="form-group">
                        <label for="userName">Nazwa</label>
                        <input name="name" type="text" class="form-control" id="userName" value="${user.userName}">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input name="email" type="email" class="form-control" id="email" value="${user.email}">
                    </div>
                    <div class="form-group">
                        <label for="password">Hasło</label>
                        <input name="password" type="password" class="form-control" id="password" value="${user.password}">
                    </div>

                    <button type="submit" class="btn btn-primary">Zapisz</button>
                </form>

                </div>
            </div>

            </div>
            <!-- /.container-fluid -->

        </div>
 <%@include file="/footer.jsp"%>