<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center">Admin Login</h2>

    <%
        String error = (String) request.getAttribute("error");
    %>

    <% if (error != null) { %>
        <div class="alert alert-danger"><%= error %></div>
    <% } %>

    <form action="adminLogin" method="post">

        <input type="text"
               name="username"
               class="form-control mb-3"
               placeholder="Admin Username"
               required>

        <input type="password"
               name="password"
               class="form-control mb-3"
               placeholder="Admin Password"
               required>

        <button class="btn btn-dark">
            Login
        </button>

    </form>
</div>

</body>
</html>