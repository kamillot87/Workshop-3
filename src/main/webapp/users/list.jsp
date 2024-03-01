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
                    <h1 class="h3 mb-0 text-gray-800">UserCrud</h1>
                    <a href="http://localhost:8080/Workshop3/adduser" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika </a>
                </div>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>User name</th>
                                        <th>Email</th>
                                        <th>     </th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th>ID</th>
                                        <th>User name</th>
                                        <th>Email</th>
                                        <th>     </th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach var="user" items="${users}">
                                        <tr>
                                            <td>${user.id}</td>
                                            <td>${user.userName}</td>
                                            <td>${user.email}</td>
                                            <td>
                                                <a href="<c:out value="http://localhost:8080/Workshop3/showuser?id=${user.id}"/>"> Pokaż  </a>
                                                <a href="<c:out value="http://localhost:8080/Workshop3/editUser?id=${user.id}"/>"> Edytuj  </a>
                                                <a href="<c:out value="http://localhost:8080/Workshop3/deluser?id=${user.id}"/>"> Usuń  </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            </div>
            <!-- /.container-fluid -->

        </div>
 <%@include file="/footer.jsp"%>