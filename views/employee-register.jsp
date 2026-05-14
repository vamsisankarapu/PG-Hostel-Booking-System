<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Registration</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2>Employee Registration</h2>

    <%
        String error = (String) request.getAttribute("error");
    %>

    <% if (error != null) { %>
        <div class="alert alert-danger"><%= error %></div>
    <% } %>

    <form action="saveEmployee" method="post">

        <input type="text" name="fullName"
               class="form-control mb-2"
               placeholder="Full Name" required>

        <input type="email" name="email"
               class="form-control mb-2"
               placeholder="Email" required>

        <input type="password" name="password"
               class="form-control mb-2"
               placeholder="Password" required>

        <input type="text" name="phone"
               class="form-control mb-2"
               placeholder="Phone Number" required>

        <input type="text" name="companyName"
               class="form-control mb-2"
               placeholder="Company Name" required>

        <select name="gender" class="form-control mb-2">
            <option>Male</option>
            <option>Female</option>
            <option>Other</option>
        </select>

        <button class="btn btn-success">
            Register
        </button>

    </form>
</div>

</body>
</html>