<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center">Login</h2>

    <%
        String error = (String) request.getAttribute("error");
        String success = (String) request.getAttribute("success");
    %>

    <% if (error != null) { %>
        <div class="alert alert-danger"><%= error %></div>
    <% } %>

    <% if (success != null) { %>
        <div class="alert alert-success"><%= success %></div>
    <% } %>

    <div class="row">

        <!-- Student Login -->
        <div class="col-md-6">
            <h4>Student Login</h4>
            <form action="studentLogin" method="post">
                <input type="email" name="email"
                       class="form-control mb-2"
                       placeholder="Email" required>

                <input type="password" name="password"
                       class="form-control mb-2"
                       placeholder="Password" required>

                <button class="btn btn-primary">
                    Login as Student
                </button>
            </form>
        </div>

        <!-- Employee Login -->
        <div class="col-md-6">
            <h4>Employee Login</h4>
            <form action="employeeLogin" method="post">
                <input type="email" name="email"
                       class="form-control mb-2"
                       placeholder="Email" required>

                <input type="password" name="password"
                       class="form-control mb-2"
                       placeholder="Password" required>

                <button class="btn btn-success">
                    Login as Employee
                </button>
            </form>
        </div>

    </div>
</div>

</body>
</html>